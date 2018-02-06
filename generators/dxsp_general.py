
from components.registerblock import *
from components.microkernel import make_microkernel
from components.parameters import Parameters

from cursors import *
from codegen.ast import *
from codegen.sugar import *
from codegen.forms import *



class GeneralParameters(Parameters):

    A: DenseCursorDef
    B: BlockCursorDef
    C: DenseCursorDef
    A_regs: Matrix[Register]
    C_regs: Matrix[Register]
    blocks: Matrix[int]
    patterns: List[Matrix[bool]]


    def __init__(self,
                 basic_params: Parameters,
                 blocks: Matrix[int],                # These two are required to be
                 patterns: List[Matrix[bool]],       # compatible with k,n,bk,bn
                ) -> None:

        super().__init__(**basic_params.__dict__)

        self.blocks = blocks
        self.patterns = patterns
        self.A = DenseCursorDef("A", rdi, self.m, self.k, self.lda, self.bm, self.bk)
        self.B = BlockCursorDef("B", rsi, self.k, self.n, self.bk, self.bn, blocks, patterns)
        self.C = DenseCursorDef("C", rdx, self.m, self.n, self.ldc, self.bm, self.bn)
        self.A_regs, self.C_regs = make_reg_blocks(self.bm, self.bn, self.bk)

    def make(self):
        return make_alg(self)





def choose_params(params: Parameters) -> GeneralParameters:

    pattern = Matrix.load_pattern(params.mtx_filename)

    #TODO: Choose bk,bn better
    bm = 8 if params.bm is None else params.bm
    bn = 8 if params.bn is None else params.bn
    bk = 8 if params.bk is None else params.bk
    params.bm = bm
    params.bn = bn
    params.bk = bk

    # TODO: Currently does not support fringe
    Bk,Bn = params.k//bk, params.n//bn
    patterns : List[Matrix[bool]] = []
    blocks = Matrix.full(Bk,Bn,-1)
    x = 0
    for Bni in range(Bn):
        for Bki in range(Bk):
            block = pattern[(Bki*bk):((Bki+1)*bk), (Bni*bn):((Bni+1)*bn)]
            found = False
            for pi in range(len(patterns)):
                if patterns[pi] == block:
                    blocks[Bki,Bni] = pi
                    found = True
            if not found:
                blocks[Bki,Bni] = x
                x += 1
                patterns.append(block)

    return GeneralParameters(params, blocks, patterns)




def make_alg(p: GeneralParameters) -> Block:

    Bm = (p.m // p.bm)
    Bn = (p.n // p.bn)
    Bkf = (p.k // p.bk) + (p.k % p.bk != 0)
    A_ptr = p.A.start_location()
    B_ptr = p.B.start_location()
    C_ptr = p.C.start_location()
    jump_reg = r(10)

    asm = block(f"Unrolled FullyGeneralSparse")
    asm.add(jump("END_SWITCH", "jmp"))

    cases = []
    for x,pattern in enumerate(p.B.patterns):
        case_label = f"CASE_{x}"
        cases.append(case_label)

        if pattern.nnz() > 0:
            asm.add(label(case_label))
            BB = minicursor(f"block_{x}", p.B.base_ptr, pattern)
            BB_ptr = BB.start_location()
            asm.add(make_microkernel(p.A,BB,A_ptr,BB_ptr,p.A_regs,p.C_regs))
            asm.add(indirect_jump(jump_reg))
    

    asm.add(label("END_SWITCH"))

    for Bmi in range(Bm):
        for Bni in range(Bn):

            panel_needed = False
            for Bki in range(Bkf):
                if p.B.has_nonzero_block(B_ptr, Coords(down=Bki, right=Bni, absolute=True)):
                    panel_needed = True

            if panel_needed:
                move_C_stmt, C_ptr = p.C.move(C_ptr, Coords(down=Bmi, right=Bni, absolute=True))
                asm.add(move_C_stmt)

                mask = C_mask_untiled(p.C_regs, p.C, C_ptr, Coords())
                asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, False))

                for Bki in range(Bkf):

                    to_A = Coords(down=Bmi, right=Bki, absolute=True)
                    to_B = Coords(down=Bki, right=Bni, absolute=True)

                    if p.B.has_nonzero_block(B_ptr, to_B):

                        block_label = f"BLOCK_{Bki}_{Bni}"
                        asm.add(mov(Label(block_label), jump_reg, False))

                        move_B_stmt, B_ptr = p.B.move(B_ptr, to_B)
                        asm.add(move_B_stmt)

                        move_A_stmt, A_ptr = p.A.move(A_ptr, to_A)
                        asm.add(move_A_stmt)

                        block_index = p.B.blocks[Bki,Bni]
                        asm.add(jump(cases[block_index], "jmp"))
                        asm.add(label(block_label))

                asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, mask, True))

    return asm



