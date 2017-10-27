
from blocks import *
from loop import *
from matrixcursor import *
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
    sparsity_pattern: List[List[bool]] = [[True,True,True],
                                          [True,True,True],
                                          [True,True,True]]

    def A(self):
        return MatrixCursor("A", self.A_ptr, self.m, self.k, self.lda,
                            len(self.C_regs) * self.vector_width,
                            self.k,
                            self.scalar_bytes, self.vector_width)

    def B(self):
        return SparseMatrixCursor("B", self.B_ptr, self.k, self.n,
                                  self.sparsity_pattern,
                                  self.scalar_bytes)

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


hsw = Parameters(
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


def make_gemm(p:Parameters) -> AsmBlock:

    m, n, k, A, B, C = p.m, p.n, p.k, p.A(), p.B(), p.C()
    m_reg, n_reg, C_regs = p.m_reg, p.n_reg, p.C_regs
    m_block, n_block = len(C_regs)*p.vector_width, len(C_regs[0])

    asm = AsmBlock(f"LibXSMM-style {m}x{n}x{k} GEMM using {p.instruction_sets}").body([
        loop(n_reg, 0, n, n_block).body([
            loop(m_reg, 0, m, m_block).body([
                C.load_register_block(C_regs),
                unroll(make_outer_product, range(k), p),
                C.store_register_block(C_regs),
                C.move(down=1, units="blocks"),
                A.move(right=-1, down=1, units="blocks")
            ]),
            C.move(down=-m, right=n_block, units="cells"),
            B.move(right=1, units="blocks"),
            A.move(down=-m, units="cells")
        ])
    ])
    return asm






def make_outer_product(x:int, p:Parameters) -> AsmBlock:

    A, B, C, C_regs = p.A(), p.B(), p.C(), p.C_regs
    bcast_regs, temp_regs, stream_reg = p.bcast_regs, p.temp_regs, p.stream_reg
    pattern = p.sparsity_pattern
    pattern_rows = len(pattern)  # Pattern cols must be equal to block cols
                                 # Pattern rows may be anything > 0

    block_rows = len(C_regs)
    block_cols = len(bcast_regs)
    asm = AsmBlock(f"{block_rows}x{block_cols} outer product at x={x}")

    if sum(pattern[x % pattern_rows]) == 0:
        # Entire row of B block is zero. Do nothing.
        return asm

    for j in range(0, block_cols):
        if pattern[x % pattern_rows][j]:
            asm.stmt("vbroadcastsd", B.addr(down=x,right=j), bcast_regs[j])

    for i in range(0, block_rows):
        asm.stmt("vmovapd", A.addr(down=i, units="vectors"), stream_reg)
        if i == block_rows-1:
            asm.include(A.move(right=1))  # Put here only to be consistent with libxsmm

        for j in range(0, block_cols):
            if pattern[x % pattern_rows][j]:
                if "fma" in p.instruction_sets:
                    asm.stmt("vfmadd231pd", stream_reg, bcast_regs[j], C_regs[i][j])
                else:
                    asm.stmt("vmulpd", stream_reg, bcast_regs[j], temp_regs[i])
                    asm.stmt("vaddpd", temp_regs[i], C_regs[i][j], C_regs[i][j])

    return asm


