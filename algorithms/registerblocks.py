from codegen.blocks import *
from codegen.coords import Coords
from codegen.cursors import *
from codegen.matrix import *


def load_register_block(cursor: Cursor,
                        registers: Matrix[Register],
                        mask: Matrix[bool] = None,
                        block_coords: Coords = Coords()
                       ) -> AsmBlock:

    rows, cols = registers.shape
    asm = AsmBlock(f"Load {cursor.name} register block @ {block_coords}")

    for ic in range(cols):
        for ir in range(rows):
            if (mask is None) or (mask[ir,ic]):
                cell_coords = Coords(down=ir*8, right=ic)
                addr, comment = cursor.look(block_coords, cell_coords)
                asm.stmt("vmovapd", addr, registers[ir, ic], comment=comment)
    return asm



def store_register_block(cursor: Cursor,
                         registers: Matrix[Register],
                         mask: Matrix[bool] = None,
                         block_coords: Coords = Coords()
                        ) -> AsmBlock:

    rows, cols = registers.shape
    asm = AsmBlock(f"Store {cursor.name} register block @ {block_coords}")

    for ic in range(cols):
        for ir in range(rows):
            if (mask is None) or (mask[ir,ic]):
                cell_coords = Coords(down=ir*8, right=ic)
                addr, comment = cursor.look(block_coords, cell_coords)
                asm.stmt("vmovapd", registers[ir, ic], addr, comment=comment)
    return asm


# Assume that the cursor is pointing at the block we want, for now
def C_mask(C_regs: Matrix[Register], C: Cursor, B: Cursor, tiled=True):

    Vr, Vc = C_regs.shape
    mask = Matrix.full(Vr, Vc, False)
    C_br, C_bc, C_idx, C_pat = C.block()
    B_br, B_bc, B_idx, B_pat = B.block()

    assert(Vr*8 == C_br)   # bm must tile m exactly for now
    assert(Vc >= C_bc)     # Matrix block must fit in register block
    assert(C_bc == B_bc)   # Matrix blocks are compatible

    if tiled:
        # Mask out registers not used in current block, including zero-cols of B
        for Vci in range(C_bc):
            if B_patt[:,Vci].any(axis=0):
                mask[:,Vci] = True
    else:
        mask[:,0:Vci] = True

    return mask

def A_mask(A_regs: Matrix[Register], A: Cursor, B: Cursor):

    Vr, Vc = A_regs.shape
    mask = Matrix.full(Vr, Vc, False)
    A_br, A_bc, A_idx, A_pat = A.block()
    B_br, B_bc, B_idx, B_pat = B.block()

    assert(Vr*8 == A_br)   # bm must tile m exactly for now
    assert(Vc >= A_bc)     # Matrix block must fit in register block
    assert(A_bc == B_br)   # Matrix blocks are compatible

    # Mask out registers not used in current block, including zero-rows of B
    for Vci in range(A_bc):
        if pattern[Vci,:].any(axis=1):
            mask[:,Vci] = True

    return mask


# Deprecated
def submatrix(registers: Matrix[Register], rows: int, cols: int):
    mask = Matrix.full(registers.shape[0], registers.shape[1], False)
    for ci in range(cols):
        for ri in range(rows):
            mask[ri, ci] = True
    return mask

# Deprecated
def emptycols(registers: Matrix, pattern: Matrix):
    """ Mask out register block columns corresponding to all-zero pattern columns.
        Use this for C when B is sparse."""
    rows, cols = registers.shape
    mask = Matrix.full(rows, cols, True)

    for ci in range(cols):
        if not pattern[:,ci].any(axis=0):
            mask[:,ci] = False

    return mask

# Deprecated
def emptyrows(registers: Matrix[Register], pattern: Matrix[bool]):
    """ Mask out register block columns corresponding to all-zero pattern rows.
        Use this for A when B is sparse."""
    rows, cols = registers.shape
    mask = Matrix.full(rows, cols, True)
    pattern_rows = pattern.shape[0]

    for ci in range(cols):
        pattern_col = cast(Matrix[bool], pattern[ci % pattern_rows, :])
        if not pattern_col.any(axis=1):
            mask[:,ci] = False

    return mask

