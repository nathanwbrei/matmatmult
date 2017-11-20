from typing import cast

from codegen.blocks import *
from codegen.coords import NewCoords as Coords

from algorithms.parameters import *
from algorithms.registerblocks import *

class MatMult(AsmBlock):
    """ BlockMatMult performs the actual multiplication of two blocks.
        This will probably always be completely unrolled.
        BlockMatMult is responsible for loading and unloading the A block,
        It does not assume that the A or B cursors point to the start of the block.
        Instead, the coordinates to the start of the block are passed separately.
        It does not update any of the cursors.
    """
    mb = 8
    def __init__(self,
                 p: Parameters,
                 # In case the cursor is not already pointing at the physical blockstart,
                 # this is how we get it there:
                 to_A: Coords = Coords(),
                 to_B: Coords = Coords(),
                 to_C: Coords = Coords()
                ) -> None:

        bm,bk,aidx,apattern = p.A.block(to_A)
        bk,bn,bidx,pattern  = p.B.block(to_B)
        assert(bm % 8 == 0)

        A_mask = emptyrows(p.A_regs, pattern)

        self.comment = "Block inner product B{to_B}"
        self.include(load_register_block(p.A, p.A_regs, A_mask, to_A))

        for Vmi in range(bm//8):
            for bki in range(bk):       # inside this k-block
                for bni in range(bn):   # inside this n-block
                    to_cell = Coords(down=bki, right=bni)
                    if p.B.has_nonzero_cell(to_B, to_cell):
                        B_cell_addr, comment = p.B.look(to_B, to_cell)
                        self.include(BcastFma(B_cell_addr,
                                              cast(Register, p.A_regs[Vmi, bki]),
                                              cast(Register, p.C_regs[Vmi, bni]),
                                              comment=comment))


class MatMultLookups(AsmBlock):
    """ Create a sequence of subroutines which perform a matmult using the current
        matrix cursor and then return an address preferably in a register.
        Also create an index of outer pattern ->
        Options: Pass outer sparsity pattern.
    """

    def __init__(self, patterns: List[List[bool]]) -> None:
        pass




