
from typing import NamedTuple, List, Tuple
from cursors.abstractcursor import CursorDef
from cursors.tiledcursor import TiledCursorDef, DenseCursorDef
from cursors.blockcursor import BlockCursorDef
from codegen.operands import Register, rdi, rdx, rsi
from codegen.matrix import Matrix

class Parameters:
    name: str
    m: int
    n: int
    k: int
    ld: int
    bm: int
    bn: int
    bk: int
    A: CursorDef
    B: CursorDef
    C: CursorDef
    A_regs: Matrix[Register]
    C_regs: Matrix[Register]


class BlockParameters(Parameters):
    def __init__(self,
                 name: str,
                 m: int,
                 n: int,
                 k: int,
                 A_regs: Matrix[Register],           # Constrains ld, bm, bk
                 C_regs: Matrix[Register],           # Constrains bm, bn
                 blocks: Matrix[int],                # These two are required to be
                 pattern_index: List[Matrix[bool]]   # compatible with k,n,bk,bn
                ) -> None:

        bma, bk = A_regs.shape
        bmc, bn = C_regs.shape
        assert(bma==bmc)

        bm = 8*bma
        if m % 8 == 0:
            ld = m
        else:
            ld = m + bm - (m % bm)

        self.name = name
        self.m = m
        self.n = n
        self.k = k
        self.ld = ld
        self.bm = bm
        self.bn = bn
        self.bk = bk
        self.A = DenseCursorDef("A", rdi, m, k, ld, bm, bk)
        self.B = BlockCursorDef("B", rsi, k, n, bk, bn, blocks, pattern_index)
        self.C = DenseCursorDef("C", rdx, m, n, ld, bm, bn)
        self.A_regs = A_regs
        self.C_regs = C_regs

class TiledParameters(Parameters):

    def __init__(self,
                 name: str,
                 m: int,
                 n: int,
                 k: int,
                 A_regs: Matrix[Register],  # Constrains ld, bm, bk
                 C_regs: Matrix[Register],  # Constrains bm, bn
                 pattern: Matrix[bool],     # Constrains bk,bn
                 pattern_update: Tuple[int,int] = None
                ) -> None:

        bma, bk = A_regs.shape
        bmc, bn = C_regs.shape
        assert(bma==bmc)
        if (pattern.shape != (bk,bn)):
            raise AssertionError(f"pattern.shape: expected {(bk,bn)}, got {pattern.shape}")

        bm = 8*bma
        if m % 8 == 0:
            ld = m
        else:
            ld = m + bm - (m % bm)

        self.name = name
        self.m = m
        self.n = n
        self.k = k
        self.ld = ld
        self.bm = bm
        self.bn = bn
        self.bk = bk
        self.A = DenseCursorDef("A", rdi, m, k, ld, bm, bk)
        self.B = TiledCursorDef("B", rsi, k, n, pattern)
        self.C = DenseCursorDef("C", rdx, m, n, ld, bm, bn)
        self.A_regs = A_regs
        self.C_regs = C_regs

