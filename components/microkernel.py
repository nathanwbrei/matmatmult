
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



from typing import cast

from codegen.sugar import *
from cursors.coords import Coords

from components.registerblock import *


def make_microkernel(A: CursorDef,
                     B: CursorDef,
                     A_ptr: CursorLocation,
                     B_ptr: CursorLocation,
                     A_regs: Matrix[Register],
                     C_regs: Matrix[Register],
                     to_A_block: Coords = Coords(),
                     to_B_block: Coords = Coords()
                    ) -> Block:

    """ make_microkernel generates a GEMM microkernel for two blocks using the outer-product formulation.
        It is responsible for loading and unloading the A block,
        It does not assume that the A or B cursors point to the start of the block.
        Instead, the coordinates to the start of the block are passed separately.
        It does not modify any cursor pointers.
    """

    asm = block("Block GEMM microkernel")
    bm,bk,aidx,apattern = A.get_block(A_ptr, to_A_block)
    bk,bn,bidx,bpattern = B.get_block(B_ptr, to_B_block)
    assert(bm % 8 == 0)

    mask = A_mask(A_regs, A, A_ptr, to_A_block, B, B_ptr, to_B_block)
    asm.add(move_register_block(A, A_ptr, to_A_block, A_regs, mask, store=False))

    for Vmi in range(bm//8):
        for bki in range(bk):       # inside this k-block
            for bni in range(bn):   # inside this n-block
                to_cell = Coords(down=bki, right=bni)
                if B.has_nonzero_cell(B_ptr, to_B_block, to_cell):
                    B_cell_addr, B_comment = B.look(B_ptr, to_B_block, to_cell)
                    comment = f"C[{Vmi*8}:{Vmi*8+8},{bni}] += A[{Vmi*8}:{Vmi*8+8},{bki}]*{B_comment}"
                    asm.add(fma(B_cell_addr, A_regs[Vmi, bki], C_regs[Vmi, bni], comment=comment))
    return asm
