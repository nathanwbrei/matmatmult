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
    stack: List[str] = None

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
        direction = "b" if stmt.backwards else "f"
        s = f"jl {stmt.label.nice}{direction}"
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
