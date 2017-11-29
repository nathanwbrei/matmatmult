
from typing import NamedTuple, List, Tuple
from cursors.abstractcursor import CursorDef
from cursors.tiledcursor import TiledCursorDef, DenseCursorDef
from cursors.blockcursor import BlockCursorDef
from codegen.operands import *
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
    def __init__(self, name, m, n, k, bm, bn, bk,
                 blocks: Matrix[int],                # These two are required to be
                 pattern_index: List[Matrix[bool]]   # compatible with k,n,bk,bn
                ) -> None:

        ld = m if m % 8 == 0 else m + bm - m % bm
        self.name = name
        self.m, self.n, self.k, self.ld = m, n, k, ld
        self.bm, self.bn, self.bk = bm, bn, bk
        self.A = DenseCursorDef("A", rdi, m, k, ld, bm, bk)
        self.B = BlockCursorDef("B", rsi, k, n, bk, bn, blocks, pattern_index)
        self.C = DenseCursorDef("C", rdx, m, n, ld, bm, bn)
        self.A_regs, self.C_regs = make_reg_blocks(bm, bn, bk)


class TiledParameters(Parameters):

    def __init__(self, name, m, n, k, bm, bn, bk, pattern: Matrix[bool]) -> None:

        ld = m if m % 8 == 0 else m + bm - m%bm
        self.name = name
        self.m, self.n, self.k, self.ld = m, n, k, ld
        self.bm, self.bn, self.bk = bm, bn, bk
        self.A = DenseCursorDef("A", rdi, m, k, ld, bm, bk)
        self.B = TiledCursorDef("B", rsi, k, n, pattern)
        self.C = DenseCursorDef("C", rdx, m, n, ld, bm, bn)
        self.A_regs, self.C_regs = make_reg_blocks(bm, bn, bk)

        if (pattern.shape != (bk,bn)):
            print(f"Warning: Specified B blocksize {(bk,bn)}, " +
                  f"but provided pattern with shape {pattern.shape}")
            self.B.br = bk
            self.B.bc = bn

def make_reg_blocks(bm:int, bn:int, bk:int):
    assert(bm % 8 == 0)
    vm = bm//8
    assert((bn+bk) * vm <= 32)  # Needs to fit in AVX512 zmm registers

    A_regs = Matrix([[zmm(vm*c + r) for c in range(bk)] for r in range(vm)])
    C_regs = Matrix([[zmm(32 - vm*bn + vm*c + r) for c in range(bn)]
                                                 for r in range(vm)])
    return A_regs, C_regs

