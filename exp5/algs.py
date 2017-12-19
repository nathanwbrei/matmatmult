
from algorithms.parameters import *
from algorithms.registerblocks import *
from algorithms.matmults import make_gemm

from cursors.abstractcursor import CursorLocation

from codegen.ast import *
from codegen.sugar import *
from codegen.forms import *


def make_kt_unroll(p: Parameters,
                   A_ptr: CursorLocation,
                   B_ptr: CursorLocation,
                   C_ptr: CursorLocation,
                   to_B_panel: Coords = Coords()
                  ) -> Block:

    Bkf = (p.k // p.bk) + (p.k % p.bk != 0)
    mask = C_mask(p.C_regs, p.C, C_ptr, Coords(), p.B, B_ptr, to_B_panel, tiled=False)
    asm = block("KT unrolled " + p.name)
    asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, store=False))

    for Bki in range(0, Bkf):
        to_A_block = Coords(right=Bki)
        to_B_block = to_B_panel + Coords(down=Bki)
        if p.B.has_nonzero_block(B_ptr, to_B_block):
            asm.add(make_gemm(p, A_ptr, to_A_block, B_ptr, to_B_block))

    asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, store=True))
    return asm


# For now assume m=bm=8, n=bn=8, bk=8, k=1024
# Later expand to use UnrolledSparse instead of SparseMicrokernel

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
        asm.add(block("Gemm goes here"))
        #asm.add(make_gemm(p, A_ptr, to_A_block, B_ptr, to_B_block))
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


def defaults(nblocks):
    bm = 8
    bn = 8
    bk = 8
    m = 8
    n = 8
    k = bk * nblocks
    nnz = 30
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

def subcursor():
    pass

