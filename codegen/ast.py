
from typing import List
from codegen.operands import Operand, Label


class AsmStmt:
    comment : str = None
    operation: str
    inputs: List[Operand]
    output: Operand

    def accept(self, visitor: "Visitor"):
        visitor.visitStmt(self)


class FmaStmt(AsmStmt):
    bcast_src: str = None
    mult_src: str = None
    add_dest: str = None

    def accept(self, visitor: "Visitor"):
        visitor.visitFma(self)


class AddStmt(AsmStmt):
    src: str = None
    dest: str = None
    typ: int = None

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
    label: Label = None
    backwards: bool = True

    def accept(self, visitor: "Visitor"):
        visitor.visitJump(self)


class Block(AsmStmt):
    contents : List[AsmStmt] = []

    def accept(self, visitor: "Visitor"):
        visitor.visitBlock(self)




class Visitor:

    def visitStmt(self, stmt: AsmStmt) -> None:
        raise NotImplementedError()

    def visitAdd(self, stmt: AddStmt) -> None:
        raise NotImplementedError()

    def visitLabel(self, stmt: LabelStmt) -> None:
        raise NotImplementedError()

    def visitFma(self, stmt: FmaStmt) -> None:
        raise NotImplementedError()

    def visitCmp(self, stmt: CmpStmt) -> None:
        raise NotImplementedError()

    def visitJump(self, stmt: JumpStmt) -> None:
        raise NotImplementedError()

    def visitBlock(self, stmt: Block) -> None:
        raise NotImplementedError()

