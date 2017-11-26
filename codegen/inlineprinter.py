from typing import List
from codegen.ast import *


class InlinePrinter(Visitor):

    indent: str = "  "
    depth: int = 0
    lmargin: int = 0
    rmargin: int = 60
    vpadding: bool = False
    output: List[str] = None


    def __init__(self):
        self.output = []


    def addLine(self, stmt: str, comment: str):

        line = " "*self.lmargin + self.indent*self.depth

        if stmt is not None and comment is not None:
            stmt = '"' + stmt + '\\r\\n"'
            line += stmt.ljust(self.rmargin) + "// " + comment

        elif stmt is not None and comment is None:
            line += '"' + stmt + '\\r\\n"'

        elif stmt is None and comment is not None:
            line += "// " + comment

        self.output.append(line)



    def visitFma(self, stmt: FmaStmt):
        b = stmt.bcast_src.inline
        m = stmt.mult_src.inline
        a = stmt.add_dest.inline
        s = f"vfmadd231pd {b}%{{1to8%}}, {m}, {a}"
        self.addLine(s, stmt.comment)

    def visitAdd(self, stmt: AddStmt):
        s = f"addq {stmt.src.inline}, {stmt.dest.inline}"
        self.addLine(s, stmt.comment)

    def visitLabel(self, stmt: LabelStmt):
        s = f"{stmt.label.inline}:"
        self.addLine(s, stmt.comment)

    def visitCmp(self, stmt: CmpStmt):
        s = f"cmp {stmt.lhs.inline}, {stmt.rhs.inline}"

    def visitJump(self, stmt: JumpStmt):
        direction = "b" if stmt.backwards else "f"
        s = f"jl {stmt.label.inline}{direction}"
        self.addLine(s, stmt.comment)

    def visitBlock(self, block: Block):
        self.depth += 1
        self.addLine(None, block.comment)
        for stmt in block.contents:
            stmt.accept(self)




def print(s: AsmStmt):
    p = InlinePrinter()
    s.accept(p)
    return "\n".join(p.output)

