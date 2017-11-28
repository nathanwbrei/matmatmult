from cursors.abstractcursor import *
from typing import cast # TODO: Use function overloads correctly now that I know how

class BlockCursorDef(CursorDef):

    blocks: Matrix[int]
    patterns: List[Matrix[bool]]
    offsets: Matrix[int]

    def __init__(self,
                 name: str,
                 base_ptr: Register,
                 rows: int,
                 cols: int,
                 block_rows: int,
                 block_cols: int,
                 blocks: Matrix[int],
                 patterns: List[Matrix[bool]]) -> None:

        self.name = name
        self.base_ptr = base_ptr
        self.index_ptr = None
        self.scale = 1
        self.r = rows
        self.c = cols
        self.br = block_rows
        self.bc = block_cols  # The reported blocksizes are the truth
        self.blocks = blocks
        self.patterns = patterns

        # The block patterns that are passed in need to conform with the truth,
        # not the other way around.
        topleftblock = blocks[0,0]
        topleftblock = cast(int, topleftblock)
        brp, bcp = patterns[topleftblock].shape
        Brp, Bcp = blocks.shape

        assert(brp==self.br)
        assert(bcp==self.bc)
        assert(Brp==self.Br)
        assert(Bcp==self.Bc)

        # This enforces a constant blocksize (excluding fringes), which
        # makes a lot of things easier
        x = 0
        offsets = Matrix.full(rows+1, cols+1, -1)
        for Bci in range(self.Bc):        # Iterate over blocks of columns
            for Bri in range(self.Br):    # Iterate over blocks of rows
                index = cast(int, blocks[Bri, Bci])
                pattern = patterns[index]                    # Pattern for current block
                for bci in range(self.bc):                        # Iterate over cols inside block
                    for bri in range(self.br):                    # Iterate over rows inside block
                        if pattern[bri,bci]:
                            offsets[Bri*self.br + bri, Bci*self.bc + bci] = x
                            x += 1
        # TODO: Handle fringes correctly.
        self.offsets = offsets



    def offset(self,
               src: CursorLocation,
               dest_block: Coords = Coords(),
               dest_cell: Coords = Coords()
              ) -> int:

        if (dest_cell.absolute and dest_block.down!=0 and dest_block.right!=0):
            raise Exception("Cells may only be absolute if no logical block specified")

        dest_block_abs = dest_block if dest_block.absolute else dest_block+src.current_block
        dest_cell_abs = dest_cell + Coords(dest_block_abs.down * self.br,
                                           dest_block_abs.right * self.bc,
                                           absolute = True )

        self._bounds_check(dest_cell_abs)
        return self.offsets[dest_cell_abs.down, dest_cell_abs.right]


    def move(self,
             src: CursorLocation,
             dest_block: Coords
            ) -> Tuple[AsmStmt, CursorLocation]:

        comment = f"Move {self.name} to {str(block)}"
        if move_base_ptr or (self._index_ptr is None):
            ptr_to_move = self._base_ptr
        else:
            ptr_to_move = self._index_ptr

        dest_block_abs = dest_block if dest_block.absolute else dest_block+src.current_block
        dest_cell_rel = self.rel_block_start(dest_block_abs)
        dest_offset_abs = self.offset(src, dest_block, dest_cell_rel)
        src_offset_abs = self.offset(src)
        dest_offset_rel = dest_offset_abs - src_offset_abs

        dest = CursorLocation()
        dest.current_block = dest_block_abs
        dest.current_cell = dest_cell_rel  # TODO: Do we need this abs or rel?

        if dest_block.absolute:
            return (mov(dest_offset_abs, ptr_to_move, comment), dest)
        else:
            return (add(dest_offset_rel*self.scalar_bytes, ptr_to_move, comment), dest)


    def look(self,
             src: CursorLocation,
             dest_block: Coords,
             dest_cell: Coords
            ) -> Tuple[MemoryAddress, str]:

        comment = f"{self.name} @ block{str(block)}, cell{str(cell)}"
        src_offset_abs = self.offset(src)
        dest_offset_abs = self.offset(src, dest_block, dest_cell)
        rel_offset = dest_offset_abs - src_offset_abs

        if self._index_ptr is not None:
            addr = MemoryAddress(self._base_ptr, self._index_ptr,
                                 c(self._scale), c(rel_offset*self._scalar_bytes))
        else:
            addr = MemoryAddress(self._base_ptr, None, None, self._scalar_bytes*rel_offset)
        return (addr, comment)


    def get_block(self, src: CursorLocation, dest_block: Coords) -> BlockInfo:
        block_abs = block if block.absolute else block + src.current_block
        br = self.br if block_abs.down < self.Br else self.brf
        bc = self.bc if block_abs.right < self.Bc else self.bcf
        index = self.blocks[block_abs.down, block_abs.right]
        index = cast(int, index)
        pattern = self.patterns[index][0:br, 0:bc]
        pattern = cast(Matrix[bool], pattern)
        return BlockInfo(br, bc, index, pattern)


    def has_nonzero_cell(self,
                         src: CursorLocation,
                         dest_block: Coords,
                         dest_cell: Coords
                        ) -> bool:
        return self.offset(src, dest_block, dest_cell) != -1


    def has_nonzero_block(self, src: CursorLocation, dest_block: Coords) -> bool:
        nonzero = False
        br,bc,idx,pat = self.block(src, dest_block)
        for bci in range(bc):
            for bri in range(br):
                if pat[bci,bri]:
                    nonzero = True
        return nonzero



    def rel_block_start(self, dest_block: Coords) -> Coords:
        pass

    @staticmethod
    def _physical_start(pattern: Matrix[bool]) -> Coords:
        pass
