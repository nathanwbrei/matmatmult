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
        return AsmBlock("Loop preamble") \
                .stmt("mov", [self.initial_val], self.iteration_var) \
                .label(l("loop_begin"))


    def postamble(self):
        if (self.final_val.value == 0):
            return AsmBlock("Loop postamble") \
                    .stmt("addq", [self.increment], self.iteration_var) \
                    .stmt("jz", [l("loop_begin")], None)
        else:
            return AsmBlock("Loop postamble") \
                    .stmt("addq", [self.increment], self.iteration_var) \
                    .stmt("cmp", [self.iteration_var], self.final_val) \
                    .stmt("jl", [l("loop_begin")], None)


    def gen(self, env={}, syntax=Syntax.inline, depth=0):

        if (syntax==Syntax.pretty):
            spacing = "\n\n"
        else:
            spacing = "\n"
            
        result = "  "*depth
        result += f";; Loop({self.iteration_var.value} <- " 
        result += f"{self.initial_val.value}:{self.increment.value}:{self.final_val.value})\n"
        result += self.preamble().gen(env, syntax, depth+1) + spacing
        result += super().gen(env, syntax, depth+1) + spacing
        result += self.postamble().gen(env, syntax, depth+1)

        return result                        

