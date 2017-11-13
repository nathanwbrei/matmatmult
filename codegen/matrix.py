
# This is eventually intended to be a replacement to MatrixCursor.
# Unlike previous versions, it maintains internal state regarding
# where the cursor is located. This allows us to have one generic
# representation regardless of sparsity scheme. More importantly, it
# allows us to handle sparse-block-sparse matrices, which we currently cannot.
# The downside is that it is unsuitable for calling move()
# inside loops. However, calling move() inside loops was already
# not going to work when we move to scale-index addressing. Instead,
# we will eventually wrap the Matrix in a ForEachLoop which will
# handle this use case correctly.

from typing import Tuple
from codegen.matrixcursor import Displacement as Coords
from codegen.operands import *

class MatrixCursor:

    _cursor : Coords = Coords()

    _scalar_bytes: int = 8    # Used for calulating addrs. single=4, double=8
    _vr: int = 8              # Vector rows
    _vc: int = 1              # Vector cols

    def __init__(self, name: str,
                 base_ptr: Register, #idx_ptr: Register,
                 rows: int, cols: int,
                 block_rows: int, block_cols: int,
                 lookup: List[List[int]]):
        self.name = name
        self._base_ptr = base_ptr
        # self._idx_ptr = idx_ptr
        self.r = rows
        self.c = cols
        self.br = block_rows
        self.bc = block_cols
        self.Br = rows // block_rows
        self.Bc = cols // block_cols
        self.lookup = lookup

    def look(self, coords: Coords) -> Tuple[MemoryAddress, str]:
        offset = self.rel_offset(coords)
        addr = self._base_ptr + self._scalar_bytes*offset
        comment = f"{self.name} + {str(coords)}"
        return (addr, comment)

    def move(self, coords: Coords):
        self._cursor += coords
        offset = self.rel_offset(coords)
        comment = f"{self.name} += {str(coords)} -> {str(self._cursor)}"
        return AsmStatement("addq", [c(offset)], self._base_ptr, comment=comment)

    def reset(self):
        self._cursor = Coords()

    # TODO: We will almost certainly want a two-part offset in order to do scale-index addressing
    def rel_offset(self, rel_coords: Coords) -> int:
        abs_coords = self._normalize(rel_coords + self._cursor)
        cursor_offset = self.abs_offset(self._cursor)
        coords_offset = self.abs_offset(abs_coords)
        return coords_offset - cursor_offset

    def abs_offset(self, abs_coords: Coords) -> int:
        coords = self._normalize(abs_coords)
        abs_offset = self.lookup[coords.down_cells][coords.right_cells]
        if abs_offset == -1:
            raise Exception(f"Entry {coords.down_cells},{coords.right_cells} does not exist!")
        return abs_offset

    def has_entry(self, rel_coords: Coords) -> bool:
        abs_coords = self._normalize(coords + self._cursor)
        offset = self.lookup[abs_coords.down_cells][abs_coords.right_cells]
        return offset != -1

    def _normalize(self, c: Coords) -> Coords:
        """ Convert coord units to cells-only """
        down = c.down_cells + c.down_vecs*self._vr + c.down_blocks*self.br
        right = c.right_cells + c.right_vecs*self._vc + c.right_blocks*self.bc
        return Coords(down=down, right=right, units="cells")



class DenseMatrixCursor(MatrixCursor):
    def __init__(self, name: str,
                 base_ptr: Register,
                 rows: int, cols: int, ld: int,
                 block_rows: int, block_cols: int):

        lookup = [[-1]*cols for i in range(rows)]
        for ci in range(cols):
            for ri in range(rows):
                lookup[ri][ci] = ci*ld + ri

        MatrixCursor.__init__(self, name, base_ptr, rows, cols,
                              block_rows, block_cols, lookup)


class PatternSparseMatrixCursor(MatrixCursor):
    def __init__(self, name: str,
                 base_ptr: Register,
                 rows: int, cols: int,
                 pattern: List[List[bool]]):

        br = len(pattern)
        bc = len(pattern[0])
        lookup = [[-1]*cols for i in range(rows)]
        x = 0

        for ci in range(cols):
            for ri in range(rows):
                if pattern[ri % br][ci % bc]:
                    lookup[ri][ci] = x
                    x += 1

        MatrixCursor.__init__(self, name, base_ptr, rows, cols, br, bc, lookup)


class BlockSparseMatrixCursor(MatrixCursor):
    def __init__(self, name: str,
                 base_ptr: Register,
                 block_matrix: List[List[int]],
                 patterns: List[List[List[bool]]]):

        topleftblock = block_matrix[0][0]
        br = len(patterns[topleftblock])
        bc = len(patterns[topleftblock][0])
        Br = len(block_matrix)
        Bc = len(block_matrix[0])
        rows = br*Br
        cols = bc*Bc

        x = 0
        lookup = [[-1]*cols for i in range(rows)]
        for Bci in range(Bc):        # Iterate over blocks of columns
            for Bri in range(Br):    # Iterate over blocks of rows
                pattern = patterns[block_matrix[Bri][Bci]]   # Pattern for current block
                for bci in range(bc):                        # Iterate over cols inside block
                    for bri in range(br):                    # Iterate over rows inside block
                        if pattern[bri][bci]:
                            lookup[Bri*br + bri][Bci*bc + bci] = x
                            x += 1

        MatrixCursor.__init__(self, name, base_ptr, rows, cols, br, bc, lookup)



