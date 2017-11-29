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
        direction = "b" if stmt.backwards else "f"
        s = f"jl {stmt.label.ugly}{direction}"
        self.addLine(s, stmt.comment)

    def visitMov(self, stmt: MovStmt):
        if stmt.typ == AsmType.i64:
            s = f"movq {stmt.src.ugly}, {stmt.dest.ugly}"
        elif stmt.typ == AsmType.f64x8 and stmt.aligned:
            s = f"vmovapd {stmt.src.ugly}, {stmt.dest.ugly}"
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


