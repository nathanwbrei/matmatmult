

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



from typing import List
from codegen.ast import *
from codegen.visitors import Visitor


class PrettyPrinter(Visitor):

    indent: str = "  "
    depth: int = 0
    linenumbers: int = True
    margin: int = 40
    vpadding: bool = False
    output: List[str] = None
    stack: List[Block] = None

    def __init__(self):
        self.output = []
        self.stack = []

    def show(self):
        print("\n".join(self.output))

    def addLine(self, line, comment):
        linenum = str(len(self.output)).ljust(4) + " " if self.linenumbers else ""
        if comment is not None:
            line = linenum + self.indent*self.depth + line.ljust(self.margin) + "# " + comment
        else:
            line = linenum + self.indent*self.depth + line
        self.output.append(line)

    def visitFma(self, stmt: FmaStmt):
        s = f"fma {stmt.bcast_src.nice} {stmt.mult_src.nice} -> {stmt.add_dest.nice}"
        self.addLine(s, stmt.comment)

    def visitAdd(self, stmt: AddStmt):
        s = f"add {stmt.src.nice} -> {stmt.dest.nice}"
        self.addLine(s, stmt.comment)

    def visitLabel(self, stmt: LabelStmt):
        s = f"{stmt.label.nice}:"
        self.addLine(s, stmt.comment)

    def visitJump(self, stmt: JumpStmt):
        if stmt.indirect:
            s = f"{stmt.condition} *{stmt.destination.nice}"
        elif stmt.local:
            direction = "b" if stmt.backwards else "f"
            s = f"{stmt.condition} {stmt.destination.nice}{direction}"
        else:
            s = f"{stmt.condition} {stmt.destination.nice}"
        self.addLine(s, stmt.comment)

    def visitMov(self, stmt: MovStmt):
        s = f"mov {stmt.src.nice} -> {stmt.dest.nice}"
        self.addLine(s, stmt.comment)

    def visitCmp(self, stmt: CmpStmt):
        s = f"cmp {stmt.rhs.nice} <=> {stmt.lhs.nice}"
        self.addLine(s, stmt.comment)

    def visitBlock(self, block: Block):
        self.stack.append(block)
        self.depth += 1
        self.addLine("## " + block.comment, None)
        for stmt in block.contents:
            stmt.accept(self)
        self.depth -= 1
        self.stack.pop()




def prettyprint(s: AsmStmt):
    p = PrettyPrinter()
    s.accept(p)
    return "\n".join(p.output)

