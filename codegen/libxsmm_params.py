from blocks import *
from typing import NamedTuple
from matrixcursor import MatrixCursor

class LibxsmmParameters(NamedTuple):
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
        return MatrixCursor("C", self.B_ptr, self.m, self.n, self.ldc,
                            len(self.C_regs) * self.vector_width,
                            len(self.C_regs[0]),
                            self.scalar_bytes, self.vector_width)


snb = LibxsmmParameters(
    m = 48, n = 9, k = 9, lda = 48, ldb = 9, ldc = 48,
    instruction_sets = ["avx256"],
    vector_width = 4,
    C_regs = [[ymm(7), ymm(10), ymm(13)],
              [ymm(8), ymm(11), ymm(14)],
              [ymm(9), ymm(12), ymm(15)]],
    stream_reg = ymm(3),
    bcast_regs = [ymm(0), ymm(1), ymm(2)],
    temp_regs = [ymm(4), ymm(5), ymm(6)])


hsw = LibxsmmParameters(
    m = 48, n = 9, k = 9, lda = 48, ldb = 9, ldc = 48,
    instruction_sets = ["avx256","fma"],
    vector_width = 4,
    C_regs = [[ymm(4), ymm(8), ymm(12)],
              [ymm(5), ymm(9), ymm(13)],
              [ymm(6), ymm(10), ymm(14)],
              [ymm(7), ymm(11), ymm(15)]],
    stream_reg = ymm(3),
    bcast_regs = [ymm(0), ymm(1), ymm(2)],
    temp_regs = [])


