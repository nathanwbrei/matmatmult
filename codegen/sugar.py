

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



from typing import Union

from codegen.ast import *
from codegen.operands import *
from codegen.prettyprinter import PrettyPrinter
from codegen.inlineprinter import InlinePrinter

# Convenient statement constructors
def add(src: Union[Operand, int], dest: Register, comment: str= None):
    stmt = AddStmt()
    stmt.src = src if isinstance(src, Operand) else c(src)
    stmt.dest = dest
    stmt.comment = comment
    return stmt

def label(name: str):
    stmt = LabelStmt()
    stmt.label = Label(name)
    return stmt

def fma(bcast_src: MemoryAddress, mult_src: Register, add_dest: Register, comment: str = None):
    stmt = FmaStmt()
    stmt.bcast_src = bcast_src
    stmt.mult_src = mult_src
    stmt.add_dest = add_dest
    stmt.comment = comment
    return stmt

def cmp(lhs: Union[Operand, int], rhs: Union[Operand, int]):
    stmt = CmpStmt()
    stmt.lhs = lhs if isinstance(lhs, Operand) else c(lhs)
    stmt.rhs = rhs if isinstance(rhs, Operand) else c(rhs)
    return stmt

def jump(label: str, condition="jl", backwards=True):
    stmt = JumpStmt()
    stmt.backwards = backwards
    stmt.indirect = False
    stmt.destination = Label(label)
    stmt.condition = condition
    return stmt

def indirect_jump(dest_op):
    stmt = JumpStmt()
    stmt.indirect = True
    stmt.destination = dest_op
    stmt.condition = "jmp"
    return stmt

def mov(src: Union[Operand, int], dest: Operand, vector: bool, comment:str = None):
    stmt = MovStmt()
    stmt.src = src if isinstance(src, Operand) else c(src)
    stmt.dest = dest
    stmt.comment = comment
    if vector:
        stmt.aligned = True
        stmt.typ = AsmType.f64x8
    else:
        stmt.aligned = False
        stmt.typ = AsmType.i64
    return stmt

def data(value: Union[Operand, int], asmType=AsmType.i64):
    stmt = DataStmt()
    stmt.value = value if isinstance(value, Operand) else c(value)
    stmt.asmType = asmType
    return stmt


# Fluent interface
class BlockBuilder(Block):

    def __init__(self, description: str, parent: "BlockBuilder" = None) -> None:
        self.parent = parent
        self.comment = description
        self.contents = []

    def add(self, stmt: AsmStmt):
        self.contents.append(stmt)
        return self

    def open(self, description: str):
        b = BlockBuilder(description, parent=self)
        self.contents.append(b)
        return b

    def close(self):
        return self.parent

    def body(self, *args):
        self.contents = list(args)
        return self



# S-expression interface
def block(description: str, *args: AsmStmt):
    b = BlockBuilder(description)
    b.contents = list(args)
    return b


def inline(block: Block):
    printer = InlinePrinter()
    printer.visitBlock(block)
    return "\n".join(printer.output)

def pretty(block: Block):
    printer = PrettyPrinter()
    printer.visitBlock(block)
    return "\n".join(printer.output)


