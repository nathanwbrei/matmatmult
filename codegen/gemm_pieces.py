from x86_64 import *


class MatrixCursor:

    def __init__(self, ptr_reg,
                 rows, cols, ld,
                 block_rows=16, block_cols=3,
                 reg_width=4):
        self.ptr_reg = ptr_reg
        self.cursor = 0
        self.rows = rows
        self.cols = cols
        self.ld = ld
        self.block_rows = block_rows
        self.block_cols = block_cols
        self.reg_width = reg_width


    def move_beginning():
        old_offset = self.offset
        self.offset = 0
        return add(c(-old_offset), self.ptr_reg)

    def move(direction, quantity, unit):
        ma = addr(direction, quantity, unit).offset
        self.cursor += offset.value
        return add(offset, self.ptr_reg)

    def addr(down=0, right=0, units="cells"):
        if (units == "cells"):
            offset = right*self.ld + down
        elif (units == "vectors"):
            offset = right*self.ld + down*self.reg_width
        elif (units == "blocks"):
            offset = right*self.ld*self.block_cols + down*self.block_rows
        else:
            raise Exception("Units must be cells, vectors, or blocks.")
        return self.ptr_reg + offset


    # TODO: Figure out how to do this in conjunction with .move()
    # TODO: Check that register dimensions are consistent with self.reg_width
    def load_register_block(self, registers):
        statements = []
        for i in range(0,len(registers)):
            for j in range(0,len(registers[0])):
                s = copy(self.addr(down=i,right=j,units="vectors"),
                         registers[i][j])
                statements.append(s)
        return statements


    def store_register_block(registers):
        statements = []
        for i in range(0,len(registers)):
            for j in range(0,len(registers[0])):
                s = copy(registers[i][j],
                         self.addr(down=i,right=j,units="vectors"))
                statements.append(s)
        return statements




