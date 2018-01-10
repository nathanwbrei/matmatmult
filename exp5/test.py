
from codegen import *
from cursors.abstractcursor import CursorLocation
from algorithms.matmults import make_microkernel
from exp5.exp5 import defaults
from exp5.algs import minicursor



def test() -> Block:
    p = defaults()
    pattern = p.B.patterns[1]

    A_ptr = p.A.start_location()
    B_ptr = p.B.start_location()
    C_ptr = p.C.start_location()

    BB = minicursor(f"testtt", p.B.base_ptr, pattern)
    B_ptr = BB.start_location()
    print(f"Making microkernel for {BB.get_block(B_ptr, Coords())}")

    to_block = Coords()
    to_cell = Coords(down=0, right=4)
    if BB.has_nonzero_cell(B_ptr, to_block, to_cell):
        print("Has nonzero!")
        dest_loc = CursorLocation(to_block, to_cell)
        result = BB.offset(B_ptr, dest_loc)
        #result = BB.look(B_ptr, to_block, to_cell)
        print (f"Result = {result}")

    return make_microkernel(p.A,BB,A_ptr,B_ptr,p.A_regs,p.C_regs)

