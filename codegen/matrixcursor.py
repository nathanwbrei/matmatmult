from blocks import *

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


    # TODO: Check that register dimensions are consistent with self.vector_width
    def load_register_block(self, registers:List[List[Register]]) -> AsmBlock:
        asm = AsmBlock("Load register block")
        for j in range(0,len(registers[0])):
            for i in range(0,len(registers)):
                asm.stmt("vmovapd",
                         self.addr(down=i,right=j,units="vectors"),
                         registers[i][j])
        return asm


    def store_register_block(self, registers:List[List[Register]]) -> AsmBlock:
        asm = AsmBlock("Store register block")
        for j in range(0,len(registers[0])):
            for i in range(0,len(registers)):
                asm.stmt("vmovapd",
                         registers[i][j],
                         self.addr(down=i,right=j,units="vectors"))
        return asm




