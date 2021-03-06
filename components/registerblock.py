
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



def make_reg_blocks(bm:int, bn:int, bk:int):
    assert(bm % 8 == 0)
    vm = bm//8
    assert((bn+bk) * vm <= 32)  # Needs to fit in AVX512 zmm registers

    A_regs = Matrix([[zmm(vm*c + r) for c in range(bk)] for r in range(vm)])
    C_regs = Matrix([[zmm(32 - vm*bn + vm*c + r) for c in range(bn)]
                                                 for r in range(vm)])
    return A_regs, C_regs



def move_register_block(cursor: CursorDef,
                        cursor_ptr: CursorLocation,
                        block_offset: Coords,
                        registers: Matrix[Register],
                        mask: Matrix[bool] = None,
                        store: bool = False
                       ) -> Block:

    rows, cols = registers.shape
    action = "Store" if store else "Load"
    asm = block(f"{action} {cursor.name} register block @ {block_offset}")

    for ic in range(cols):
        for ir in range(rows):
            if (mask is None) or (mask[ir,ic]):
                cell_offset = Coords(down=ir*8, right=ic)
                addr, comment = cursor.look(cursor_ptr, block_offset, cell_offset)
                if store:
                    asm.add(mov(registers[ir,ic], addr, True, comment))
                else:
                    asm.add(mov(addr, registers[ir,ic], True, comment))
    return asm


def C_mask(C_regs: Matrix[Register],
           C: CursorDef,
           C_ptr: CursorLocation,
           C_block_offset: Coords,
           B: CursorDef,
           B_ptr: CursorLocation,
           B_block_offset: Coords,
           tiled: bool = True
          ) -> Matrix[bool]:

    Vr, Vc = C_regs.shape
    mask = Matrix.full(Vr, Vc, False)
    C_br, C_bc, C_idx, C_pat = C.get_block(C_ptr, C_block_offset)
    B_br, B_bc, B_idx, B_pat = B.get_block(B_ptr, B_block_offset)

    assert(Vr*8 == C_br)   # bm must tile m exactly for now
    assert(Vc >= C_bc)     # Matrix block must fit in register block
    assert(C_bc == B_bc)   # Matrix blocks are compatible

    # Mask out registers not used in current block, including zero-cols of B
    if tiled:
        for Vci in range(C_bc):
            if B_pat[:,Vci].any(axis=0):
                mask[:,Vci] = True
    else:
        mask[:, :C_bc] = True


    return mask


def C_mask_untiled(C_regs: Matrix[Register],
           C: CursorDef,
           C_ptr: CursorLocation,
           C_block_offset: Coords,
          ) -> Matrix[bool]:

    Vr, Vc = C_regs.shape
    mask = Matrix.full(Vr, Vc, False)
    C_br, C_bc, C_idx, C_pat = C.get_block(C_ptr, C_block_offset)

    assert(Vr*8 == C_br)   # bm must tile m exactly for now
    assert(Vc >= C_bc)     # Matrix block must fit in register block

    mask[:, :C_bc] = True
    return mask



def A_mask(A_regs: Matrix[Register],
           A: CursorDef,
           A_ptr: CursorLocation,
           A_block_offset: Coords,
           B: CursorDef,
           B_ptr: CursorLocation,
           B_block_offset: Coords
          ) -> Matrix[bool]:

    Vr, Vc = A_regs.shape
    mask = Matrix.full(Vr, Vc, False)
    A_br, A_bc, A_idx, A_pat = A.get_block(A_ptr, A_block_offset)
    B_br, B_bc, B_idx, B_pat = B.get_block(B_ptr, B_block_offset)

    assert(Vr*8 == A_br)   # bm must tile m exactly for now
    assert(Vc >= A_bc)     # Matrix block must fit in register block
    assert(A_bc == B_br)   # Matrix blocks are compatible

    # Mask out registers not used in current block, including zero-rows of B
    for Vci in range(A_bc):
        if B_pat[Vci,:].any(axis=1):
            mask[:,Vci] = True

    return mask