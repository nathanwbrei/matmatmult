
from algorithms.parameters import *
from algorithms.registerblocks import *
from algorithms.matmults import make_gemm

from cursors.abstractcursor import CursorLocation

from codegen.ast import *
from codegen.sugar import *
from codegen.forms import *

from scenarios.seissol_star import full_pattern

# This is going to be a clean rejiggering of tiledsparse which is a sensible
# compromise between the tiledsparse0 and mntravelers imimplementations. It is
# going to use the new coords, new cursors, and new parameters objects.


def make_kt_unroll(p: Parameters,
                   A_ptr: CursorLocation,
                   B_ptr: CursorLocation,
                   C_ptr: CursorLocation,
                   to_B_panel: Coords = Coords()
                  ) -> Block:

    Bkf = (p.k // p.bk) + (p.k % p.bk != 0)
    mask = C_mask(p.C_regs, p.C, C_ptr, Coords(), p.B, B_ptr, to_B_panel, tiled=True)
    asm = block("KT unrolled " + p.name)
    asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, store=False))

    for Bki in range(0, Bkf):
        to_A_block = Coords(right=Bki)
        to_B_block = to_B_panel + Coords(down=Bki)
        if p.B.has_nonzero_block(B_ptr, to_B_block):
            asm.add(make_gemm(p, A_ptr, to_A_block, B_ptr, to_B_block))

    asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, store=True))
    return asm



def make_mn_loop(p:Parameters) -> Block:

    Bm = (p.m // p.bm)
    Bn = (p.n // p.bn)
    A_ptr = p.A.start_location()
    B_ptr = p.B.start_location()
    C_ptr = p.C.start_location()

    asm = block(f"{p.name}, looped over n,m").body(
        loop(r(13), 0, Bn*p.bn, p.bn).body(
            loop(r(12), 0, Bm, 1).body(
                make_kt_unroll(p, A_ptr, B_ptr, C_ptr),
                p.A.move(A_ptr, Coords(down=1))[0],
                p.C.move(C_ptr, Coords(down=1))[0]
            ),
            p.A.move(A_ptr, Coords(down=-Bm))[0],
            p.B.move(B_ptr, Coords(right=1))[0],
            p.C.move(C_ptr, Coords(down=-Bm, right=1))[0]
        )
    )
    if p.B.brf != 0:
        fringe_asm = block(f"Loop over right-hand fringe").body(
            loop(r(12), 0, Bm, 1).body(  # Right-hand fringe. 

                make_kt_unroll(p, A_ptr, B_ptr, C_ptr),
                p.A.move(A_ptr, Coords(down=1))[0],
                p.C.move(C_ptr, Coords(down=1))[0],
            )
        )
        asm.add(fringe_asm)
    return asm


tiled_full = TiledParameters(
    name = "StarTiledFull",
    m = 40, n = 15, k = 9, bm = 8, bn = 15, bk = 9,
    pattern = full_pattern
)

def make(p: Parameters = tiled_full):
    asm = make_mn_loop(p)
    return asm
