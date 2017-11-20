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


def submatrix(registers: Matrix[Register], rows: int, cols: int):
    mask = Matrix.full(registers.shape[0], registers.shape[1], False)
    for ci in range(cols):
        for ri in range(rows):
            mask[ri, ci] = True
    return mask


def emptycols(registers: Matrix, pattern: Matrix):
    """ Mask out register block columns corresponding to all-zero pattern columns.
        Use this for C when B is sparse."""
    rows, cols = registers.shape
    mask = Matrix.full(rows, cols, True)

    for ci in range(cols):
        if not pattern[:,ci].any(axis=0):
            mask[:,ci] = False

    return mask


def emptyrows(registers: Matrix[Register], pattern: Matrix[bool]):
    """ Mask out register block columns corresponding to all-zero pattern rows.
        Use this for A when B is sparse."""
    rows, cols = registers.shape
    mask = Matrix.full(rows, cols, True)
    cols *= 8  # Vector height
    pattern_rows = pattern.shape[0]

    for ci in range(cols):
        pattern_col = cast(Matrix[bool], pattern[ci % pattern_rows, :])
        if not pattern_col.any(axis=1):
            mask[:,ci] = False

    return mask

