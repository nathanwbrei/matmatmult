from codegen.blocks import *
from codegen.cursors import *


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


def dummy_ktraveler(p, Bni):
    return AsmBlock(f"For n={Bni}, for all k, do some work").body([
        AsmStatement("noop", [rax], rax)
    ])

def denseKTraveler(A_cursor: Cursor,
                   B_cursor: Cursor,
                   C_cursor: Cursor,
                   C_regs: Matrix
                  ) -> KTraveler:
    # Needs: Single KTraveler
    # For block in cursor.tab()
    # Move B cursor to start of block
    # Insert matmult in loop (don't call)

    C_mask = emptycols(C_regs, p.pattern) # Mask unnecessary loads/stores
    load_register_block(C, C_regs, C_mask),
    block_inner_prod(p),
    store_register_block(C, C_regs, C_mask),

    A.move(down1block, iters=m//mb),
    C.move(down1block, iters=m//mb),


def unrolledDenseKTraveler(A_cursor: Cursor,
                           B_cursor: Cursor,
                           C_cursor: Cursor,
                           I_cursor: Cursor,
                           C_regs: Matrix,
                           block_ptrs: Matrix,
                           # block_ptr: Register,
                          ) -> KTraveler:
    # Needs: KTraveler generator over cursors
    # For block in cursor.tab()
    # Generate multiple matmults with different offsets given by loop
    pass

def indexedKTraveler(A_cursor: Cursor,
                     B_cursor: Cursor,
                     C_cursor: Cursor,
                     I_cursor: Cursor,
                     C_regs: Matrix,
                    ) -> KTraveler:
    # Inside asmloop:
    # Look up function ptr
    # Push return address to register somewhere
    # Jump to func ptr
    # Look up offset
    # Move B
    # Move index
    pass


def unrolledIndexedKTraveler(A_cursor: Cursor,
                             B_cursor: Cursor,
                             C_cursor: Cursor,
                             I_cursor: Cursor,
                             C_regs: Matrix,
                            ) -> KTraveler:
    # Inside asmloop:
    # Look up function ptr
    # Push return address to register somewhere
    # Jump to func ptr
    # Look up offset
    # Move B
    # Move index
    pass

class MatMult(AsmBlock):
    """ BlockMatMult performs the actual multiplication of two blocks.
        This will probably always be completely unrolled.
        BlockMatMult is responsible for loading and unloading the A block,
        It does not assume that the A or B cursors point to the start of the block.
        Instead, the coordinates to the start of the block are passed separately.
        It does not update any of the cursors.
    """
    pass




