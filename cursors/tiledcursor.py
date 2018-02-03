from typing import List, Tuple, cast

from codegen import *
from cursors import *



class TiledCursorDef(CursorDef):

    offsets: Matrix[int]

    def __init__(self,
                 name: str,
                 base_ptr: Register,
                 rows:int,
                 cols:int,
                 pattern: Matrix[bool],
                 scalar_bytes:int = 8,
                 vector_width:int = 8) -> None:

        self.name = name
        self.r, self.c = rows, cols
        self.br, self.bc = pattern.shape
        self.pattern = pattern
        self.offsets = Matrix.full(self.br, self.bc, -1)

        self.base_ptr = base_ptr
        self.index_ptr = None
        self.scale = 1
        self.scalar_bytes = scalar_bytes
        self.vector_width = vector_width

        x = 0
        for bci in range(self.bc):
            for bri in range(self.br):
                if pattern[bri, bci]:
                    self.offsets[bri,bci] = x
                    x += 1

        self.block_offset = pattern.nnz()
        self.ld_offset = self.Br * pattern.nnz()              # Complete blocks
        self.ld_offset += pattern[0:self.brf,:].nnz()         # Partial block


    def has_nonzero_cell(self,
                         src: CursorLocation,
                         dest_block: Coords,
                         dest_cell: Coords
                        ) -> bool:
        assert(dest_cell.absolute == False)
        return self.offsets[dest_cell.down, dest_cell.right] != -1


    def has_nonzero_block(self, src: CursorLocation, dest_block: Coords) -> bool:
        return True
        # TODO: How does this handle out-of-bounds and fringes?


    def offset(self,
               src_block: Coords,
               dest_block: Coords,
               dest_cell: Coords
              ) -> int:

        assert(src_block.absolute == True)
        assert(dest_cell.absolute == False)
        if not dest_block.absolute:
            dest_block += src_block

        block_offset = self.ld_offset*dest_block.right + self.block_offset*dest_block.down
        cell_offset = self.offsets[dest_cell.down, dest_cell.right]
        if cell_offset == -1:
            raise Exception(f"Cell {dest_cell} does not exist in memory")
        return block_offset + cell_offset

    def move(self,
             src: CursorLocation,
             dest_block: Coords
            ) -> Tuple[AsmStmt, CursorLocation]:

        if dest_block.absolute:
            dest_block_abs = dest_block
        else:
            dest_block_abs = src.current_block + dest_block

        comment = f"Move {self.name} to {str(dest_block)}"
        src_offset = self.offset(src.current_block, Coords(), src.current_cell)
        dest_offset = self.offset(src.current_block, dest_block, src.current_cell)
        rel_offset = (dest_offset - src_offset) * self.scalar_bytes
        dest = CursorLocation(dest_block_abs, src.current_cell)
        return (add(rel_offset, self.base_ptr, comment), dest)

    def look(self,
             src: CursorLocation,
             dest_block: Coords,
             dest_cell: Coords
            ) -> Tuple[MemoryAddress, str]:

        assert(dest_cell.absolute == False)

        comment = f"{self.name} [{dest_block.down},{dest_block.right}] [{dest_cell.down},{dest_cell.right}]"

        src_offset_abs = self.offset(src.current_block, Coords(), src.current_cell)
        dest_offset_abs = self.offset(src.current_block, dest_block, dest_cell)
        rel_offset = self.scalar_bytes * (dest_offset_abs - src_offset_abs)

        if self.index_ptr is not None:
            addr = MemoryAddress(self.base_ptr, self.index_ptr, self.scale, rel_offset)
        else:
            addr = MemoryAddress(self.base_ptr, None, None, rel_offset)
        return (addr, comment)


    def start_location(self, dest_block: Coords = Coords(absolute=True)) -> CursorLocation:

        assert(dest_block.absolute == True)
        #TODO: Handle fringe case?
        for bci in range(self.bc):
            for bri in range(self.br):
                if self.offsets[bri, bci] != -1:
                    return CursorLocation(dest_block, Coords(down=bri, right=bci, absolute=False))

        raise Exception(f"Block {dest_block} has no starting location because it is empty!")

    def get_block(self, src: CursorLocation=None, dest_block: Coords=None) -> BlockInfo:

        if src is None:
            assert(dest_block is not None)
            assert(dest_block.absolute == True)
            block_abs = dest_block
        elif dest_block is None:
            assert(src.current_block.absolute == True)
            block_abs = src.current_block
        else:
            assert(src.current_block.absolute == True)
            assert(dest_block.absolute == False)
            block_abs = dest_block + src.current_block

        br = self.br if block_abs.down < self.Br else self.brf   #TODO: Verify these
        bc = self.bc if block_abs.right < self.Bc else self.bcf
        index = 0
        pattern = self.pattern[0:br, 0:bc]
        pattern = cast(Matrix[bool], pattern)
        return BlockInfo(br, bc, index, pattern)


