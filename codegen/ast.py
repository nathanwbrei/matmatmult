

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



from typing import List, TYPE_CHECKING
from codegen.operands import Operand, Label, Register, AsmType, MemoryAddress

if TYPE_CHECKING:
    from codegen.visitors import Visitor


class AsmStmt:
    comment: str = None
    implied_inputs: List[Register] = []
    implied_outputs: List[Register] = []

    def accept(self, visitor: "Visitor"):
        raise Exception("AsmStmt is supposed to be abstract!")


class GenericStmt(AsmStmt):
    operation: str
    inputs: List[Operand]
    output: Operand

    def accept(self, visitor: "Visitor"):
        visitor.visitStmt(self)


class MovStmt(AsmStmt):
    src: Operand
    dest: Operand
    typ: AsmType
    aligned: bool = False

    def accept(self, visitor: "Visitor"):
        visitor.visitMov(self)


class FmaStmt(AsmStmt):
    bcast_src: MemoryAddress
    mult_src: Register
    add_dest: Register

    def accept(self, visitor: "Visitor"):
        visitor.visitFma(self)


class AddStmt(AsmStmt):
    src: Operand = None
    dest: Register = None
    typ: AsmType = None

    def accept(self, visitor: "Visitor"):
        visitor.visitAdd(self)

class CmpStmt(AsmStmt):
    lhs: Operand
    rhs: Operand

    def accept(self, visitor: "Visitor"):
        visitor.visitCmp(self)

class LabelStmt(AsmStmt):
    label: Label = None

    def accept(self, visitor: "Visitor"):
        visitor.visitLabel(self)


class JumpStmt(AsmStmt):
    destination: Operand = None
    indirect: bool = False
    local: bool = False
    backwards: bool = None
    condition: str = "jmp"

    def accept(self, visitor: "Visitor"):
        visitor.visitJump(self)

class DataStmt(AsmStmt):
    value: Operand
    asmType: AsmType

    def accept(self, visitor: "Visitor"):
        visitor.visitData(self)


class Block(AsmStmt):
    contents : List[AsmStmt] = []

    def accept(self, visitor: "Visitor"):
        visitor.visitBlock(self)


class Command(AsmStmt):
    name: str

    def accept(self, visitor: "Visitor"):
        visitor.visitCommand(self)

    def make(self, e) -> Block:
        raise NotImplementedError()




