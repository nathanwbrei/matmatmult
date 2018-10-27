
#  @author Nathan Brei (nathan.w.brei AT tum.de)

#  @section LICENSE
#  Copyright (c) 2018, SeisSol Group
#  All rights reserved.
 
#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions are met:

#  1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.

#  2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.

#  3. Neither the name of the copyright holder nor the names of its
#     contributors may be used to endorse or promote products derived from this
#     software without specific prior written permission.

#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
#  IMPLIED WARRANTIES OF  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
#  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
#  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
#  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
#  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
#  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
#  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
#  ARISING IN ANY WAY OUT OF THE  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
#  POSSIBILITY OF SUCH DAMAGE.



from codegen import *
from cursors import *
from components.registerblock import make_reg_blocks
from components.parameters import Parameters


class BlockedParameters(Parameters):

    A: CursorDef
    B: CursorDef
    C: CursorDef
    A_regs: Matrix[Register]
    C_regs: Matrix[Register]
    blocks: Matrix[float]
    patterns: List[Matrix[bool]]


    def __init__(self,
                 basic_params: Parameters,
                 blocks: Matrix[int],                # These two are required to be
                 patterns: List[Matrix[bool]],       # compatible with k,n,bk,bn
                ) -> None:

        super().__init__(**basic_params.__dict__)

        self.blocks = blocks
        self.patterns = patterns
        self.A = DenseCursorDef("A", rdi, self.m, self.k, self.lda, self.bm, self.bk)
        self.B = BlockCursorDef("B", rsi, self.k, self.n, self.bk, self.bn, blocks, patterns)
        self.C = DenseCursorDef("C", rdx, self.m, self.n, self.ldc, self.bm, self.bn)
        self.A_regs, self.C_regs = make_reg_blocks(self.bm, self.bn, self.bk)



def choose_params(params: Parameters) -> BlockedParameters:

    print("dxsp_blocked.choose_params")
    pattern = Matrix.load_pattern(params.mtx_filename)

    #TODO: Choose bk,bn better
    bm = 8 if params.bm is None else params.bm
    bn = 8 if params.bn is None else params.bn
    bk = 8 if params.bk is None else params.bk
    params.bm = bm
    params.bn = bn
    params.bk = bk

    # TODO: Currently does not support fringe
    Bk,Bn = params.k//bk, params.n//bn
    patterns = []
    blocks = Matrix.full(Bk,Bn,-1)
    x = 0
    for Bni in range(Bn):
        for Bki in range(Bk):
            block = pattern[(Bki*bk):((Bki+1)*bk), (Bni*bn):((Bni+1)*bn)]
            found = False
            for pi in range(len(patterns)):
                if patterns[pi] == block:
                    blocks[Bki,Bni] = pi
                    found = True
            if not found:
                blocks[Bki,Bni] = x
                x += 1
                patterns.append(block)

    return BlockedParameters(params, blocks, patterns)



def make_alg(p: BlockedParameters) -> Block:
    print("dxsp_general.make_alg")

    Bm = (p.m // p.bm)
    Bn = (p.n // p.bn)
    Bkf = (p.k // p.bk) + (p.k % p.bk != 0)
    A_ptr = p.A.start_location()
    B_ptr = p.B.start_location()
    C_ptr = p.C.start_location()
    jump_reg = r(10)

    asm = block(f"Unrolled FullyGeneralSparse")
    asm.add(jump("END_SWITCH", "jmp"))

    x = 0
    cases = []
    for pattern in p.B.patterns:
        case_label = f"CASE_{x}"
        cases.append(case_label)
        asm.add(label(case_label))
        BB = minicursor(f"block_{x}", p.B.base_ptr, pattern)
        BB_ptr = BB.start_location()
        asm.add(make_microkernel(p.A,BB,A_ptr,BB_ptr,p.A_regs,p.C_regs))
        asm.add(indirect_jump(jump_reg))
        x += 1

    asm.add(label("END_SWITCH"))

    mask = C_mask_untiled(p.C_regs, p.C, C_ptr, Coords())
    asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, store=False))

    for Bk in range(Bkf):   # For each k-block

        current_block = Coords(Bk,0,absolute=True)
        if (p.B.has_nonzero_block(B_ptr, current_block)):
            block_label = f"BLOCK_{Bk}"
            asm.add(mov(Label(block_label), jump_reg, False))
            move_B_stmt, B_ptr = p.B.move(B_ptr, current_block)
            asm.add(move_B_stmt)
            move_A_stmt, A_ptr = p.A.move(A_ptr, Coords(0,Bk,absolute=True))
            asm.add(move_A_stmt)
            block_index = p.B.blocks[Bk,0]
            asm.add(jump(cases[block_index], "jmp"))
            asm.add(label(block_label))

    asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, store=True))

    return asm

