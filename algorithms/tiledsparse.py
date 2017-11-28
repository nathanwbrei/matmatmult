
from algorithms.parameters import *
from algorithms.registerblocks import *
from algorithms.matmults import MatMult

from codegen.ast import *
from codegen.sugar import *
from scenarios.seissol_star import full_pattern

# This is going to be a clean rejiggering of tiledsparse which is a sensible
# compromise between the tiledsparse0 and mntravelers imimplementations. It is
# going to use the new coords, new cursors, and new parameters objects.


def make_kt_unroll(p: Parameters, Bni: int) -> Block:
    """ Use case: SparseSparse.
        Requirements: None
        Choices: Move once or move on every block? For now, move on each (prep for jumping version)
    """
    if Bni is None:  # This means that the mnt is a loop and doesn't know its Bni
        to_B_panel = Coords(absolute=False)
    else:
        to_B_panel = Coords(right=Bni, absolute=True)

    Bk = (p.k // p.bk) + (p.k % p.bk != 0)
    asm = block("KT unrolled " + p.name,
                load_register_block(p.C, p.C_regs, C_mask(p.C_regs, p.C, p.B)))

    for Bki in range(0,Bk):
        to_block = to_B_panel + Coords(down=Bki)
        if p.B.has_nonzero_block(to_block):
            asm.add(MatMult(p, to_A=Coords(right=Bki), to_B=to_block))

    asm.add(store_register_block(p.C, p.C_regs, C_mask(p.C_regs, p.C, p.B)))
    return asm



def make_mnt_loop(p:Parameters, make_ktraveler, outer_regular=True) -> Block:

    Bm = (p.m // p.bm)
    Bn = (p.n // p.bn)
    if outer_regular:
        move_B = block("Moving B, because it is outer-regular and we are looped.")
        move_B.add(p.B.move(Coords(right=1), iters=1)),
    else:
        move_B = block("Not moving B, because it is outer-regular, so kt has to do a lookup")

    # Undo the state change on B cursor
    #p.B.reset()

    asm = block(f"MNTraveler looped for {p.name}").body(
        loop(r(13), 0, Bn*p.bn, p.bn).body(
            loop(r(12), 0, Bm, 1).body(

                make_ktraveler(p, None),
                p.A.move(Coords(down=1), iters=Bm),
                p.C.move(Coords(down=1), iters=Bm),
                # TODO: Might be able to achieve A,C moves simultaneously with
                # loop updates by using scale-index addressing.
            ),
            p.A.move(Coords(down=-Bm)),
            p.C.move(Coords(down=-Bm, right=1)),
            move_B
        )
    )
    if p.B.bottom_fringe:
        fringe_asm = block(f"Loop over right-hand fringe").body(
            loop(r(12), 0, Bm, 1).body(  # Right-hand fringe. #TODO: Cursors need to be set correctly.

                make_ktraveler(p, None),
                p.A.move(Coords(down=1), iters=Bm),
                p.C.move(Coords(down=1), iters=Bm),
            )
        )
        asm.add(fringe_asm)
    return asm


tiled_full = TiledParameters(
    name = "StarTiledFull",
    m = 40,
    n = 15,
    k = 9,
    A_regs = Matrix([[zmm(i) for i in range(32-9, 32)]]),
    C_regs = Matrix([[zmm(i) for i in range(15)]]),
    pattern = full_pattern
)

def make(p: Parameters = tiled_full):
    asm = make_mnt_loop(p, make_kt_unroll)
    return asm
