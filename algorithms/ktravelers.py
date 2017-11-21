from codegen.blocks import *
from codegen.cursors import *
from codegen.loop import *

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


def make_dummy_ktraveler(p, Bni: int):
    return AsmBlock(f"For n={Bni}, for all k, do some work").body([
        AsmStatement("noop", [rax], rax)
    ])



def make_kt_loop_dense(p: Parameters, Bni: int) -> AsmBlock:
    """ Use case: Tiledsparse. Requires:
        Every block has a physical blockstart
        Every block has a constant offset
        Because this is outer-regular, we assume that the B cursor points to the top of the panel

        In the trickier case, loop_sparse, we will use r13:=Bni*kb and loop over r14:=Bki
           in order to index into B_blocks to get offsets and jump locations.
    """
    #TODO: What about Bni?
    Bk = (p.k//p.bk) + (p.k%p.bk != 0)
    asm = AsmBlock("KT loop dense " + p.name)
    # TODO: load C, taking into account the nonzero cols of B
    # asm.include(p.B.move(to_B_block)) # This is done by mntraveler in regular case
    asm.include(loop(r(14), 0, Bk, 1).body([
        MatMult(p), # A, B, C are already pointing to the start of the correct panel
        p.A.move(Coords(right=1), iters=Bk),
        p.B.move(Coords(down=1), iters=Bk)
    ]))
    # TODO: store C, taking into account the nonzero cols of B
    return asm


def make_kt_unroll(p: Parameters, Bni: int) -> AsmBlock:
    """ Use case: SparseSparse.
        Requirements: None
        Choices: Move once or move on every block? For now, move on each (prep for jumping version)
    """
    if Bni is None:  # This means that the mnt is a loop and doesn't know its Bni
        to_B_panel = Coords(absolute=False)
    else:
        to_B_panel = Coords(right=Bni, absolute=True)

    Bk = (p.k // p.bk) + (p.k % p.bk != 0)
    asm = AsmBlock("KT unrolled " + p.name)
    # TODO: load C, taking into account the nonzero cols of B
    for Bki in range(0,Bk):
        to_block = to_B_panel + Coords(down=Bki)
        if p.B.has_nonzero_block(to_block):
            asm.include(p.B.move(to_block))
            asm.include(MatMult(p))
    # TODO: store C, taking into account the nonzero cols of B
    return asm




