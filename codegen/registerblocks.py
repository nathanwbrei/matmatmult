from codegen.blocks import *
from codegen.coords import *
from codegen.cursors import *

from scipy import matrix as Matrix
import scipy


def load_register_block(cursor: Cursor,
                        registers: Matrix,        # Matrix[Register]
                        mask: Matrix = None,      # Matrix[bool]
                        disp: Coords = Coords()   # Optional constant displacement
                        ) -> AsmBlock:

    rows,cols = registers.shape
    asm = AsmBlock(f"Load {cursor.name} register block @ {disp}")

    for ic in range(cols):
        for ir in range(rows):
            if (mask is None) or (mask[ir,ic]):
                local_disp = Coords(down=ir,right=ic,units="vectors")
                asm.stmt("vmovapd",
                         self.look(local_disp + disp),
                         registers[ir][ic])
    return asm



def store_register_block(cursor: Cursor,
                         registers: Matrix,         # Matrix[Register]
                         mask: Matrix = None,       # Matrix[bool]
                         disp: Coords = Coords()    # Optional constant displacement
                        ) -> AsmBlock:

    rows,cols = registers.shape
    asm = AsmBlock(f"Store {cursor.name} register block @ {disp}")

    for ic in range(cols):
        for ir in range(rows):
            if (mask is None) or (mask[ir,ic]):
                local_disp = Coords(down=ir,right=ic,units="vectors")
                asm.stmt("vmovapd",
                         registers[ir][ic],
                         cursor.look(local_disp + disp))
    return asm


def submatrix(registers: Matrix, rows: int, cols: int):
    mask = scipy.full(registers.shape, False, dtype=bool)
    for ci in range(cols):
        for ri in range(rows):
            mask[ri, ci] = True
    return scipy.asmatrix(mask)


def emptycols(registers: Matrix, pattern: Matrix):
    """ Mask out register block columns corresponding to all-zero pattern columns.
        Use this for C when B is sparse."""
    rows, cols = registers.shape
    mask = scipy.full(registers.shape, True, dtype=bool)

    for ci in range(cols):
        if not pattern[:,ci].any(axis=0):
            mask[:,ci] = False

    return scipy.asmatrix(mask)


def emptyrows(registers: Matrix, pattern: Matrix):
    """ Mask out register block columns corresponding to all-zero pattern rows.
        Use this for A when B is sparse."""
    rows, cols = registers.shape
    mask = scipy.full(registers.shape, True, dtype=bool)

    for ci in range(cols):
        if not pattern[ci,:].any(axis=1):
            mask[:,ci] = False

    return scipy.asmatrix(mask)

