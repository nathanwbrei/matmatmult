
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


knl = Parameters(
    m = 48, n = 9, k = 9,
    lda = 48, ldb = 9, ldc = 48,
    A_regs = [zmm(x) for x in range(9, 27)],  # zmm9..zmm26
    C_regs = [zmm(x) for x in range(0, 8)]    # zmm0..zmm7
    )



def make_gemm(p:Parameters) -> AsmBlock:

    m, n, k = p.m, p.n, p.k   # Number of cells in m,n,k -directions
    mb = 8                    # Number of cells in one m-block
    nb = len(self.C_regs)     # Number of cells in one n-block
    kb = len(self.A_regs)     # Number of cells in one k-block
    kB = k // kb              # Number of complete k-blocks
    kr = k % kb               # Number of remaining cells in k-direction

    A,B,C = p.cursors()                   # Access matrices from memory
    A_regs, C_regs = p.A_regs, p.C_regs   # Access matrices from register blocks
    m_reg, n_reg = r(12), r(13)           # Iteration variables

    asm = AsmBlock(f"LibXSMM short-wide small on KNL for {m}x{n}x{k}").body([
        loop(n_reg, 0, n, n_block).body([
            loop(m_reg, 0, m, m_block).body([
                C.load_register_block(C_regs),
                do_something_wild(p),
                C.store_register_block(C_regs),
                A.move(right=-1, down=1, units="blocks"),
                C.move(down=1, units="blocks")
            ]),
            C.move(down=-m, right=n_block, units="cells"),
            A.move(down=-m, units="cells"),
            B.move(right=1, units="blocks")
        ])
    ])
    return asm

def block_outer_prod(p):


def do_something_wild(p):
    A = p.A()
    return interleave(AsmBlock("Load cols of A into streaming ring buffer").body([
                          AsmBlock().body([
                              AsmStatement("vmovapd", A.addr(right=i, units="vectors"), stream_regs[i]),
                              AsmStatement("vmovapd", A.addr(right=i+1, units="vectors"), st)
                          ])
                          for i in range(0,22)]),

                      AsmBlock("FMA with scalar-broadcasted B").body([
                          AsmBlock().body([
                              AsmStatement("vfmadd231pd",
                                           B.addr(down=j,right=i,units="cells"),
                                           stream_regs[j],
                                           C_regs[0][i])
                              for i in range(22)])
                          for j in range(22)]))
