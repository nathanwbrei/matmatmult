from blocks import *


class Loop(AsmBlock):
    """ For now, unroll and optimize should only be used if the loop
    body does not depend on the iteration variable."""
    def __init__(self, 
            iteration_var: Register, 
            initial_val: Constant, 
            final_val: Constant, 
            increment: Constant = c(1),
            parent: AsmBlock = None
        ):

        self.iteration_var = iteration_var
        self.initial_val = initial_val
        self.final_val = final_val
        self.increment = increment
        self.parent = parent

        ls = Asm("Loop") \
             .stmt("delicious") \
             .stmt("waffle")

        le = Asm("Loop")
        self._loop_start = ls
        self._loop_end = le


    def gen(self, env={}, syntax="inline"):
        pass
