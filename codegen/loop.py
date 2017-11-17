from codegen.blocks import *


class Loop(AsmBlock):
    """ For now, unroll and optimize should only be used if the loop
    body does not depend on the iteration variable."""
    _labels: List[str] = []
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
        comment = f"Loop({self.iteration_var.value} <- " + \
                  f"{self.initial_val.value}:{self.increment.value}:{self.final_val.value})"

        return AsmBlock(comment) \
                .stmt("movq", self.initial_val, self.iteration_var) \
                .labeldecl(self.label)


    def postamble(self):
        if (self.final_val.value == 0):
            return AsmBlock("Loop postamble") \
                    .stmt("addq", self.increment, self.iteration_var) \
                    .include(Jump("jz", self.label, "b"))
        else:
            return AsmBlock("Loop postamble") \
                    .stmt("addq", self.increment, self.iteration_var) \
                    .stmt("cmpq", self.final_val, self.iteration_var, None) \
                    .include(Jump("jl", self.label, "b"))


    def gen(self, syntax=inline, depth=0):

        outer = self.preamble()
        inner = AsmBlock("Loop body")
        inner.block.extend(self.block)
        outer.block.append(inner)
        outer.block.extend(self.postamble().block)
        return outer.gen(syntax, depth)

    def outputs(self):
        result = AsmBlock.outputs(self)
        result.update(self.preamble().outputs())
        result.update(self.postamble().outputs())
        return result


def loop(iter_var, initial, final, increment):
    return Loop(iter_var, c(initial), c(final), c(increment))


# TODO: Figure out how to statically type this
# TODO: Extend to partial unrolling

def unroll(block_generator, iteration_range, parameters) -> AsmBlock:
    asm = AsmBlock("Unrolled over " + str(iteration_range))
    for x in iteration_range:
        asm.include(block_generator(x, parameters))
    return asm


