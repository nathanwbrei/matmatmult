from codegen.ast import *

class Visitor:

    def visitStmt(self, stmt: GenericStmt) -> None:
        raise NotImplementedError()

    def visitMov(self, stmt: MovStmt) -> None:
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

    def visitData(self, stmt: DataStmt) -> None:
        raise NotImplementedError()

    def visitBlock(self, stmt: Block) -> None:
        raise NotImplementedError()

    def visitCommand(self, stmt: Command) -> None:
        raise NotImplementedError()
