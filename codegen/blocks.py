from statements import *
from typing import List,Union

class AsmBlock:
    """ Represents a block of assembly statements"""

    def __init__(self, parent: AsmBlock = None, comment: str = None) -> None:
        self.block : List[Union[AsmStatement, Label, AsmBlock]] = []
        self.parent = parent
        self.comment = comment


    def stmt(self, operation: str, inputs: List[Operand], output: Operand) -> AsmBlock:
        s = AsmStatement(operation, inputs, output)
        self.block.append(s)
        return self

    def label(self, label: str) -> AsmBlock:
        self.block.append(Label(label))
        return self

    def include(self, child_block) -> AsmBlock:
        child_block.parent = self
        self.block.append(child_block)
        return child_block

    def close(self) -> AsmBlock:
        return self.parent

    def gen(self, env={}, syntax:Syntax=Syntax.inline):

        if (syntax is Syntax.inline) or (syntax is Syntax.intel):
            result = "\n".join(s.gen(env,syntax) for s in self.block)

        else:
            result = "\n  ".join(s.gen(env,syntax) for s in self.block)
            if self.comment is not None:
                result = ";; " + self.comment + "\n  " + result
            
        return result


    def outputs(self):
        pass
