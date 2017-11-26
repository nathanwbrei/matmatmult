from typing import List
from codegen.ast import *


class PrettyPrinter(Visitor):

    indent: str = "  "
    depth: int = 0
    linenumbers: int = True
    margin: int = 40
    vpadding: bool = False
    output: List[str] = None

    def __init__(self):
        self.output = []

    def addLine(self, line, comment):
        linenum = str(len(self.output)) + "  " if self.linenumbers else ""
        if comment is not None:
            line = linenum + self.indent*self.depth + line.ljust(self.margin) + "# " + comment
        else:
            line = linenum + self.indent*self.depth + line
        self.output.append(line)

    def visitFma(self, stmt: FmaStmt):
        s = f"fma {stmt.bcast_src} {stmt.mult_src} -> {stmt.add_dest}"
        self.addLine(s, stmt.comment)

    def visitAdd(self, stmt: AddStmt):
        s = f"add {stmt.src} -> {stmt.dest}"
        self.addLine(s, stmt.comment)

    def visitLabel(self, stmt: LabelStmt):
        s = f"{stmt.label}:"
        self.addLine(s, stmt.comment)

    def visitJump(self, stmt: JumpStmt):
        direction = "b" if stmt.backwards else "f"
        s = f"jl {stmt.label}{direction}"
        self.addLine(s, stmt.comment)

    def visitBlock(self, block: Block):
        self.depth += 1
        self.addLine("## " + block.comment, None)
        for stmt in block.contents:
            stmt.accept(self)





def prettyprint(s: AsmStmt):
    p = PrettyPrinter()
    s.accept(p)
    return "\n".join(p.output)
