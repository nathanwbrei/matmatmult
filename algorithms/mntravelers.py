
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
        MNT delegates movement of B cursor to the KT. 
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


def make_mnt_unroll_mn(p:Parameters, ktraveler: KTraveler) -> AsmBlock:

    Bm, Bn = p.m//p.bm, p.n//p.bn
    asm = AsmBlock(f"MNTraveler unrolled over m,n for {p.name}")

    for Bni in range(Bn):
        for Bmi in range(Bm):

            asm.include(ktraveler(p, Bni))

            if Bmi != Bm-1:
                asm.include(p.A.move(Coords(down=1)))
                asm.include(p.C.move(Coords(down=1)))

        if Bni != Bn-1:
            asm.include(p.A.move(Coords(down=0, absolute=True)))
            asm.include(p.C.move(Coords(down=0, right=Bni, absolute=True)))

    return asm


def make_mnt_unroll_n(p:Parameters, ktraveler:KTraveler) -> AsmBlock:

    Bm, Bn = p.m//p.bm, p.n//p.bn
    asm = AsmBlock(f"MNTraveler unrolled over n for {p.name}")
    for Bni in range(Bn):

        asm.include(loop(r(12), 0, Bm, 1).body([

            ktraveler(p, Bni),
            p.A.move(Coords(down=1), iters=Bm),
            p.C.move(Coords(down=1), iters=Bm),
        ]))

        if Bni != Bn-1:
            asm.include(p.A.move(Coords(down=0, absolute=True)))
            asm.include(p.C.move(Coords(down=0, right=Bni, absolute=True)))

    return asm


def make_mnt_loop(p:Parameters, ktraveler:KTraveler) -> AsmBlock:

    Bm, Bn = p.m//p.bm, p.n//p.bn
    asm = AsmBlock(f"MNTraveler looped for {p.name}").body([
        loop(r(13), 0, Bn*p.bn, p.bn).body([
            loop(r(12), 0, Bm, 1).body([

                ktraveler(p, "Get_from_registers"),
                p.A.move(Coords(down=1), iters=Bm),
                p.C.move(Coords(down=1), iters=Bm),
                # TODO: Might be able to achieve A,C moves simultaneously with
                # loop updates by using scale-index addressing.
            ]),
            p.A.move(Coords(down=-Bm), iters=Bn),
            p.C.move(Coords(down=-Bm, right=1), iters=Bn),
        ])
    ])
    return asm









