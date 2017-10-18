
import blocks

def outer_product(A, B, C_regs, k, stream_reg, bcast_regs, temp_regs):
    asm = AsmBlock("Fully unrolled k x k outer product")
    for x in range(0,k):
        asm.stmt("vbroadcastsd", B.addr(right=x), bcast_regs[x])

    for m in range(0,k):
        asm.stmt("vmovapd", A.addr(down=m, units="vectors"), stream_reg)

        for n in range(0,k):
            asm.stmt("vmulpd", [stream_reg, bcast_regs[n]], temp_regs[n])
            asm.stmt("vaddpd", [temp_reg], C_regs[m][n])

    return asm


def block_inner_product():
    pass

def gemm(m,n,k):

    A = MatrixCursor(rdi)
    B = MatrixCursor(rsi)
    C = MatrixCursor(rdx)

    Cb = [[ymm(7), ymm(10), ymm(13)],
          [ymm(8), ymm(11), ymm(14)],
          [ymm(9), ymm(12), ymm(15)]]

    stream_reg = ymm(3)
    bcast_regs = [ymm(0), ymm(1), ymm(2)]
    temp_regs = [ymm(4), ymm(5), ymm(6)]

    mb = 12
    nb = 3
    kb = 3

    
    # Asm loop over j
       # Asm loop over i
          

    


