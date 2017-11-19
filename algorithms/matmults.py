from codegen.blocks import *
from codegen.coords import *

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
                 name: str,
                 p: Parameters,
                 # In case the cursor is not already pointing at the physical blockstart,
                 # this is how we get it there:
                 to_A_pbs: Coords = Coords(0,0),
                 to_B_pbs: Coords = Coords(0,0),
                 to_C_pbs: Coords = Coords(0,0)
                ) -> None:

        #bm,bk = A.block_at(to_A_pbs).shape   # TODO: What is the right abstraction for this?
        #bkA,bn = B.block_at(to_B_pbs).shape
        #assert(bk == bkA)
        bm,bk = p.A.br, p.A.bc
        assert(bm % 8 == 0)

        A_mask = None #emptyrows(p.A_regs, p.B.block_at(to_B_pbs).pattern)

        self.comment = "Block inner product"
        self.include(load_register_block(p.A, p.A_regs, A_mask, to_A_pbs))

        for Vmi in range(bm//8):
            for bki in range(bk):       # inside this k-block
                for bni in range(bn):   # inside this n-block
                    to_cell = Coords(down=bki, right=bni)
                    if B.has_nonzero_cell(to_cell):
                        B_cell_addr, comment = B.look(to_cell)
                        self.include(BcastFma(B_cell_addr,
                                              p.A_regs[Vmi//8,bki],
                                              p.C_regs[Vmi//8,bni],
                                              comment=comment))


class MatMultLookups(AsmBlock):
    """ Create a sequence of subroutines which perform a matmult using the current
        matrix cursor and then return an address preferably in a register.
        Also create an index of outer pattern ->
        Options: Pass outer sparsity pattern.
    """

    def __init__(self, patterns: List[List[bool]]):
        pass




