
from codegen.coords import Coords
from codegen.sugar import *
from codegen.matrix import *

from cursors.abstractcursor import *


def move_register_block(cursor: CursorDef,
                        cursor_ptr: CursorLocation,
                        block_offset: Coords,
                        registers: Matrix[Register],
                        mask: Matrix[bool] = None,
                        store: bool = False
                       ) -> Block:

    rows, cols = registers.shape
    action = "Store" if store else "Load"
    asm = block(f"{action} {cursor.name} register block @ {block_offset}")

    for ic in range(cols):
        for ir in range(rows):
            if (mask is None) or (mask[ir,ic]):
                cell_offset = Coords(down=ir*8, right=ic)
                addr, comment = cursor.look(cursor_ptr, block_offset, cell_offset)
                if store:
                    asm.add(mov(registers[ir,ic], addr, True, comment))
                else:
                    asm.add(mov(addr, registers[ir,ic], True, comment))
    return asm


def C_mask(C_regs: Matrix[Register],
           C: CursorDef,
           C_ptr: CursorLocation,
           C_block_offset: Coords,
           B: CursorDef,
           B_ptr: CursorLocation,
           B_block_offset: Coords,
           tiled: bool = True
          ) -> Matrix[bool]:

    Vr, Vc = C_regs.shape
    mask = Matrix.full(Vr, Vc, False)
    C_br, C_bc, C_idx, C_pat = C.get_block(C_ptr, C_block_offset)
    B_br, B_bc, B_idx, B_pat = B.get_block(B_ptr, B_block_offset)

    assert(Vr*8 == C_br)   # bm must tile m exactly for now
    assert(Vc >= C_bc)     # Matrix block must fit in register block
    assert(C_bc == B_bc)   # Matrix blocks are compatible

    # Mask out registers not used in current block, including zero-cols of B
    if tiled:
        for Vci in range(C_bc):
            if B_pat[:,Vci].any(axis=0):
                mask[:,Vci] = True
    else:
        mask[:, :C_bc] = True


    return mask


def C_mask_untiled(C_regs: Matrix[Register],
           C: CursorDef,
           C_ptr: CursorLocation,
           C_block_offset: Coords,
          ) -> Matrix[bool]:

    Vr, Vc = C_regs.shape
    mask = Matrix.full(Vr, Vc, False)
    C_br, C_bc, C_idx, C_pat = C.get_block(C_ptr, C_block_offset)

    assert(Vr*8 == C_br)   # bm must tile m exactly for now
    assert(Vc >= C_bc)     # Matrix block must fit in register block

    mask[:, :C_bc] = True
    return mask



def A_mask(A_regs: Matrix[Register],
           A: CursorDef,
           A_ptr: CursorLocation,
           A_block_offset: Coords,
           B: CursorDef,
           B_ptr: CursorLocation,
           B_block_offset: Coords
          ) -> Matrix[bool]:

    Vr, Vc = A_regs.shape
    mask = Matrix.full(Vr, Vc, False)
    A_br, A_bc, A_idx, A_pat = A.get_block(A_ptr, A_block_offset)
    B_br, B_bc, B_idx, B_pat = B.get_block(B_ptr, B_block_offset)

    assert(Vr*8 == A_br)   # bm must tile m exactly for now
    assert(Vc >= A_bc)     # Matrix block must fit in register block
    assert(A_bc == B_br)   # Matrix blocks are compatible

    # Mask out registers not used in current block, including zero-rows of B
    for Vci in range(A_bc):
        if B_pat[Vci,:].any(axis=1):
            mask[:,Vci] = True

    return mask


# Deprecated
def submatrix(registers: Matrix[Register], rows: int, cols: int):
    mask = Matrix.full(registers.shape[0], registers.shape[1], False)
    for ci in range(cols):
        for ri in range(rows):
            mask[ri, ci] = True
    return mask

# Deprecated
def emptycols(registers: Matrix, pattern: Matrix):
    """ Mask out register block columns corresponding to all-zero pattern columns.
        Use this for C when B is sparse."""
    rows, cols = registers.shape
    mask = Matrix.full(rows, cols, True)

    for ci in range(cols):
        if not pattern[:,ci].any(axis=0):
            mask[:,ci] = False

    return mask

# Deprecated
def emptyrows(registers: Matrix[Register], pattern: Matrix[bool]):
    """ Mask out register block columns corresponding to all-zero pattern rows.
        Use this for A when B is sparse."""
    rows, cols = registers.shape
    mask = Matrix.full(rows, cols, True)
    pattern_rows = pattern.shape[0]

    for ci in range(cols):
        pattern_col = cast(Matrix[bool], pattern[ci % pattern_rows, :])
        if not pattern_col.any(axis=1):
            mask[:,ci] = False

    return mask

