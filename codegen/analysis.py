
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




from codegen.visitors import Visitor
from codegen.sugar import *

from typing import List, Set

class Analyzer(Visitor):

    clobbered_registers: Set[Register]
    basic_blocks: BlockBuilder
    current_block: BlockBuilder
    flat: BlockBuilder
    stack: List[Block]

    def __init__(self):
        self.clobbered_registers = set()
        self.basic_blocks = block("Basic block representation")
        self.current_block = block("New basic block")
        self.basic_blocks.add(self.current_block)
        self.flat = block("Flattened representation")
        self.stack = []

    def visitFma(self, stmt: FmaStmt):
        self.clobbered_registers.add(stmt.add_dest)
        self.flat.add(stmt)
        self.current_block.add(stmt)

    def visitAdd(self, stmt: AddStmt):
        self.clobbered_registers.add(stmt.dest)
        self.flat.add(stmt)
        self.current_block.add(stmt)

    def visitLabel(self, stmt: LabelStmt):
        b = block("New basic block", stmt)
        self.current_block = b
        self.basic_blocks.add(b)
        self.flat.add(stmt)

    def visitJump(self, stmt: JumpStmt):
        self.current_block.add(stmt)
        b = block("New basic block")
        self.current_block = b
        self.basic_blocks.add(b)
        self.flat.add(stmt)

    def visitMov(self, stmt: MovStmt):
        s = f"mov {stmt.src.nice} -> {stmt.dest.nice}"
        if isinstance(stmt.dest, Register):
            self.clobbered_registers.add(stmt.dest)
        self.flat.add(stmt)
        self.current_block.add(stmt)

    def visitCmp(self, stmt: CmpStmt):
        s = f"cmp {stmt.rhs.nice} <=> {stmt.lhs.nice}"
        self.flat.add(stmt)
        self.current_block.add(stmt)

    def visitBlock(self, block: Block):
        self.stack.append(block)
        for stmt in block.contents:
            stmt.accept(self)
        self.stack.pop()



