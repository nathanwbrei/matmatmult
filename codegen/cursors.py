
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
from scipy import matrix as Matrix
from codegen.coords import Coords
from codegen.operands import *
from codegen.statements import AsmStatement

class Cursor:

    _cursor : Coords = Coords()

    _scalar_bytes: int = 8    # Used for calulating addrs. single=4, double=8
    _vr: int = 8              # Vector rows
    _vc: int = 1              # Vector cols

    def __init__(self, name: str,
                 base_ptr: Register,
                 rows: int, cols: int,
                 block_rows: int, block_cols: int,
                 lookup: List[List[int]]) -> None:
        self.name = name
        self._base_ptr = base_ptr
        self._index_ptr = None
        self.r = rows
        self.c = cols
        self.br = block_rows
        self.bc = block_cols
        self.Br = rows // block_rows
        self.Bc = cols // block_cols
        self.lookup = lookup

    def look(self, coords: Coords) -> Tuple[MemoryAddress, str]:
        """ Translates logical coordinates (relative to the cursor's current location)
            into a memory address and helpful comment, which can be embedded in any
            AsmStatement. Coords should ideally stay 'close by' the cursor, i.e.
            inside the current block, because AVX512 displacement addressing generates
            huge FMA instructions when the displacement > 128. If blocksize is large,
            consider using scale-index addressing with multiple cursors. """

        comment = f"{self.name} @ {str(coords)}"
        offset = self.rel_offset(coords)
        if self._index_ptr is not None:
            addr = MemoryAddress(self._base_ptr, self._index_ptr,
                                 c(1), c(offset*self._scalar_bytes))
        else:
            addr = self._base_ptr + self._scalar_bytes*offset
        return (addr, comment)

    def move(self, coords: Coords, move_base_ptr=False):
        """ Move cursor an exact distance in logical units, and return
            an assembly statement effecting this. If the matrix is sparse and
            the entry is nonzero, this will throw an exception because there is
            no physical address to point to. Can be used in Loops with dense and
            sufficiently regular patternsparse matrices. For less regular sparse
            matrices it is preferable to use tab().
        """

        if move_base_ptr or (self._index_ptr is None):
            ptr_to_move = self._base_ptr
        else:
            ptr_to_move = self._index_ptr

        offset = self.rel_offset(coords) * self._scalar_bytes
        comment = f"{self.name} += {str(coords)} -> {str(self._cursor)}"
        self._cursor += coords
        return AsmStatement("addq", [c(offset)], ptr_to_move, comment=comment)

    def tab(self, down_blocks: int = 0, right_blocks: int = 0):
        """ Move cursor to the first nonzero entry of the block located
            at (down_blocks,right_blocks) relative to the block in which
            the cursor currently resides. This allows block traversal
            of blocksparse matrices.

            Returns a Tuple[AsmStatement, Coords]. The coords indicate where
            the tab 'landed', i.e. the location of the cursor relative to the
            logical start of the block. This allows the user to call
            look() or has_nonzero_cell() relative to the logical start of block:

            stmt, coords_to_block_start = cursor.tab(down_blocks=1)
            cursor.has_nonzero_cell(coords_rel_to_block + coords_to_block_start)
        """

        # Find abs coords of current block
        c = self._normalize(self._cursor)
        c.down_cells = c.down_cells - (c.down_cells % self.br)
        c.right_cells = c.right_cells - (c.right_cells % self.bc)

        # Find abs coords of destination block
        c.down_cells += down_blocks * self.br
        c.right_cells += right_blocks * self.bc
        dest_block_abs = c

        # Find first nonzero entry in block
        for bci in range(self.bc):
            for bri in range(self.br):
                dest_cell_rel_dest_block = Coords(down=bri, right=bci)
                dest_cell_rel_src = dest_cell_rel_dest_block + dest_block_abs - self._cursor
                if self.has_nonzero_cell(dest_cell_rel_src):
                    return (self.move(dest_cell_rel_src), -dest_cell_rel_dest_block)

        raise Exception("Unable to tab(): Block is completely empty!")


    def reset(self):
        return self.move(-self._cursor)


    def rel_offset(self, rel_coords: Coords) -> int:
        abs_coords = self._normalize(rel_coords + self._cursor)
        cursor_offset = self.abs_offset(self._cursor)
        coords_offset = self.abs_offset(abs_coords)
        return coords_offset - cursor_offset

    def abs_offset(self, abs_coords: Coords) -> int:
        coords = self._normalize(abs_coords)
        self._bounds_check(coords)
        abs_offset = self.lookup[coords.down_cells][coords.right_cells]
        if abs_offset == -1:
            raise Exception(f"Entry {coords.down_cells},{coords.right_cells} does not exist!")
        return abs_offset


    def has_nonzero_cell(self, rel_coords: Coords) -> bool:
        abs_coords = self._normalize(rel_coords + self._cursor)
        self._bounds_check(abs_coords)
        offset = self.lookup[abs_coords.down_cells][abs_coords.right_cells]
        return offset != -1

    def has_nonzero_block(self, blocks_down: int, blocks_right: int) -> bool:

        # Find abs coords of current block
        dest_block_abs = self._normalize(self._cursor)
        dest_block_abs.down_cells -= (c.down_cells % self.br)
        dest_block_abs.right_cells -= (c.right_cells % self.bc)

        # Find abs coords of destination block
        dest_block_abs.down_cells += down_blocks * self.br
        dest_block_abs.right_cells += right_blocks * self.bc

        nonzero = False
        for bci in range(self.bc):
            for bri in range(self.br):

                dest_cell_rel_dest_block = Coords(down=bri, right=bci)
                dest_cell_rel_src = dest_cell_rel_dest_block + dest_block_abs - self._cursor
                if self.has_nonzero_cell(dest_cell_rel_src):
                    nonzero = True

        return nonzero


    def _bounds_check(self, abs_coords: Coords) -> None:
        ri,ci = abs_coords.down_cells, abs_coords.right_cells
        if ri>=self.r or ci>=self.c or ri<0 or ci<0:
            raise Exception(f"Entry {ri},{ci} outside matrix!")

    def _normalize(self, c: Coords) -> Coords:
        """ Convert coord units to cells-only """
        down = c.down_cells + c.down_vecs*self._vr + c.down_blocks*self.br
        right = c.right_cells + c.right_vecs*self._vc + c.right_blocks*self.bc
        return Coords(down=down, right=right, units="cells")



class DenseCursor(Cursor):
    def __init__(self, name: str,
                 base_ptr: Register,
                 rows: int, cols: int, ld: int,
                 block_rows: int, block_cols: int) -> None:

        lookup = [[-1]*cols for i in range(rows)]
        for ci in range(cols):
            for ri in range(rows):
                lookup[ri][ci] = ci*ld + ri

        Cursor.__init__(self, name, base_ptr, rows, cols,
                              block_rows, block_cols, lookup)


class TiledCursor(Cursor):
    def __init__(self, name: str,
                 base_ptr: Register,
                 rows: int, cols: int,
                 pattern: Matrix  # Matrix[bool]
                ) -> None:

        br,bc = pattern.shape
        lookup = [[-1]*cols for i in range(rows)]
        x = 0

        for ci in range(cols):
            for ri in range(rows):
                if pattern[ri % br, ci % bc]:
                    lookup[ri][ci] = x
                    x += 1

        Cursor.__init__(self, name, base_ptr, rows, cols, br, bc, lookup)


class BlockSparseCursor(Cursor):
    def __init__(self, name: str,
                 base_ptr: Register,
                 blocks: Matrix,
                 patterns: List[Matrix]) -> None:

        topleftblock = blocks[0,0]
        br, bc = patterns[topleftblock].shape
        Br, Bc = blocks.shape
        rows, cols = br*Br, bc*Bc

        x = 0
        lookup = [[-1]*cols for i in range(rows)]
        for Bci in range(Bc):        # Iterate over blocks of columns
            for Bri in range(Br):    # Iterate over blocks of rows
                pattern = patterns[blocks[Bri,Bci]]    # Pattern for current block
                for bci in range(bc):                        # Iterate over cols inside block
                    for bri in range(br):                    # Iterate over rows inside block
                        if pattern[bri,bci]:
                            lookup[Bri*br + bri][Bci*bc + bci] = x
                            x += 1

        Cursor.__init__(self, name, base_ptr, rows, cols, br, bc, lookup)



