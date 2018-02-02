

from codegen import *
from cursors import DenseCursorDef
from components import microkernel
from parameters import Parameters


def MicroParameters(Parameters):

	def __init__(self, basic_params: Parameters):

		super().__init__(**basic_params.__dict__)

		self.A = DenseMatrixCursor()
		self.B = None
		self.A_regs = None
		self.C_regs = None



def choose_params(params: Parameters) -> Parameters:
    print("dxsp_microkernel.choose_params")
    return params



def make_alg(params: Parameters) -> Block:

	A_ptr = CursorLocation(Coords(), Coords())
	B_ptr = self.B.get_start_location()
	C_ptr = CursorLocation(Coords(), Coords())

	asm = BlockBuilder("MicroSparse GEMM")
	asm.include(microkernel.make_alg(self.A, self.B, A_ptr, B_ptr, self.A_regs, self.C_regs, to_A_block, to_C_block))
	return asm



