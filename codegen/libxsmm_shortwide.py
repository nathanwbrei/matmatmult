
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
    instruction_sets: List[str]  # ["avx128", "avx256", "fma", "avx512"]
    vector_width: int
    C_regs: List[List[Register]]
    stream_reg: Register
    bcast_regs: List[Register]
    temp_regs: List[Register]
    scalar_bytes: int = 8
    m_reg: Register = r(12)
    n_reg: Register = r(13)
    k_reg: Register = r(14)
    A_ptr: Register = rdi
    B_ptr: Register = rsi
    C_ptr: Register = rdx

    def A(self):
        return MatrixCursor("A", self.A_ptr, self.m, self.k, self.lda,
                            len(self.C_regs) * self.vector_width,
                            self.k,
                            self.scalar_bytes, self.vector_width)

    def B(self):
        return MatrixCursor("B", self.B_ptr, self.k, self.n, self.ldb,
                            self.k,
                            len(self.C_regs[0]),
                            self.scalar_bytes, self.vector_width)

    def C(self):
        return MatrixCursor("C", self.C_ptr, self.m, self.n, self.ldc,
                            len(self.C_regs) * self.vector_width,
                            len(self.C_regs[0]),
                            self.scalar_bytes, self.vector_width)


snb = Parameters(
    m = 48, n = 9, k = 9, lda = 48, ldb = 9, ldc = 48,
    instruction_sets = ["avx256"],
    vector_width = 4,
    C_regs = [[ymm(7), ymm(10), ymm(13)],
              [ymm(8), ymm(11), ymm(14)],
              [ymm(9), ymm(12), ymm(15)]],
    stream_reg = ymm(3),
    bcast_regs = [ymm(0), ymm(1), ymm(2)],
    temp_regs = [ymm(4), ymm(5), ymm(6)])



def make_gemm(p:Parameters) -> AsmBlock:

    m, n, k, A, B, C = p.m, p.n, p.k, p.A(), p.B(), p.C()
    m_reg, n_reg, C_regs = p.m_reg, p.n_reg, p.C_regs
    m_block, n_block = len(C_regs)*p.vector_width, len(C_regs[0])

    asm = AsmBlock(f"LibXSMM-style {m}x{n}x{k} GEMM using {p.instruction_sets}").body([
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
