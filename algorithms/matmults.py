from typing import cast

from codegen.sugar import *
from codegen.coords import Coords

from algorithms.parameters import *
from algorithms.registerblocks import *


class MatMult(Block):
    pass

def make_gemm(p: Parameters,
              A_ptr: CursorLocation,
              to_A_block: Coords,
              B_ptr: CursorLocation,
              to_B_block: Coords,
             ) -> Block:
    """ make_gemm generates a GEMM microkernel for two blocks using the outer-product formulation.
        It is responsible for loading and unloading the A block,
        It does not assume that the A or B cursors point to the start of the block.
        Instead, the coordinates to the start of the block are passed separately.
        It does not modify any cursor pointers.
    """

    asm = block("Block GEMM microkernel")
    bm,bk,aidx,apattern = p.A.get_block(A_ptr, to_A_block)
    bk,bn,bidx,bpattern  = p.B.get_block(B_ptr, to_B_block)
    assert(bm % 8 == 0)

    mask = A_mask(p.A_regs, p.A, A_ptr, to_A_block, p.B, B_ptr, to_B_block)
    asm.add(move_register_block(p.A, A_ptr, to_A_block, p.A_regs, mask, store=False))

    for Vmi in range(bm//8):
        for bki in range(bk):       # inside this k-block
            for bni in range(bn):   # inside this n-block
                to_cell = Coords(down=bki, right=bni)
                if p.B.has_nonzero_cell(B_ptr, to_B_block, to_cell):
                    B_cell_addr, comment = p.B.look(B_ptr, to_B_block, to_cell)
                    asm.add(fma(B_cell_addr,
                                cast(Register, p.A_regs[Vmi, bki]),
                                cast(Register, p.C_regs[Vmi, bni]),
                                comment=comment))




