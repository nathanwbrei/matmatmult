
import x86_64
import gemm_pieces

def outer_product(A, B, C_regs, k, stream_reg, bcast_regs, temp_regs):
    asm = []
    for x in range(0,k):
        asm.append(statement("bcast", B.addr(right=x), bcast_regs[x]))

    for m in range(0,k):
        asm.append(statement("mov", A.addr(down=m, units="vectors"), stream_reg))

        for n in range(0,k):
            asm.append(statement("mult", [stream_reg, bcast_regs[n]], temp_regs[n]))
            asm.append(statement("add", [temp_reg], C_regs[m][n]))

    return asm


def block_inner_product():
    pass

def make_gemm48x9x9(arch="snb"):
    pass
