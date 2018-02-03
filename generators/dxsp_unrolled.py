from components.parameters import Parameters
from components.microkernel import make_microkernel
from components.registerblock import *
from codegen import *
from cursors import *
from codegen.forms import loop

#DEPRECATED
def choose_params(params: Parameters) -> Parameters:
    pattern = Matrix.load(params.mtx_filename)
    return UnrolledParameters(params, pattern)

#DEPRECATED
def make_alg(params: "UnrolledParameters") -> Block:
    return params.make()


def decompose_pattern(pattern:Matrix[bool], bk:int, bn:int) -> Tuple[Matrix[int], List[Matrix[bool]]]:
    k,n = pattern.shape
    Bk,Bn = k//bk, n//bn
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

    return blocks, patterns



class UnrolledParameters(Parameters):

    def __init__(self, basic_params: Parameters, pattern: Matrix[bool]) -> None:
        super().__init__(**basic_params.__dict__)

        blocks,patterns = decompose_pattern(pattern, self.bk, self.bn)
        self.A = DenseCursorDef("A", rdi, self.m, self.k, self.lda, self.bm, self.bk)
        self.B = BlockCursorDef("B", rsi, self.k, self.n, self.bk, self.bn, blocks, patterns)
        self.C = DenseCursorDef("C", rdx, self.m, self.n, self.ldc, self.bm, self.bn)

        self.A_regs, self.C_regs = make_reg_blocks(self.bm, self.bn, self.bk)



    def make_nk_unroll(p):

        asm = block("Unrolling over bn and bk")
        A_ptr = CursorLocation()
        B_ptr = p.B.start_location()
        C_ptr = CursorLocation()
        Bn = p.n // p.bn
        Bk = p.k // p.bk

        for Bni in range(0,Bn):

            asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, None, False))

            for Bki in range(0,Bk):

                to_A = Coords(right=Bki)
                to_B = Coords(right=Bni, down=Bki)

                if p.B.has_nonzero_block(B_ptr, to_B):
                    asm.add(make_microkernel(p.A, p.B, A_ptr, B_ptr, p.A_regs, p.C_regs, to_A, to_B))

            asm.add(move_register_block(p.C, C_ptr, Coords(), p.C_regs, None, True))

            if (Bni != Bn-1):
                move_C, C_ptr = p.C.move(C_ptr, Coords(right=1))
                asm.add(move_C)

        return asm



    def make(p):
        
        A_ptr = CursorLocation()
        C_ptr = CursorLocation()

        Bm = p.m // p.bm
        Bn = p.n // p.bn

        asm = block(f"unrolled_{p.m}x{p.n}x{p.k}",

            loop(r(12), 0, Bm, 1).body(
                p.make_nk_unroll(),
                p.A.move(A_ptr, Coords(down=1, right=1-Bn))[0],
                p.C.move(C_ptr, Coords(down=1, right=1-Bn))[0]
            )
        )
        return asm



    def validate(self):
        pass




