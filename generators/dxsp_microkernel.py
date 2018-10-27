
#  @author Nathan Brei (nathan.w.brei AT tum.de)

#  @section LICENSE
#  Copyright (c) 2018, SeisSol Group
#  All rights reserved.
 
#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions are met:

#  1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.

#  2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.

#  3. Neither the name of the copyright holder nor the names of its
#     contributors may be used to endorse or promote products derived from this
#     software without specific prior written permission.

#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
#  IMPLIED WARRANTIES OF  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
#  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
#  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
#  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
#  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
#  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
#  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
#  ARISING IN ANY WAY OUT OF THE  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
#  POSSIBILITY OF SUCH DAMAGE.




from codegen import *
from cursors import *
from components.microkernel import make_microkernel
from components.registerblock import *
from components.parameters import Parameters


class MicroParameters(Parameters):

    def __init__(self, basic_params: Parameters, pattern: Matrix[bool]) -> None:

        super().__init__(**basic_params.__dict__)

        self.A = DenseCursorDef("A", rdi, self.m, self.k, self.lda, self.m, self.k)
        self.B = minicursor("B", rsi, pattern)
        self.C = DenseCursorDef("C", rdx, self.m, self.n, self.ldc, self.m, self.n)

        self.A_regs, self.C_regs = make_reg_blocks(self.m, self.n, self.k)

    def make(self):
        return make_alg(self)



def choose_params(p: Parameters) -> Parameters:

    pattern = Matrix.load_pattern(p.mtx_filename)
    pp = MicroParameters(p, pattern)

    if pp.output_funcname is None:
        pp.output_funcname = f"microsparse_{p.m}x{p.n}x{p.k}"

    # TODO: Ensure MTX matches provided m,k
    # TODO: Ensure whole thing fits

    return pp



def make_alg(self: MicroParameters) -> Block:

    A_ptr = CursorLocation(Coords(0,0,absolute=True), Coords())
    B_ptr = self.B.start_location()
    C_ptr = CursorLocation(Coords(0,0,absolute=True), Coords())
    to_A_block = Coords()
    to_B_panel = Coords()
    to_C_block = Coords()

    mask = C_mask(self.C_regs, self.C, C_ptr, Coords(), self.B, B_ptr, to_B_panel, tiled=False)

    asm = block("MicroSparse GEMM")
    asm.add(move_register_block(self.C, C_ptr, Coords(), self.C_regs, mask, store=False))
    asm.add(make_microkernel(self.A, self.B, A_ptr, B_ptr, self.A_regs, self.C_regs, to_A_block, to_C_block))
    asm.add(move_register_block(self.C, C_ptr, Coords(), self.C_regs, mask, store=True))

    return asm


