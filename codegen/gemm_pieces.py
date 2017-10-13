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
        offset = addr(direction, quantity, unit)
        self.cursor += offset
        return add(c(offset), self.ptr_reg)


    def addr(direction, quantity, units):
        if (direction=="down" and units=="registers"):
            offset = quantity * self.reg_width
        elif (direction=="up" and units=="registers"):
            offset = -quantity * self.reg_width
        elif (direction=="down" and units=="blocks"):
            offset = quantity * self.block_rows
        elif (direction=="up" and units=="blocks"):
            offset = -quantity * self.block_rows
        elif (direction=="right" and units=="cols"):
            offset = quantity * self.ld
        elif (direction=="left" and units=="cols"):
            offset = -quantity * self.ld
        elif (direction=="right" and units=="blocks"):
            offset = quantity * ld * block_cols
        elif (direction=="left" and units=="blocks"):
            offset = -quantity * ld * block_cols
        else:
            raise Exception("Invalid cursor movement!")
        return ptr_reg + offset


