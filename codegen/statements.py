from operands import *
from typing import Set


class AsmStatement:
    """ Represents a single assembly statement"""
    def __init__(self,
                 operation : str,
                 inputs : List[Operand],
                 output : Operand,
                 implied_inputs : List[Operand] = [],
                 implied_outputs : List[Operand] = [],
                 comment : str = None
                 ) -> None:

        self.operation = operation
        self.inputs = inputs
        self.output = output
        self.implied_inputs = implied_inputs
        self.implied_outputs = implied_outputs
        self.comment = comment

    T = AsmType

    known_instructions = [
        ("syscall",      [], None),
        ("cmpq",         [(Constant,T.i64)], (Register,T.i64)),
        ("jl",           [(Label)], None),
        ("movq",         [(Register,T.i64)], (Register,T.i64)),
        ("movq",         [(Constant,T.i64)], (Register,T.i64)),
        ("movq",         [(MemoryAddress)], (Register,T.i64)),
        ("movq",         [(Register,T.i64)], (MemoryAddress)),
        ("addq",         [(Register,T.i64)], (Register,T.i64)),
        ("addq",         [(Constant,T.i64)], (Register,T.i64)),
        ("vaddpd",       [(Register,T.f64x4), (Register,T.f64x4)], (Register,T.f64x4)),
        ("vaddpd",       [(Register,T.f64x8), (Register,T.f64x8)], (Register,T.f64x8)),
        ("vmulpd",       [(Register,T.f64x4), (Register,T.f64x4)], (Register,T.f64x4)),
        ("vmulpd",       [(Register,T.f64x8), (Register,T.f64x8)], (Register,T.f64x8)),
        ("vmovapd",      [(MemoryAddress)], (Register,T.f64x4)),
        ("vmovapd",      [(MemoryAddress)], (Register,T.f64x8)),
        ("vfmadd231pd",  [(Register,T.f64x4), (Register,T.f64x4)], (Register,T.f64x4)),
        ("vfmadd231pd",  [(Register,T.f64x8), (Register,T.f64x8)], (Register,T.f64x8)),
        ("vfmadd231pd",  [(Register,T.f64x8), (MemoryAddress)], (Register,T.f64x8)),
        ("vbroadcastsd", [(MemoryAddress)], (Register,T.f64x4)),
        ("vbroadcastsd", [(MemoryAddress)], (Register,T.f64x8)),
    ]

    ops_lookup = {
        "add":   ["addq", "vaddpd"],
        "cmp":   ["cmpq"],
        "mov":   ["movq", "vmovapd"],
        "mul":   ["vmulpd"],
        "fma":   ["vfmadd231pd"],
        "bcast": ["vbroadcastsd"]
    }

    def validate(self, arch="snb"):
        """Check whether an AssemblyStatement is supported by some architecture"""
        # TODO: The 'architecture' bit

        def match(operand, pattern):
            """Ghetto pattern matching over Operand, almost as if it were an ADT, e.g.:
               statement "vmovapd" (Register f64x8 _) (Register f64x8 _) = True"""

            if not isinstance(operand, pattern[0]):
                return False

            if len(pattern) > 1 and operand.type_info != pattern[1]:
                return False

            return True


        for candidate in known_instructions:

            flag = True

            if (self.operation not in ops_lookup.get(self.operation, [self.operation])):
                flag = False

            if (len(self.inputs) != len(candidate[1])):
                flag = False

            if not match(candidate[2], self.output):
                flag = False

            for i in range(len(self.inputs)):
                if not match(candidate[1][i], self.inputs[i]):
                    flag = False

            if flag:
                return True

        return False



    intel_syntax = {
        "addq" : "add",
        "cmpq" : "cmp",
        "movq" : "mov"
    }

    pretty_syntax = {
        "addq": "add",
        "cmpq": "cmp",
        "movq": "mov",
        "vaddpd": "add",
        "vmulpd": "mul",
        "vmovapd": "mov",
        "vfmadd231pd": "fma",
        "vbroadcastsd": "bcast"
    }


    def gen(self, env={}, syntax:Syntax = Syntax.inline, depth=0):

        result = ""
        if syntax == Syntax.inline:
            result += self.operation + " "
            result += ", ".join(x.gen(env,syntax) for x in self.inputs)
            if self.output is not None:
                result += ", " + self.output.gen(env,syntax)
            if self.comment is not None:
                result += "    ; " + self.comment
            return result

        elif syntax == Syntax.intel:
            result += self.intel_syntax.get(self.operation, self.operation) + " "
            if self.output is not None:
                result += self.output.gen(env,syntax) + ", "
            result += ", ".join(x.gen(env,syntax) for x in self.inputs)
            if self.comment is not None:
                result += "    ; " + self.comment
            return result

        elif syntax == Syntax.pretty:
            result += '  '*(depth-1)
            result += self.pretty_syntax.get(self.operation, self.operation) + " "
            result += ", ".join(x.gen(env,syntax) for x in self.inputs)
            if self.output is not None:
                result += " -> " + self.output.gen(env,syntax)
            if self.comment is not None:
                result += "    ; " + self.comment
            return result

        else:
            raise Exception("Valid syntaxes are: inline, intel, pretty")

    def outputs(self) -> Set[Register]:

        all_outputs = [self.output] + self.implied_outputs
        return set(x for x in all_outputs if isinstance(x,Register))


#TODO: Think about this more carefully
class LabelDeclaration:
    def __init__(self, label:Label) -> None:
        self.label = label

    def gen(self, env={}, syntax:Syntax=Syntax.inline, depth=0):
        result = ""
        if (syntax == Syntax.pretty):
            result += "  "*(depth-1)
        result += self.label.gen(env,syntax) + ":"
        return result

    def outputs(self):
        return set()



