
from blocks import *
from loop import *
from matrixcursor import *
from libxsmm_params import *


def make_outer_product(x:int, p:LibxsmmParameters) -> AsmBlock:

    A, B, C, C_regs = p.A(), p.B(), p.C(), p.C_regs
    bcast_regs, temp_regs, stream_reg = p.bcast_regs, p.temp_regs, p.stream_reg

    w = len(bcast_regs)
    asm = AsmBlock(f"{w}x{w} outer product at x={x}")

    for j in range(0,w):
        asm.stmt("vbroadcastsd", B.addr(down=x,right=j), bcast_regs[j])

    for i in range(0,w):
        asm.stmt("vmovapd", A.addr(down=i, units="vectors"), stream_reg)
        if (i == w-1):
            asm.include(A.move(right=1))  # Put here only to be consistent with libxsmm

        for j in range(0,w):
            asm.stmt("vmulpd", stream_reg, bcast_regs[j], temp_regs[i])
            asm.stmt("vaddpd", temp_regs[i], C_regs[i][j], C_regs[i][j])

    return asm



def make_gemm(p:LibxsmmParameters) -> AsmBlock:

    m, n, k, A, B, C = p.m, p.n, p.k, p.A(), p.B(), p.C()
    m_reg, n_reg, C_regs = p.m_reg, p.n_reg, p.C_regs

    asm = AsmBlock("LibXSMM-style 48x9x9 GEMM on SandyBridge").body([
        loop(n_reg, 0, n, 3).body([
            loop(m_reg, 0, m, 12).body([
                C.load_register_block(C_regs),
                unroll(make_outer_product, range(k), p),
                C.store_register_block(C_regs),
                A.move(right=-1, down=1, units="blocks"),
                C.move(down=1, units="blocks")
            ]),
            A.move(down=-4, units="blocks"),
            B.move(right=1, units="blocks"),
            C.move(down=-4, right=1, units="blocks")
        ])
    ])
    return asm



