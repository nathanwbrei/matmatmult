from statements import *
from typing import List,Union

class AsmBlock:
    """ Represents a block of assembly statements"""

    def __init__(self, comment: str = None, parent: "AsmBlock" = None) -> None:

        self.block : List[Union[AsmStatement, LabelDeclaration, "AsmBlock"]] = []
        self.comment = comment
        self.parent = parent


    def stmt(self, operation: str, inputs: List[Operand], output: Operand) -> "AsmBlock":
        s = AsmStatement(operation, inputs, output)
        self.block.append(s)
        return self

    def label(self, label: Label) -> "AsmBlock":
        self.block.append(LabelDeclaration(label))
        return self

    def include(self, child_block) -> "AsmBlock":
        child_block.parent = self
        self.block.append(child_block)
        return self

    def open(self, child_block) -> "AsmBlock":
        child_block.parent = self
        self.block.append(child_block)
        return child_block

    def close(self) -> "AsmBlock":
        return self.parent

    def gen(self, env={}, syntax:Syntax=Syntax.inline, depth=0):

        result = ""
        if (self.comment is not None and syntax != Syntax.inline):
            result += "  " * depth + ";; " + self.comment + "\n"

        result += "\n".join(s.gen(env,syntax,depth+1) for s in self.block)

        return result


    def outputs(self):
        pass
