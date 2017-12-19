
from algorithms.parameters import *
from algorithms.registerblocks import *
from algorithms.matmults import make_gemm, make_microkernel

from cursors.abstractcursor import CursorLocation
from cursors.blockcursor import BlockCursorDef

from codegen.ast import *
from codegen.sugar import *
from codegen.forms import *



def minicursor(name: str, base_ptr: Register, pattern: Matrix[bool]):
    rows, cols = pattern.shape
    cursor = BlockCursorDef(name, base_ptr, rows, cols, rows, cols, Matrix([[0]]), [pattern])
    return cursor


def make(p:Parameters) -> Block:

    Bm = (p.m // p.bm)
    Bn = (p.n // p.bn)
    Bkf = (p.k // p.bk) + (p.k % p.bk != 0)
    A_ptr = p.A.start_location()
    B_ptr = p.B.start_location()
    C_ptr = p.C.start_location()
    jump_reg = r(10)

    asm = block(f"Unrolled FullyGeneralSparse")
    asm.add(jump("END_SWITCH", "jmp"))

    x = 0
    cases = []
    for pattern in p.B.patterns:
        case_label = f"CASE_{x}"
        cases.append(case_label)
        asm.add(label(case_label))
        BB = minicursor(f"block_{x}", p.B.base_ptr, pattern)
        asm.add(make_microkernel(p.A,BB,A_ptr,B_ptr,p.A_regs,p.C_regs))
        asm.add(indirect_jump(jump_reg))
        x += 1

    asm.add(label("END_SWITCH"))

    mask = C_mask_untiled(p.C_regs, p.C, C_ptr, Coords())
    asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, store=False))

    for Bk in range(Bkf):   # For each k-block

        current_block = Coords(Bk,0,absolute=True)
        if (p.B.has_nonzero_block(B_ptr, current_block)):
            block_label = f"BLOCK_{Bk}"
            asm.add(mov(Label(block_label), jump_reg, False))
            move_B_stmt, B_ptr = p.B.move(B_ptr, current_block)
            asm.add(move_B_stmt)
            move_A_stmt, A_ptr = p.A.move(A_ptr, Coords(0,Bk,absolute=True))
            asm.add(move_A_stmt)
            block_index = p.B.blocks[Bk,0]
            asm.add(jump(cases[block_index], "jmp"))
            asm.add(label(block_label))

    asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, store=True))

    return asm


# For now assume m=bm=8, n=bn=8, bk=8, k=1024
# Later expand to use UnrolledSparse instead of SparseMicrokernel
def defaults(nblocks):
    bm = 8
    bn = 8
    bk = 8
    m = 8
    n = 8
    k = bk * nblocks
    nnz = 5
    patterns = [random_pattern(nnz, bk, bn) for i in range(nblocks)]
    blocks = Matrix([[x] for x in range(nblocks)])
    return BlockParameters("GeneralSparse defaults", m, n, k, bm, bn, bk, blocks, patterns)

def random_pattern(nnz, k, n):
    from random import randint, seed
    seed(22)
    urn = [(ri,ci) for ri in range(k) for ci in range(n)]
    samples = [urn.pop(randint(0,len(urn)-1)) for x in range(nnz)]
    pattern = Matrix.full(k,n,False)
    for sample in samples:
        pattern[sample[0], sample[1]] = True
    return pattern


