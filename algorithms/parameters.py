
from codegen.cursors import *


class Parameters():

    def __init__(self, name: str,
                 Bm: int, Bn: int,
                 blocks: List[List[int]],
                 patterns: List[List[List[int]]]
                ) -> None:

        self.name = name
        self.A_regs = [zmm(i) for i in range(0,16)]
        self.C_regs = [zmm(i) for i in range(16,32)]
        self.Bm = Bm  #TODO: This should come from cursor
        self.Bn = Bn
        self.blocks = blocks
        self.patterns = patterns
        self.A = DenseCursor("A", rdi, 48, 9, 48, 8, 3)
        self.B = BlockSparseCursor("B", rsi, self.blocks, self.patterns)
        self.C = DenseCursor("C", rdx, 48, 9, 48, 8, 3)

    def reset(self):
        self.A.reset()
        self.B.reset()
        self.C.reset()

