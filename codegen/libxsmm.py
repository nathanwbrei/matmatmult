
from blocks import *
from loop import *
from matrixcursor import *


# TODO: Specialize for different architectures
# TODO: Think more carefully about k
def reg_outer_product(A, B, C_regs, k, stream_reg, bcast_regs, temp_regs):

    w = len(bcast_regs)
    asm = AsmBlock(f"Unrolled {w}x{w} outer product at k={k}")

    for x in range(0,w):
        asm.stmt("vbroadcastsd", B.addr(down=k,right=x), bcast_regs[x])

    for m in range(0,w):
        asm.stmt("vmovapd", A.addr(down=m, units="vectors"), stream_reg)
        if (m == w-1):
            asm.include(A.move(right=1))  # Put here only to be consistent with libxsmm

        for n in range(0,w):
            asm.stmt("vmulpd", stream_reg, bcast_regs[n], temp_regs[m])
            asm.stmt("vaddpd", temp_regs[m], C_regs[m][n], C_regs[m][n])

    return asm


def unrolled_inner_product(A, B, C_regs, K, stream_reg, bcast_regs, temp_regs ):
    asm = AsmBlock("Unrolled inner product")
    for k in range(K):
        asm.block.append(reg_outer_product(A,B,C_regs,k,stream_reg,bcast_regs,temp_regs))
    return asm

def gemm(M,N,K):

    A = MatrixCursor("A", rdi, 48, 9, 48, 12, 9, 8, 4)
    B = MatrixCursor("B", rsi, 9, 9, 9, 9, 3, 8, 4)
    C = MatrixCursor("C", rdx, 48, 9, 48, 12, 3, 8, 4)

    C_regs = [[ymm(7), ymm(10), ymm(13)],
              [ymm(8), ymm(11), ymm(14)],
              [ymm(9), ymm(12), ymm(15)]]

    stream_reg = ymm(3)
    bcast_regs = [ymm(0), ymm(1), ymm(2)]
    temp_regs = [ymm(4), ymm(5), ymm(6)]

    m_reg,n_reg,k_reg = r(12),r(13),r(14)

    asm = AsmBlock("LibXSMM-style 48x9x9 GEMM on SandyBridge").body([
        loop(n_reg, 0, N, 3).body([
            loop(m_reg, 0, M, 12).body([
                C.load_register_block(C_regs),
                unrolled_inner_product(A,B,C_regs,K,stream_reg,bcast_regs,temp_regs),
                C.store_register_block(C_regs),

                A.move(right=-1, down=1, units="blocks"),
                C.move(down=1, units="blocks")
            ]),
            A.move(down=-4, units="blocks"), #TODO: A.reset() is probably a bad idea entirely
            B.move(right=1, units="blocks"),
            C.move(down=-4, right=1, units="blocks")
        ])
    ])
    return asm



