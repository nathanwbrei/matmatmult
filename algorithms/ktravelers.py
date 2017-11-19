from codegen.blocks import *
from codegen.cursors import *

from algorithms.mntravelers import *
from algorithms.matmults import *
from algorithms.parameters import *


class KTraveler(AsmBlock):
    """ KTraveler:
        There will exist a Dense version for TiledSparse, a Indexed version which is the
        most likely useful, and a completely Unrolled version which may only be used with
        UnrolledBlockTraversal.
        Some care should be taken to handle all-zero blocks efficiently.
        PIP expects the A,B,C cursors to point at the top of the requisite panels.
        PIP expects a pointer to the current Bni, which it will not modify
        PIP is responsible for loading and storing the C block.
        PIP passes the coords of the next K-block to its corresponding BMM.
        BMMs are either unrolled or indexed to get their 
        PIP resets the A,B,C cursors to the top of the requisite panels before it finishes.
    """
    pass


def make_dummy_ktraveler(p, Bni):
    return AsmBlock(f"For n={Bni}, for all k, do some work").body([
        AsmStatement("noop", [rax], rax)
    ])



def make_kt_loop_dense(p: Parameters, Bni: int, rgemm: MatMult):
    """ Use case: Tiledsparse. Requires:
        Every block has a physical blockstart
        Every block has a constant offset

        In the trickier case, loop_sparse, we will use r13:=Bni*kb and loop over r14:=Bki
           in order to index into B_blocks to get offsets and jump locations.
    """
    asm = AsmBlock("KT loop dense " + p.name)
    # TODO: load C, taking into account the nonzero cols of B
    mov_stmt, lbs = B.tab_abs(0, Bni)
    asm.include(mov_stmt)
    asm.include(loop(r(14), 0, p.Bk, 1).body([
        make_rgemm(p), # A, B, C are already pointing to the start of the correct panel
        A.tab(0,1,iters=p.Bk)[0],
        B.tab(1,0,iters=p.Bk)[0]
    ]))
    # TODO: store C, taking into account the nonzero cols of B
    return asm


def make_kt_unroll(p: Parameters, Bni: int, rgemm: MatMult):
    """ Use case: SparseSparse.
        Requirements: None
        Choices: Move once or move on every block? For now, move on each (prep for jumping version)
    """
    asm = AsmBlock("KT unrolled " + p.name)
    # TODO: load C, taking into account the nonzero cols of B
    for Bki in range(p.Bk):
        if p.B.has_nonzero_block(Bki, Bni):
            mov_stmt, to_logical_blockstart = B.tab_abs(Bki, Bni)
            asm.include(mov_stmt)
            asm.include(rgemm(p)) #TODO: rgemm() interface probably not enough
    # TODO: store C, taking into account the nonzero cols of B
    return asm
