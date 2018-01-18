
from scipy import matrix as Matrix
from typing import NamedTuple

# DEPRECATED. DELETE THIS!!!

# from codegen.cursors import *

#class Parameters(NamedTuple):
#    description: str
#    m: int
#    A_regs: Matrix          # Matrix[Register]
#    C_regs: Matrix          # Matrix[Register]
#    block_matrix: Matrix    # Matrix[int]
#    patterns: List[Matrix]  # List[Matrix[bool]]

#    def cursors(self):
#        topleftblock = block_matrix[0,0]
#        bk, bn = patterns[topleftblock].shape
#        Bk, Bn = block_matrix.shape
#        k, n = Bk*bk, Bn*bn
#        bm = 8 * C_regs.shape[0]
#        assert(m % bm == 0)

#        A = DenseCursor("A", rdi, self.m, self.k, self.m, bm, bk)
#        B = BlockSparseCursor("B", rsi, self.block_matrix, self.patterns)
#        C = DenseCursor("C", rdx, self.m, n, self.m, bm, bn)
#        return (A,B,C)


