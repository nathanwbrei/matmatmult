from blocks import *


class Loop(AsmBlock):
    """ For now, unroll and optimize should only be used if the loop
    body does not depend on the iteration variable."""
    _labels = []
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
        self.label = "loop_top_" + str(len(Loop._labels))
        Loop._labels.append(self.label)


    def preamble(self):
        return AsmBlock() \
                .stmt("mov", self.initial_val, self.iteration_var) \
                .label(self.label)


    def postamble(self):
        if (self.final_val.value == 0):
            return AsmBlock() \
                    .stmt("addq", self.increment, self.iteration_var) \
                    .stmt("jz", self.label)
        else:
            return AsmBlock() \
                    .stmt("addq", self.increment, self.iteration_var) \
                    .stmt("cmpq", self.iteration_var, self.final_val, None) \
                    .stmt("jl", self.label, None)


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


def loop(iter_var, initial, final, increment):
    return Loop(iter_var, c(initial), c(final), c(increment))


# TODO: Figure out how to statically type this
# TODO: Extend to partial unrolling

def unroll(block_generator, iteration_range) -> AsmBlock:
    asm = AsmBlock("Unrolled over " + str(range))
    for x in iteration_range:
        asm.include(block_generator(x))
    return asm


