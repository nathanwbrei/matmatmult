
from codegen.blocks import *
from codegen.loop import *
from codegen.cursors import *
from codegen.registerblocks import *

from scipy import matrix as Matrix, full
from typing import Tuple, NamedTuple

class Parameters(NamedTuple):
    description: str
    m: int
    n: int
    k: int
    lda: int
    ldc: int
    A_regs: Matrix  # Matrix[Register]
    C_regs: Matrix  # Matrix[Register]
    pattern: Matrix # Matrix[bool]
    pattern_update: Tuple[int,int] = None

    def cursors(self):
        nb = len(self.C_regs)
        kb = len(self.A_regs)
        A = DenseCursor("A", rdi, self.m, self.k, self.lda, 8, kb)
        B = TiledCursor("B", rsi, self.k, self.n, self.pattern)
        C = DenseCursor("C", rdx, self.m, self.n, self.ldc, mb, nb)
        return (A,B,C)


defaults = Parameters(
    description = "defaults",
    m = 48, n = 9, k = 9,
    lda = 48, ldc = 48,
    A_regs = Matrix([zmm(x) for x in range(0, 8)]),     # zmm0..zmm7
    C_regs = Matrix([zmm(x) for x in range(23, 32)]),   # zmm23..zmm31
    pattern = Matrix(full((1,9), True, dtype=bool))     # Constrained st cols=nb=len(C_regs)
    )


def make_gemm(p:Parameters) -> AsmBlock:

    m, n, k = p.m, p.n, p.k   # Number of cells in m,n,k -directions
    mb = 8                    # Number of cells in one m-block
    nb = len(p.C_regs)        # Number of cells in one n-block

    A,B,C = p.cursors()                   # Access matrices from memory
    A_regs, C_regs = p.A_regs, p.C_regs   # Access matrices from register blocks
    m_reg, n_reg = r(12), r(13)           # Iteration variables

    C_mask = emptycols(C_regs, p.pattern) # Mask unnecessary loads/stores

    asm = AsmBlock(f"LibXSMM short-wide small on KNL for {m}x{n}x{k}").body([
        loop(n_reg, 0, n, nb).body([
            loop(m_reg, 0, m, mb).body([

                load_register_block(C, C_regs, C_mask),
                block_inner_prod(p),
                store_register_block(C, C_regs, C_mask),

                A.move(down=1, units="blocks"),  # TODO: Use tab() instead
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
    nb = len(p.C_regs)        # Number of cells in one n-block
    kb = len(p.A_regs)        # Number of cells in one k-block
    kB = k // kb              # Number of complete k-blocks
    kr = k % kb               # Number of remaining cells in k-direction

    A,B,C = p.cursors()                   # Access matrices from memory
    A_regs, C_regs = p.A_regs, p.C_regs   # Access matrices from register blocks
    A_mask = emptyrows(A_regs, p.pattern) # Avoid unnecessary load/stores
    A_mask_partial = A_mask & submatrix(A_regs, rows=1, cols=kr)  #TODO: Handle 2d case

    asm = AsmBlock("Block inner product")

    for ikB in range(kB):    # for each k-block

        block_disp = Coords(right=ikB, units="blocks")
        asm.include(load_register_block(A, A_regs, A_mask, block_disp))

        for ikb in range(kb):       # inside this k-block
            for inb in range(nb):   # inside this n-block
                if B.has_nonzero_cell(ikB*kb+ikb, inb):
                    asm.include(BcastFma(B.look(down = ikB*kb+ikb, right = inb),
                                         A_regs[ikb],
                                         C_regs[inb]))

    # Account for remaining columns (which don't fill a block)
    asm.include(load_register_block(A, A_regs, A_mask_partial,
                                    Coords(right=kB, units="blocks")))

    for ikr in range(kr):
        for inb in range(nb):
            if B.has_entry(kB*kb+ikr, inb):
                asm.include(BcastFma(B.look(down = kB*kb+ikr, right = inb),
                                     A_regs[ikr],
                                     C_regs[inb]))
    return asm




print(make_gemm(defaults).gen(syntax=Syntax.pretty))
