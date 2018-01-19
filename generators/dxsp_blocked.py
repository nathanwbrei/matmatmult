
from codegen import *
from cursors import *
from algorithms.registerblocks import make_reg_blocks
from parameters import Parameters


class BlockedParameters(Parameters):

    A: CursorDef
    B: CursorDef
    C: CursorDef
    A_regs: Matrix[Register]
    C_regs: Matrix[Register]
    blocks: Matrix[float]
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



def choose_params(params: Parameters) -> BlockedParameters:

    print("dxsp_blocked.choose_params")
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
    patterns = []
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

    return BlockedParameters(params, blocks, patterns)


def make_alg(params: Parameters) -> Block:
    print("dxsp_blocked.make_alg")
    return block("dxsp_blocked stub")

