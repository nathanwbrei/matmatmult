from codegen.statements import *
from typing import List,Union


class AsmBlock:
    """ Represents a block of assembly statements"""

    def __init__(self, comment: str = None, parent: "AsmBlock" = None) -> None:

        self.block : List[Union[AsmStatement, LabelDeclaration, "AsmBlock"]] = []
        self.comment = comment
        self.parent = parent


    def stmt(self, operation: str, *args, **kwargs) -> "AsmBlock":

        def parse(arg):
            if isinstance(arg, Operand) or arg is None:
                return arg
            if isinstance(arg, int):
                return Constant(AsmType.i64, arg)
            elif isinstance(arg, str):
                return Label(arg)
            elif isinstance(arg, tuple):
                raise Exception("Not sure why I thought I wanted this.")
                return arg[0]+arg[1]
            else:
                raise Exception("Unable to interpret operand: " + arg)

        inputs = [parse(a) for a in args[:-1]]
        output = parse(args[-1])
        comment = kwargs.get("comment", None)
        self.block.append(AsmStatement(operation, inputs, output, comment=comment))
        return self


    def labeldecl(self, label: str) -> "AsmBlock":
        self.block.append(LabelDeclaration(Label(label)))
        return self

    def include(self, child_block) -> "AsmBlock":
        self.block.append(child_block)
        return self

    def open(self, child_block) -> "AsmBlock":
        child_block.parent = self
        self.block.append(child_block)
        return child_block

    def close(self) -> "AsmBlock":
        return self.parent

    def body(self, block) -> "AsmBlock":
        self.block = block
        return self

    def gen(self, syntax:Syntax=inline, depth=0):

        result = ""
        if (syntax == pretty):
            if self.comment is not None:
                result += "  " * depth + "## " + self.comment + "\n"

        result += "\n".join(s.gen(syntax,depth+1) for s in self.block)
        return result

    def show(self):
        print(self.gen(syntax=Syntax.pretty))

    def __str__(self):
        return self.gen({}, syntax=Syntax.pretty)

    def outputs(self):
        result = set()
        for x in self.block:
            result.update(x.outputs())
        return result

