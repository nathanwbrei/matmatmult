from codegen.blocks import *
from codegen.coords import Coords as Displacement


class MatrixCursor:

    def __init__(self,
                 name : str,
                 ptr_reg: Register,
                 rows: int,
                 cols: int,
                 ld: int,
                 block_rows: int = 16,
                 block_cols: int = 3,
                 scalar_bytes: int = 8,
                 vector_width: int = 4
                 ) -> None:

        self._name = name
        self._ptr_reg = ptr_reg
        self._rows = rows
        self._cols = cols
        self._ld = ld
        self._block_rows = block_rows
        self._block_cols = block_cols
        self._scalar_bytes = scalar_bytes
        self._vector_width = vector_width


    # addr() is deprecated, use look() instead
    def look(self, down=0, right=0, units="cells", displacement=None):

        disp = Displacement(down, right, units)
        if displacement is not None:
            disp += displacement

        offset = disp.right_cells*self._ld + disp.down_cells
        offset += disp.right_vecs*self._ld + disp.down_vecs*self._vector_width
        offset += disp.right_blocks*self._ld*self._block_cols + disp.down_blocks*self._block_rows
        return self._ptr_reg + offset*self._scalar_bytes

    def move(self, down:int=0, right:int=0, units:str="cells") -> AsmStatement:
        comment = f"Matrix {self._name} cursor moved down={down}, right={right} {units}"
        offset = self.addr(down, right, units).offset
        return AsmStatement("addq", [offset], self._ptr_reg, comment=comment)

    def addr(self, down:int=0, right:int=0, units:str="cells") -> MemoryAddress:
        if (units == "cells"):
            offset = right*self._ld + down
        elif (units == "vectors"):
            offset = right*self._ld + down*self._vector_width
        elif (units == "blocks"):
            offset = right*self._ld*self._block_cols + down*self._block_rows
        else:
            raise Exception("Units must be cells, vectors, or blocks.")
        return self._ptr_reg + offset*self._scalar_bytes



    # Todo: Check that register dimensions are consistent with self.vector_width
    def load_register_block(self, registers:List[List[Register]],
                            disp=None,             # Optional constant displacement
                            rows=None, cols=None   # Optional partial block
                           ) -> AsmBlock:
        if rows is None:
            rows = len(registers)
        if cols is None:
            cols = len(registers[0])

        asm = AsmBlock("Load register block")
        for ic in range(cols):
            for ir in range(rows):
                asm.stmt("vmovapd",
                         self.look(down=ir, right=ic, units="vectors", displacement=disp),
                         registers[ir][ic])
        return asm


    def store_register_block(self, registers:List[List[Register]],
                             disp=None,            # Optional constant displacement
                             rows=None, cols=None  # Optional partial block
                            ) -> AsmBlock:
        if rows is None:
            rows = len(registers)
        if cols is None:
            cols = len(registers[0])

        asm = AsmBlock("Store register block")
        for ic in range(cols):
            for ir in range(rows):
                asm.stmt("vmovapd",
                         registers[ir][ic],
                         self.look(down=ir,right=ic,units="vectors",displacement=disp))
        return asm


    def has_entry(self, down:int=0, right:int=0, units:str="cells"):

        if down < 0 or down >= self._rows or right < 0 or right >= self._cols:
            raise Exception(f"Attempted to access {self._name}({down},{right}) which is out-of-bounds")

        return True


class SparseMatrixCursor:
    def __init__(self,
                 name: str,
                 ptr_reg: Register,
                 rows:int, cols:int,
                 pattern:List[List[bool]],
                 scalar_bytes:int,
                 vector_width:int = 8) -> None:
        self._name = name
        self.rows = rows
        self.cols = cols
        self.pattern = pattern
        self.lookup = [[-1]*cols for i in range(rows)]
        self._ptr_reg = ptr_reg
        self._scalar_bytes = scalar_bytes
        self._vector_width = vector_width 

        # Build lookup table
        pattern_rows = len(pattern)
        pattern_cols = len(pattern[0])
        x = 0


        for j in range(cols):
            for i in range(rows):
                if pattern[i % pattern_rows][j % pattern_cols]:
                    self.lookup[i][j] = x
                    x += 1

        def nnz(pattern):
            return sum(sum(r) for r in pattern)

        self._move_down_offset = nnz(pattern)
        self._move_right_offset = (rows//pattern_rows) * nnz(pattern)  # Complete blocks
        self._move_right_offset += nnz(pattern[0:rows%pattern_rows])   # Partial block


    def addr(self, down:int=0, right:int=0, units:str="cells") -> MemoryAddress:
        if units != "cells":
            raise Exception("Sparse addr() only supports absolute offsets in units of cells")

        offset = self.lookup[down][right]
        if offset == -1:
            raise Exception(f"No value at location ({down},{right}).")

        return self._ptr_reg + self._scalar_bytes*offset


    def look(self, down=0, right=0, units="cells", displacement=None):

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



    def move(self, down:int=0, right:int=0, units:str="blocks") -> AsmStatement:
        if units != "blocks":
            raise Exception("Sparse move() only supports offsets in blocks of size sparsity_pattern")

        comment = f"Matrix {self._name} cursor moved down={down}, right={right} pattern-blocks"
        offset = self._move_right_offset * right + self._move_down_offset * down
        offset *= self._scalar_bytes
        return AsmStatement("addq", [c(offset)], self._ptr_reg, comment=comment)



    def has_entry(self, down:int=0, right:int=0, units:str="cells"):

        if units != "cells":
            raise Exception("Sparse has_entry() only supports absolute offsets in units of cells")

        if down < 0 or down >= self.rows or right < 0 or right >= self.cols:
            raise Exception(f"Attempted to access {self._name}({down},{right}) which is out-of-bounds")

        return self.lookup[down][right] != -1
        # Hopefully this is equivalent to:
        # return pattern[down % pattern_rows][right % pattern_cols]









