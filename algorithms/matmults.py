




class MNTraveler(AsmBlock):
    """ BlockTraversal is responsible for visiting successive blocks of C.
        There should be a looped version and possibly a partially unrolled version,
        though the latter is not a priority.
        The iteration variables index into a lookup table to retrieve the B panel offsets.
        BT moves the A,B,C cursors to the start of their panel before calling PIP.
    """
    pass

class KTraveler(AsmBlock):
    """ PanelInnerProduct
        There will exist a Dense version for TiledSparse, a Indexed version which is the
        most likely useful, and a completely Unrolled version which may only be used with
        UnrolledBlockTraversal.
        Some care should be taken to handle all-zero blocks efficiently.
        PIP expects the A,B,C cursors to point at the top of the requisite panels.
        PIP expects a pointer to the current Bni, which it will not modify
        PIP is responsible for loading and storing the C block.
        PIP passes the coords of the next K-block to its corresponding BMM.
        BMMs are either unrolled or indexed to get their 
        PIP resets the A,B,C cursors to the top of the requisite panels before it finishes.
    """
    pass


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
                 A_regs: Matrix,
                 C_regs: Matrix,
                 A_cursor: Cursor,
                 B_cursor: Cursor,
                 A_start: Coords,      # Cursor does not necessarily point at start of block!
                 A_end: Coords,
                 B_start: Coords,
                 B_end: Coords
                ) -> None:

        nb = p.C_regs.shape[1]    # Number of cells in one n-block
        kb = p.A_regs.shape[1]    # Number of cells in one k-block
        kr = k % kb               # Number of remaining cells in k-direction

        A_mask = emptyrows(A_regs, p.pattern) # Avoid unnecessary load/stores
        A_mask_partial = A_mask & submatrix(A_regs, rows=1, cols=kr)  #TODO: Handle 2d case

        self.comment = "Block inner product"

        self.include(load_register_block(A, A_regs, A_mask, to_A_block))

        for ikb in range(kb):       # inside this k-block
            for inb in range(nb):   # inside this n-block
                to_cell = to_B_block + Coords(down=ikb, right=inb)
                if B.has_nonzero_cell(to_cell):
                    B_cell, comment = B.look(to_cell)
                    asm.include(BcastFma(B_cell, A_regs[0,ikb], C_regs[0,inb], comment=comment))
        pass
    pass


class MatMultLookups(AsmBlock):
    """ Create a sequence of subroutines which perform a matmult using the current
        matrix cursor and then return an address preferably in a register.
        Also create an index of outer pattern ->
        Options: Pass outer sparsity pattern. 

    """


