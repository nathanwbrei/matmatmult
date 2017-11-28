

from cursors.abstractcursor import CursorDef, CursorLocation
from codegen.ast import AsmStmt
from codegen.operands import Register, MemoryAddress
from codegen.matrix import Matrix
from codegen.coords import Coords

from typing import List, Tuple


class TiledCursorDef(CursorDef):

    offsets: Matrix[int]

    def __init__(self,
                 name: str,
                 ptr_reg: Register,
                 rows:int,
                 cols:int,
                 pattern: List[List[bool]],
                 scalar_bytes:int = 8,
                 vector_width:int = 8) -> None:

        self.name = name
        self.r, self.c = rows, cols
        self.br, self.bc = pattern.shape
        self.offsets = Matrix.full(self.br, self.bc, -1)

        self.ptr_reg = ptr_reg
        self.index_reg = None
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
        return offsets[dest_cell.down, dest_cell.right] != -1

    def offset(self,
               src: CursorLocation,
               dest_block: Coords,
               dest_cell: Coords
              ) -> int:

        assert(dest_cell.absolute == False)
        if not dest_block.absolute:
            dest_block += src.current_block

        block_offset = self.ld_offset*dest_block.right + self.block_offset*dest_block.down
        cell_offset = offsets[dest_cell.down, dest_cell.right]
        if cell_offset == -1:
            raise Exception(f"Cell {dest_cell} does not exist in memory")
        return block_offset + cell_offset

    def move(self,
             src: CursorLocation,
             dest_block: Coords
            ) -> Tuple[AsmStmt, CursorLocation]:

        assert(dest_block.absolute == False)
        comment = f"Move {self.name} to {str(dest_block)}"
        offset = self.offset(src, dest_block, src.current_cell)
        offset *= self.scalar_bytes
        dest = CursorLocation(src.current_block + dest_block, src.current_cell)
        return (add(offset, self.ptr_reg, comment), dest)

    def look(self,
             src: CursorLocation,
             dest_cell: Coords
            ) -> Tuple[MemoryAddress, str]:

        disp = Displacement(down, right, units)
        if displacement is not None:
            disp += displacement

        vr, vc = self._vector_width, 1
        br, bc = len(self.pattern), len(self.pattern[0])
        down = disp.down_cells + disp.down_vecs * vr + disp.down_blocks * br
        right = disp.right_cells + disp.right_vecs * vc + disp.right_blocks * bc

        offset = self.lookup[down][right]
        if offset == -1:
            raise Exception(f"No value at location ({down},{right}).")


        return self._ptr_reg + self._scalar_bytes*offset



class DenseCursorDef(TiledCursorDef):
    def __init__(self,
                 name: str,
                 ptr_reg: Register,
                 rows:int,
                 cols:int,
                 block_rows: int,
                 block_cols: int,
                 scalar_bytes:int = 8,
                 vector_width:int = 8) -> None:

        pattern = Matrix.full(block_rows, block_cols, True)
        return TiledCursorDef.__init__(self, name, ptr_reg, rows, cols, pattern, scalar_bytes, vector_width)




