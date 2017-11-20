
from typing import NamedTuple
from codegen.cursors import *


class Parameters(NamedTuple):
    name: str
    m: int
    n: int
    k: int
    ld: int
    bm: int
    bn: int
    bk: int
    A: Cursor
    B: Cursor
    C: Cursor
    A_regs: Matrix
    C_regs: Matrix
    pattern: List[List[bool]] = None # TODO: Make this part of cursor

    def reset(self):
        self.A.reset()
        self.B.reset()
        self.C.reset()


    @classmethod
    def from_sparsesparse(cls,
                          name: str,
                          m: int,
                          n: int,
                          k: int,
                          A_regs: Matrix,   # Constrains ld, bm, bk
                          C_regs: Matrix,   # Constrains bm, bn
                          blocks: List[List[int]],                # These two are required to be
                          pattern_index: List[List[List[int]]]    # compatible with k,n,bk,bn
                         ) -> "Parameters":

        bma, bk = A_regs.shape
        bmc, bn = C_regs.shape
        assert(bma==bmc)

        bm = 8*bma
        ld = m + bm - (m % bm)

        A = DenseCursor("A", rdi, m, k, ld, bm, bk)
        B = BlockSparseCursor("B", rsi, k, n, bk, bn, blocks, pattern_index)
        C = DenseCursor("C", rdx, m, n, ld, bm, bn)

        return cls(name, m, n, k, ld, bm, bn, bk, A, B, C, A_regs, C_regs)


    @classmethod
    def from_tiledsparse(cls,
                         name: str,
                         m: int,
                         n: int,
                         k: int,
                         A_regs: Matrix,  # Constrains ld, bm, bk
                         C_regs: Matrix,  # Constrains bm, bn
                         pattern: Matrix, # Constrains bk,bn
                         pattern_update: Tuple[int,int] = None
                        ) -> "Parameters":

        bma, bk = A_regs.shape
        bmc, bn = C_regs.shape
        assert(bma==bmc)
        if (pattern.shape != (bk,bn)):
            raise AssertionError(f"pattern.shape: expected {(bk,bn)}, got {pattern.shape}")

        bm = 8*bma
        ld = m + bm - (m % bm)

        A = DenseCursor("A", rdi, m, k, ld, bm, bk)
        B = TiledCursor("B", rsi, k, n, pattern)
        C = DenseCursor("C", rdx, m, n, ld, bm, bn)

        return cls(name, m, n, k, ld, bm, bn, bk, A, B, C, A_regs, C_regs, pattern)

