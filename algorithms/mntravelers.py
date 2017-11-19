from scipy import matrix

from algorithms.ktravelers import KTraveler
from algorithms.parameters import Parameters

from codegen.blocks import *
from codegen.cursors import *
from codegen.loop import *


class MNTraveler(AsmBlock):
    """ MNTraveler is responsible for visiting successive blocks of C.
        There should be a looped version and possibly a partially unrolled version,
        though the latter is not a priority.
        The iteration variables index into a lookup table to retrieve the B panel offsets.
        MNT moves the A,C cursors to the start of their panel before calling PIP.
    """
    """ PanelInnerProduct
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
    """ BlockMatMult performs the actual multiplication of two blocks.
        This will probably always be completely unrolled.
        BlockMatMult is responsible for loading and unloading the A block,
        It does not assume that the A or B cursors point to the start of the block.
        Instead, the coordinates to the start of the block are passed separately.
        It does not update any of the cursors.
    """


down1block = Coords(down=1,units="blocks")



def make_mnt_unroll_mn(p:Parameters, ktraveler: KTraveler) -> MNTraveler:

    asm = AsmBlock(f"MNTraveler unrolled over m,n for {p.name}")
    for Bni in range(p.Bn):
        for Bmi in range(p.Bm):

            asm.include(ktraveler(p, Bni))

            if Bmi != p.Bm-1:
                asm.include(p.A.move(down1block))
                asm.include(p.C.move(down1block))

        if Bni != p.Bn-1:
            asm.include(p.A.move(Coords(down=1-p.Bm, units="blocks")))
            asm.include(p.B.tab(0,1)[0])
            asm.include(p.C.move(Coords(down=1-p.Bm, right=1, units="blocks")))

    return asm


def make_mnt_unroll_n(p:Parameters, ktraveler:KTraveler) -> MNTraveler:

    asm = AsmBlock(f"MNTraveler unrolled over n for {p.name}")
    for Bni in range(p.Bn):

        asm.include(loop(r(12), 0, p.Bm, 1).body([

            ktraveler(p, Bni),
            p.A.move(down1block, iters=p.Bm),
            p.C.move(down1block, iters=p.Bm),
        ]))

        if Bni != p.Bn-1:
            asm.include(p.A.move(Coords(down=-p.Bm, units="blocks")))
            # asm.include(p.B.tab(0,1)[0]) Let ktraveler do the movement
            asm.include(p.C.move(Coords(down=-p.Bm, right=1, units="blocks")))

    return asm


def make_mnt_loop(p:Parameters, ktraveler:KTraveler) -> MNTraveler:

    asm = AsmBlock(f"MNTraveler looped for {p.name}").body([
        loop(r(13), 0, p.Bn, 1).body([
            loop(r(12), 0, p.Bm, 1).body([

                ktraveler(p, "Get_from_registers"),
                p.A.move(down1block, iters=p.Bm),
                p.C.move(down1block, iters=p.Bm),
                # TODO: Might be able to achieve A,C moves simultaneously with
                # loop updates by using scale-index addressing.
            ]),
            p.A.move(Coords(down=-p.Bm, units="blocks"), iters=p.Bn),
            #B.move(Coords(right=1, units="blocks"), iters=Bn),
            p.C.move(Coords(down=-p.Bm, right=1, units="blocks"), iters=p.Bn),
        ])
    ])
    return asm









