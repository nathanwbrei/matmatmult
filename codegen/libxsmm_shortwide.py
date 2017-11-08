
from codegen.blocks import *
from codegen.loop import *
from codegen.matrixcursor import *

from typing import NamedTuple


class Parameters(NamedTuple):
    m: int
    n: int
    k: int
    lda: int
    ldb: int
    ldc: int
    A_regs: List[Register]
    C_regs: List[Register]

    def cursors(self):
        scalar_bytes = 8
        vec_width = 8
        mb = vec_width
        nb = len(self.C_regs)
        kb = len(self.A_regs)

        A = MatrixCursor("A", rdi, self.m, self.k, self.lda, mb, kb, scalar_bytes, vec_width)
        B = MatrixCursor("B", rsi, self.k, self.n, self.ldb, kb, nb, scalar_bytes, vec_width)
        C = MatrixCursor("C", rdx, self.m, self.n, self.ldc, mb, nb, scalar_bytes, vec_width)
        return (A,B,C)


defaults = Parameters(
    m = 48, n = 9, k = 9,
    lda = 48, ldb = 9, ldc = 48,
    A_regs = [zmm(x) for x in range(9, 27)],  # zmm9..zmm26
    C_regs = [zmm(x) for x in range(0, 8)]    # zmm0..zmm7
    )



def make_gemm(p:Parameters) -> AsmBlock:

    m, n, k = p.m, p.n, p.k   # Number of cells in m,n,k -directions
    mb = 8                    # Number of cells in one m-block
    nb = len(self.C_regs)     # Number of cells in one n-block

    A,B,C = p.cursors()                   # Access matrices from memory
    A_regs, C_regs = p.A_regs, p.C_regs   # Access matrices from register blocks
    m_reg, n_reg = r(12), r(13)           # Iteration variables

    asm = AsmBlock(f"LibXSMM short-wide small on KNL for {m}x{n}x{k}").body([
        loop(n_reg, 0, n, nb).body([
            loop(m_reg, 0, m, mb).body([
                C.load_register_block(C_regs),
                block_inner_prod(p),
                C.store_register_block(C_regs),
                A.move(down=1, units="blocks"),
                C.move(down=1, units="blocks")
            ]),
            A.move(down=-m, units="cells"),
            B.move(right=1, units="blocks"),
            C.move(down=-m, right=nb, units="cells"),
        ])
    ])
    return asm

def block_inner_prod(p):

    m, n, k = p.m, p.n, p.k   # Number of cells in m,n,k -directions
    mb = 8                    # Number of cells in one m-block
    nb = len(self.C_regs)     # Number of cells in one n-block
    kb = len(self.A_regs)     # Number of cells in one k-block
    kB = k // kb              # Number of complete k-blocks
    kr = k % kb               # Number of remaining cells in k-direction

    A,B,C = p.cursors()                   # Access matrices from memory
    A_regs, C_regs = p.A_regs, p.C_regs   # Access matrices from register blocks
    asm = AsmBlock("Block inner product")

    for ikB in range(kB):    # for each k-block

        asm.include(A.load_register_block(A_regs, right=ikB, units="blocks"))

        for ikb in range(kb):       # inside this k-block
            for inb in range(nb):   # inside this n-block
                asm.include(BcastFma(B.addr(down = ikB*kb+ikb, right = inb),
                                     A_regs[ikb],
                                     C_regs[inb]))

    # Account for remaining columns (which don't fill a block)
    for ikr in range(kr):
        asm.stmt("vmovapd", [A.addr(right = kB*kb+ikr)], A_regs[ikr])

    for ikr in range(kr):
        for inb in range(nb):
                asm.include(fma(B.addr(down = kB*kb+ikr, right = inb),
                                A_regs[ikr],
                                C_regs[inb]))
    return asm




