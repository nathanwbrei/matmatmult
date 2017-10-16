from statements import *


class AsmBlock:
    """ Represents a block of assembly statements"""

    def __init__(self, parent : AsmBlock, comment : str = None):
        self._body = []  # [AssemblyStatement | Label | Asm]
        self.comment = comment

    def stmt(self, operation, inputs, output):
        s = statement(operation, inputs, outputs)
        self._body.append(s)

    def label(self, label):
        self._body.append(Label(label))

    def include(self, asm_block):
        self._body.append(asm_block)

    def loop(self, iteration_variable, initial_value, final_value, increment):
        loop = Loop()
        pass

    def gen(self, env={}, syntax="inline"):
        if (syntax == "inline"):
            return "\n    ".join(s.gen(env,syntax) for s in body)
        else:
            body = "\n"
            return ";" + self.comment + \
                " "*indent
        # Concatenate each assembly statement


    def calculate_inputs_and_outputs():
        pass
