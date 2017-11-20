
from codegen.blocks import *
from codegen.loop import *
from codegen.cursors import *
from algorithms.registerblocks import *

from scipy import matrix as Matrix, full
from typing import Tuple, NamedTuple
from algorithms.parameters import Parameters

defaults = Parameters.from_tiledsparse(
    name = "defaults",
    m = 48, n = 9, k = 9,
    A_regs = Matrix([[zmm(x) for x in range(0, 8)]]),     # zmm0..zmm7
    C_regs = Matrix([[zmm(x) for x in range(23, 32)]]),   # zmm23..zmm31
    pattern = Matrix(full((8,9), True, dtype=bool))     # Constrained st cols=nb=len(C_regs)
    )


def make_gemm(p:Parameters) -> AsmBlock:

    m,n,k = p.C.r,p.C.c,p.A.c # Number of cells in m,n,k -directions
    mb = 8                    # Number of cells in one m-block
    nb = len(p.C_regs)        # Number of cells in one n-block

    A,B,C = p.A, p.B, p.C
    A_regs, C_regs = p.A_regs, p.C_regs   # Access matrices from register blocks
    m_reg, n_reg = r(12), r(13)           # Iteration variables

    C_mask = emptycols(C_regs, p.pattern) # Mask unnecessary loads/stores

    asm = AsmBlock(f"LibXSMM short-wide small on KNL for {m}x{n}x{k}").body([
        loop(n_reg, 0, n, nb).body([
            loop(m_reg, 0, m, mb).body([

                load_register_block(C, C_regs, C_mask),
                block_inner_prod(p),
                store_register_block(C, C_regs, C_mask),

                A.move(down1block, iters=m//mb),
                C.move(down1block, iters=m//mb),
            ]),
            A.move(Coords(down=-m, units="cells")),
            B.move(Coords(right=1, units="blocks"), iters=n//nb),
            C.move(Coords(down=-m, right=nb, units="cells")),
        ])
    ])
    return asm


def block_inner_prod(p):

    m, n, k = p.C.r, p.C.c, p.A.c   # Number of cells in m,n,k -directions
    mb = 8                    # Number of cells in one m-block
    nb = p.C_regs.shape[1]    # Number of cells in one n-block
    kb = p.A_regs.shape[1]    # Number of cells in one k-block
    kB = k // kb              # Number of complete k-blocks
    kr = k % kb               # Number of remaining cells in k-direction

    A,B,C = p.A, p.B, p.C                 # Access matrices from memory
    A_regs, C_regs = p.A_regs, p.C_regs   # Access matrices from register blocks
    A_mask = emptyrows(A_regs, p.pattern) # Avoid unnecessary load/stores
    A_mask_partial = A_mask & submatrix(A_regs, rows=1, cols=kr)  #TODO: Handle 2d case

    asm = AsmBlock("Block inner product")

    for ikB in range(kB):    # for each k-block

        to_A_block = Coords(right=ikB, units="blocks")
        to_B_block = Coords(down=ikB, units="blocks")
        asm.include(load_register_block(A, A_regs, A_mask, to_A_block))

        for ikb in range(kb):       # inside this k-block
            for inb in range(nb):   # inside this n-block
                to_cell = to_B_block + Coords(down=ikb, right=inb)
                if B.has_nonzero_cell(to_cell):
                    B_cell, comment = B.look(to_cell)
                    asm.include(BcastFma(B_cell, A_regs[0,ikb], C_regs[0,inb], comment=comment))

    # Account for remaining columns (which don't fill a block)
    asm.include(load_register_block(A, A_regs, A_mask_partial,
                                    Coords(right=kB, units="blocks")))

    for ikr in range(kr):
        for inb in range(nb):
            to_fringe_cell = Coords(down=kB*kb+ikr, right=inb)
            if B.has_nonzero_cell(to_fringe_cell):
                B_cell, comment = B.look(to_fringe_cell)
                asm.include(BcastFma(B_cell, A_regs[0,ikr], C_regs[0,inb], comment=comment))
    return asm



default_alg = make_gemm(defaults)
print(default_alg.gen(pretty))
