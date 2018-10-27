
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


from components.registerblock import *
from components.microkernel import make_microkernel
from components.parameters import Parameters

from cursors import *
from codegen import *
from codegen.forms import loop



class TiledParameters(Parameters):
    """ Every piece of information needed to generate any particular TiledSparse """

    def __init__(self, base_params: Parameters, pattern: Matrix[bool]) -> None:
        """ Furnish any necessary machinery (such as cursors and register blocks). 
            This step should not add any new information. """

        self.copy(base_params)  
        self.pattern = pattern
        self.A = DenseCursorDef("A", rdi, self.m, self.k, self.lda, self.bm, self.bk)
        self.B = TiledCursorDef("B", rsi, self.k, self.n, pattern)
        self.C = DenseCursorDef("C", rdx, self.m, self.n, self.ldc, self.bm, self.bn)
        self.A_regs, self.C_regs = make_reg_blocks(self.bm, self.bn, self.bk)



def choose_params(params: Parameters) -> TiledParameters:
    """ Augment the generic user-supplied parameters with optimal tiled-specific ones"""

    print("dxsp_tiled.choose_params")
    full_mtx = Matrix.load_pattern(params.mtx_filename)

    #TODO: Choose optimal bm,bn,bk given m,n,k,full_mtx
    bm = 8 if params.bm is None else params.bm
    bn = 8 if params.bn is None else params.bn
    bk = 8 if params.bk is None else params.bk
    params.bm = bm
    params.bn = bn
    params.bk = bk

    #TODO: Generate better funcname
    params.output_funcname = f"gemm_tiled_{params.m}x{params.n}x{params.k}"

    # Take tile pattern to be upper left-hand corner
    # TODO: Take logical union of all tiles
    pattern_mtx = full_mtx[:bk,:bn]
    return TiledParameters(params, pattern_mtx)



def make_alg(p: TiledParameters) -> Block:

    Bm = (p.m // p.bm)
    Bn = (p.n // p.bn)
    A_ptr = p.A.start_location()
    B_ptr = p.B.start_location()
    C_ptr = p.C.start_location()

    asm = block(f"{p.output_funcname}, looped over n,m").body(
        loop(r(13), 0, Bn*p.bn, p.bn).body(
            loop(r(12), 0, Bm, 1).body(
                make_kt_unroll(p, A_ptr, B_ptr, C_ptr),
                p.A.move(A_ptr, Coords(down=1))[0],
                p.C.move(C_ptr, Coords(down=1))[0]
            ),
            p.A.move(A_ptr, Coords(down=-Bm))[0],
            #p.B.move(B_ptr, Coords(right=1))[0],
            p.C.move(C_ptr, Coords(down=-Bm, right=1))[0]
        )
    )
    if p.B.brf != 0:
        fringe_asm = block(f"Loop over right-hand fringe").body(
            loop(r(12), 0, Bm, 1).body(  # Right-hand fringe. 

                make_kt_unroll(p, A_ptr, B_ptr, C_ptr),
                p.A.move(A_ptr, Coords(down=1))[0],
                p.C.move(C_ptr, Coords(down=1))[0],
            )
        )
        asm.add(fringe_asm)
    return asm





def make_kt_unroll(p: TiledParameters,
                   A_ptr: CursorLocation,
                   B_ptr: CursorLocation,
                   C_ptr: CursorLocation,
                   to_B_panel: Coords = Coords()
                  ) -> Block:

    Bkf = (p.k // p.bk) + (p.k % p.bk != 0)
    mask = C_mask(p.C_regs, p.C, C_ptr, Coords(), p.B, B_ptr, to_B_panel, tiled=False)
    asm = block("KT unrolled " + p.output_funcname)
    asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, store=False))

    for Bki in range(0, Bkf):
        to_A_block = Coords(right=Bki)
        to_B_block = to_B_panel + Coords(down=Bki)
        if p.B.has_nonzero_block(B_ptr, to_B_block):
            asm.add(make_microkernel(p.A, p.B, A_ptr, B_ptr, p.A_regs, p.C_regs, to_A_block, to_B_block))

    asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, store=True))
    return asm



