
from typing import Tuple, List, NamedTuple, cast

from codegen.coords import NewCoords as Coords
from codegen.matrix import Matrix
from codegen.operands import *
from codegen.statements import AsmStatement

class BlockInfo(NamedTuple):
    br: int                 # Cell rows in block
    bc: int                 # Cell cols in block
    pattern_index: int      # Pattern location in index
    pattern: Matrix[bool]   # The pattern itself

class Cursor:

    def __init__(self,
                 name: str,
                 base_ptr: Register,
                 index_ptr: Register,
                 rows: int,
                 cols: int,
                 block_rows: int,
                 block_cols: int,
                 offsets: Matrix[int],           # Pattern indices of each block
                 blocks: Matrix[int],            # Patterns themselves
                 patterns: List[Matrix[bool]]    # Memory offsets of each cell
    ) -> None:

        self.name = name
        self.r = rows                            # The dimension information r,c,br,bc,Br,Bc
        self.c = cols                            # is the final arbiter of truth. The information
        self.br = block_rows                     # in _offsets, _blocks, _patterns must be
        self.bc = block_cols                     # consistent with this.
        self.Br = rows // block_rows
        self.Bc = cols // block_cols
        self._offsets = offsets
        self._blocks = blocks
        self._patterns = patterns
        self._base_ptr = base_ptr                # Attaches the cursor to pointers in memory
        self._index_ptr = index_ptr
        self._scale = 1
        self._src_cell = Coords(absolute=True)   # Logical absolute cell location of cursor
        self._src_block = Coords(absolute=True)  # Logical absolute block location of cursor
        self._lost: bool = False                 # In case the cursor is moved off-grid
        self._scalar_bytes: int = 8              # Used for calulating addrs. single=4, double=8





    def look(self, block: Coords, cell: Coords) -> Tuple[MemoryAddress, str]:
        if (cell.absolute and block.down!=0 and block.right!=0):
            raise AssertionError("Cells may only be absolute if no logical block specified")

        comment = f"{self.name} @ block{str(block)}, cell{str(cell)}"
        if block.absolute:
            dest_block_abs = block
        else:
            dest_block_abs = self._src_block + block

        dest_cell_abs = self._cells_to_logical_block(dest_block_abs) + cell
        src_offset_abs = self.offset(cell = self._src_cell)
        dest_offset_abs = self.offset(cell = dest_cell_abs)

        offset = dest_offset_abs - src_offset_abs
        if self._index_ptr is not None:
            addr = MemoryAddress(self._base_ptr, self._index_ptr,
                                 c(self._scale), c(offset*self._scalar_bytes))
        else:
            addr = self._base_ptr + self._scalar_bytes*offset
        return (addr, comment)




    def move(self, block: Coords, move_base_ptr=False, iters=1) -> AsmStatement:

        comment = f"Move {self.name} to {str(block)}"
        if move_base_ptr or (self._index_ptr is None):
            ptr_to_move = self._base_ptr
        else:
            ptr_to_move = self._index_ptr

        if block.absolute:
            dest_block_abs = block
        else:
            dest_block_abs = self._src_block + block

        dest_cell_abs = self._cells_to_physical_block(dest_block_abs)
        src_offset_abs = self.offset(cell = self._src_cell)
        dest_offset_abs = self.offset(cell = dest_cell_abs)

        if block.absolute:
            self._src_cell = dest_cell_abs
            self._src_block = dest_block_abs
            return AsmStatement("movq", [c(dest_offset_abs)], ptr_to_move, comment=comment)
        else:
            dest_offset_rel = dest_offset_abs - src_offset_abs
            dest_cell_rel = dest_cell_abs - self._src_cell
            for x in range(iters):
                self._src_cell += dest_cell_rel
                self._src_block += block
            return AsmStatement("addq", [c(dest_offset_rel * self._scalar_bytes)],
                                ptr_to_move, comment=comment)




    def reset(self):
        return self.move(-self._src_cell)




    def offset(self, block: Coords = Coords(), cell: Coords = Coords()) -> int:

        if (cell.absolute and block.down!=0 and block.right!=0):
            raise AssertionError("Cells may only be absolute if no logical block specified")

        c = self._cells_to_logical_block(block) + cell
        self._bounds_check(c)
        offset = cast(int, self._offsets[c.down, c.right])
        if (offset == -1):
            raise Exception(f"Entry at block {str(block)},{str(cell)} does not exist!")
        return offset




    def has_nonzero_block(self, block: Coords) -> bool:
        nonzero = False
        for bci in range(self.bc):
            for bri in range(self.br):
                cell = Coords(down=bri, right=bci)
                if self.has_nonzero_cell(block, cell):
                    nonzero = True

        return nonzero



    def has_nonzero_cell(self, block: Coords, cell: Coords) -> bool:
        if (cell.absolute and block.down!=0 and block.right!=0):
            raise Exception("Cells may only be absolute if no logical block specified")
        if block.absolute:
            dest_block_abs = block
        else:
            dest_block_abs = block + self._src_block

        dest_cell_abs = cell + Coords(dest_block_abs.down * self.br,
                                      dest_block_abs.right * self.bc,
                                      absolute = True )

        self._bounds_check(dest_cell_abs)
        offset = self._offsets[dest_cell_abs.down, dest_cell_abs.right]
        return offset != -1



    def block(self, block: Coords) -> BlockInfo:
        if block.absolute:
            block_abs = block
        else:
            block_abs = block + self._src_block

        if block_abs.down != self.Br - 1:
            br = self.br
        else:
            br = self.r - block_abs.down*self.br

        if block_abs.right != self.Bc - 1:
            bc = self.bc
        else:
            bc = self.c - block_abs.right*self.bc

        index = self._blocks[block_abs.down, block_abs.right]
        index = cast(int, index)
        pattern = self._patterns[index][0:br, 0:bc]
        pattern = cast(Matrix[bool], pattern)
        return BlockInfo(br, bc, index, pattern)



    def _bounds_check(self, abs_cells: Coords) -> None:
        ri,ci = abs_cells.down, abs_cells.right
        r, c = self._offsets.shape
        if ri >= r or ci >= c or ri < 0 or ci < 0:
            raise Exception(f"Entry {ri},{ci} outside matrix!")



    def _cells_to_logical_block(self, block: Coords) -> Coords:   # Absolute cell coords

        if block.absolute:
            dest_block_abs = block
        else:
            dest_block_abs = block + self._src_block

        return Coords(down = dest_block_abs.down * self.br,
                      right = dest_block_abs.right * self.bc,
                      absolute = True)



    def _cells_to_physical_block(self, block: Coords) -> Coords:  # Absolute cell coords

        lbs = self._cells_to_logical_block(block)

        #TODO: This won't work with a fringe. Need to use block-specific bc, br
        # Find first nonzero entry in block
        for bci in range(self.bc):
            for bri in range(self.br):
                pbs = Coords(down=bri, right=bci) + lbs
                if self.has_nonzero_cell(block=Coords(), cell=pbs):
                    return pbs

        raise Exception("No physical blockstart: Block is completely empty!")







class DenseCursor(Cursor):
    def __init__(self, name: str,
                 base_ptr: Register,
                 rows: int, cols: int, ld: int,
                 block_rows: int, block_cols: int) -> None:

        offsets = Matrix.full(rows+1,cols+1,-1)
        blocks = Matrix.full(rows//block_rows, rows//block_cols, 0)
        pattern = Matrix.full(block_rows, block_cols, True)

        # Lookup is 1 cell bigger so that we can loop over blocks and let the pointer
        # get "off the grid" on the last iteration.
        for ci in range(cols+1):
            for ri in range(rows+1):
                offsets[ri, ci] = ci*ld + ri

        Cursor.__init__(self, name, base_ptr, None, rows, cols,
                              block_rows, block_cols, offsets, blocks, [pattern])


class TiledCursor(Cursor):
    def __init__(self, name: str,
                 base_ptr: Register,
                 rows: int, cols: int,
                 pattern: Matrix[bool]
                ) -> None:

        br,bc = pattern.shape
        Br,Bc = r//br, c//bc
        blocks = Matrix.full(Br,Bc,0)
        offsets = Matrix.full(rows+1,cols+1,-1)
        x = 0

        # Fringe uses wraparound strategy
        for ci in range(cols+1):
            for ri in range(rows+1):
                if pattern[ri % br, ci % bc]:
                    offsets[ri, ci] = x
                    x += 1
            x -= 1

        Cursor.__init__(self, name, base_ptr, None, rows, cols, br, bc, offsets, blocks, [pattern])


class BlockSparseCursor(Cursor):
    def __init__(self,
                 name: str,
                 base_ptr: Register,
                 rows: int,
                 cols: int,
                 block_rows: int,
                 block_cols: int,
                 blocks: Matrix[int],
                 patterns: List[Matrix[bool]]) -> None:

        # The reported blocksizes are the truth
        br, bc = block_rows, block_cols
        Br, Bc = rows//br, cols//bc

        # The block patterns that are passed in need to conform with the truth,
        # not the other way around.
        topleftblock = blocks[0,0]
        topleftblock = cast(int, topleftblock)
        brp, bcp = patterns[topleftblock].shape
        Brp, Bcp = blocks.shape
        assert(brp==br)
        assert(bcp==bc)
        assert(Br==Brp)
        assert(Bc==Bcp)

        # This enforces a constant blocksize (excluding fringes), which
        # makes a lot of things easier
        x = 0
        lookup = Matrix.full(rows+1, cols+1, -1)
        for Bci in range(Bc):        # Iterate over blocks of columns
            for Bri in range(Br):    # Iterate over blocks of rows
                index = cast(int, blocks[Bri, Bci])
                pattern = patterns[index]                    # Pattern for current block
                for bci in range(bc):                        # Iterate over cols inside block
                    for bri in range(br):                    # Iterate over rows inside block
                        if pattern[bri,bci]:
                            lookup[Bri*br + bri, Bci*bc + bci] = x
                            x += 1

        # TODO: Handle fringes correctly.

        Cursor.__init__(self, name, base_ptr, None, rows, cols, br, bc, lookup, blocks, patterns)



