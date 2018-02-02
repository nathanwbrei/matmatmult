from parameters import Parameters
from codegen import *

def choose_params(params: Parameters) -> Parameters:
    print("dxsp_unrolled.choose_params")
    return params

def make_alg(params: Parameters) -> Block:
    print("dxsp_unrolled.make_alg")
    return make_mnt_loop(params, make_kt_unroll, outer_regular=False)



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
    asm = BlockBuilder("KT unrolled " + p.name)
    asm.include(load_register_block(p.C, p.C_regs, C_mask(p.C_regs, p.C, p.B)))

    for Bki in range(0,Bk):
        to_block = to_B_panel + Coords(down=Bki)
        if p.B.has_nonzero_block(to_block):
            asm.include(MatMult(p, to_A=Coords(right=Bki), to_B=to_block))

    asm.include(store_register_block(p.C, p.C_regs, C_mask(p.C_regs, p.C, p.B)))
    return asm





def make_mnt_loop(p:Parameters, make_ktraveler, outer_regular=True) -> Block:

    Bm = (p.m // p.bm)
    Bn = (p.n // p.bn)
    if outer_regular:
        move_B = BlockBuilder("Moving B, because it is outer-regular and we are looped.")
        move_B.include(p.B.move(Coords(right=1), iters=1)),
    else:
        move_B = BlockBuilder("Not moving B, because it is outer-regular, so kt has to do a lookup")

    # Undo the state change on B cursor
    p.B.reset()

    asm = BlockBuilder(f"MNTraveler looped for {p.name}").body([
        loop(r(13), 0, Bn*p.bn, p.bn).body([
            loop(r(12), 0, Bm, 1).body([

                make_ktraveler(p, None),
                p.A.move(Coords(down=1), iters=Bm),
                p.C.move(Coords(down=1), iters=Bm),
                # TODO: Might be able to achieve A,C moves simultaneously with
                # loop updates by using scale-index addressing.
            ]),
            p.A.move(Coords(down=-Bm)),
            p.C.move(Coords(down=-Bm, right=1)),
            move_B
        ])
    ])
    print(f"A is pointing at {p.A._src_block}")
    print(f"B is pointing at {p.B._src_block}")
    print(f"C is pointing at {p.C._src_block}")

    if p.B.bottom_fringe:
        fringe_asm = BlockBuilder(f"Loop over right-hand fringe").body([
            loop(r(12), 0, Bm, 1).body([  # Right-hand fringe. #TODO: Cursors need to be set correctly.

                make_ktraveler(p, None),
                p.A.move(Coords(down=1), iters=Bm),
                p.C.move(Coords(down=1), iters=Bm),
            ])
        ])
        asm.include(fringe_asm)
    return asm


