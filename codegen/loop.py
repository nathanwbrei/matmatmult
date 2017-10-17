from blocks import *


class Loop(AsmBlock):
    """ For now, unroll and optimize should only be used if the loop
    body does not depend on the iteration variable."""
    def __init__(self, 
            iteration_var: Register, 
            initial_val: Constant, 
            final_val: Constant, 
            increment: Constant = c(1),
            parent: AsmBlock = None ) -> None:

        super().__init__("Loop body", parent)
        self.iteration_var = iteration_var
        self.initial_val = initial_val
        self.final_val = final_val
        self.increment = increment


    def preamble(self):
        return AsmBlock() \
                .stmt("mov", self.initial_val, self.iteration_var) \
                .label("loop_begin")


    def postamble(self):
        if (self.final_val.value == 0):
            return AsmBlock() \
                    .stmt("addq", self.increment, self.iteration_var) \
                    .stmt("jz", "loop_begin")
        else:
            return AsmBlock() \
                    .stmt("addq", self.increment, self.iteration_var) \
                    .stmt("cmp", self.iteration_var, self.final_val, None) \
                    .stmt("jl", "loop_begin", None)


    def gen(self, env={}, syntax=Syntax.inline, depth=0):

        result = ""

        if (syntax==Syntax.pretty):
            result += "\n" + "  "*depth
            result += f";; Loop({self.iteration_var.value} <- " 
            result += f"{self.initial_val.value}:{self.increment.value}:{self.final_val.value})\n"

        result += self.preamble().gen(env, syntax, depth) + "\n"
        result += super().gen(env, syntax, depth+1) + "\n"
        result += self.postamble().gen(env, syntax, depth)
        if (syntax==Syntax.pretty):
            result += "\n"

        return result                        

