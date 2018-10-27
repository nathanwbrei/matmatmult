

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


class InlinePrinter(Visitor):

    show_comments = True
    indent: str = "  "
    depth: int = 0
    lmargin: int = 0
    rmargin: int = 60
    vpadding: bool = False
    output: List[str] = None
    stack: List[Block] = None


    def __init__(self):
        self.output = []
        self.stack = []

    def show(self):
        print("\n".join(self.output))


    def addLine(self, stmt: str, comment: str):

        line = " "*self.lmargin + self.indent*self.depth

        if stmt is not None and comment is not None and self.show_comments:
            stmt = '"' + stmt + '\\r\\n"'
            line += stmt.ljust(self.rmargin) + "// " + comment

        elif stmt is not None:
            line += '"' + stmt + '\\r\\n"'

        elif stmt is None and comment is not None:
            line += "// " + comment

        self.output.append(line)



    def visitFma(self, stmt: FmaStmt):
        b = stmt.bcast_src.ugly
        m = stmt.mult_src.ugly
        a = stmt.add_dest.ugly
        s = f"vfmadd231pd {b}%{{1to8%}}, {m}, {a}"
        self.addLine(s, stmt.comment)

    def visitAdd(self, stmt: AddStmt):
        s = f"addq {stmt.src.ugly}, {stmt.dest.ugly}"
        self.addLine(s, stmt.comment)

    def visitLabel(self, stmt: LabelStmt):
        s = f"{stmt.label.ugly}:"
        self.addLine(s, stmt.comment)

    def visitCmp(self, stmt: CmpStmt):
        s = f"cmp {stmt.lhs.ugly}, {stmt.rhs.ugly}"
        self.addLine(s, stmt.comment)

    def visitJump(self, stmt: JumpStmt):
        if stmt.indirect:
            s = f"{stmt.condition} *{stmt.destination.ugly}"
        elif stmt.local:
            direction = "b" if stmt.backwards else "f"
            s = f"{stmt.condition} {stmt.destination.ugly}{direction}"
        else:
            s = f"{stmt.condition} {stmt.destination.ugly}"
        self.addLine(s, stmt.comment)

    def visitMov(self, stmt: MovStmt):
        if isinstance(stmt.src, Label):
            src_str = "$" + stmt.src.ugly
        else:
            src_str = stmt.src.ugly

        if stmt.typ == AsmType.i64:
            s = f"movq {src_str}, {stmt.dest.ugly}"
        elif stmt.typ == AsmType.f64x8 and stmt.aligned:
            s = f"vmovapd {src_str}, {stmt.dest.ugly}"
        else:
            raise NotImplementedError()
        self.addLine(s, stmt.comment)


    def visitBlock(self, block: Block):
        self.stack.append(block)
        self.depth += 1
        if self.show_comments:
            self.addLine(None, block.comment)
        for stmt in block.contents:
            stmt.accept(self)
        self.depth -= 1
        self.stack.pop()


def render(s: AsmStmt):
    p = InlinePrinter()
    s.accept(p)
    return "\n".join(p.output)
