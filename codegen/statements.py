from operands import *


class AsmStatement:
    """ Represents a single assembly statement"""
    def __init__(self, operation, inputs, output,
                 implied_inputs=[], implied_outputs=[],
                 comment=None):
    
        self.operation = operation               # :: str
        self.inputs = inputs                     # :: [Operand]
        self.output = output                     # :: Operand
        self.implied_inputs = implied_inputs     # :: [Operand]
        self.implied_outputs = implied_outputs   # :: [Operand]
        self.comment = comment                   # :: str


    known_instructions = [
        ("cmp",          [(Constant,i64)], (Register,i64)),
        ("jl",           [(Label)], None),
        ("movq",         [(Register,i64)], (Register,i64)),
        ("movq",         [(Constant,i64)], (Register,i64)),
        ("movq",         [(MemoryAddress)], (Register,i64)),
        ("movq",         [(Register,i64)], (MemoryAddress)),
        ("addq",         [(Register,i64)], (Register,i64)),
        ("addq",         [(Constant,i64)], (Register,i64)),
        ("vaddpd",       [(Register,f64x4), (Register,f64x4)], (Register,f64x4)),
        ("vaddpd",       [(Register,f64x8), (Register,f64x8)], (Register,f64x8)),
        ("vmulpd",       [(Register,f64x4), (Register,f64x4)], (Register,f64x4)),
        ("vmulpd",       [(Register,f64x8), (Register,f64x8)], (Register,f64x8)),
        ("vmovapd",      [(MemoryAddress)], (Register,f64x4)),
        ("vmovapd",      [(MemoryAddress)], (Register,f64x8)),
        ("vfmadd231pd",  [(Register,f64x4), (Register,f64x4)], (Register,f64x4)),
        ("vfmadd231pd",  [(Register,f64x8), (Register,f64x8)], (Register,f64x8)),
        ("vfmadd231pd",  [(Register,f64x8), (MemoryAddress)], (Register,f64x8)),
        ("vbroadcastsd", [(MemoryAddress)], (Register,f64x4)),
        ("vbroadcastsd", [(MemoryAddress)], (Register,f64x8)),
    ]

    ops_lookup = {
        "add":   ["addq", "vaddpd"],
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
        "movq" : "mov"
    }

    pretty_syntax = {
        "addq": "add",
        "movq": "mov",
        "vaddpd": "add",
        "vmulpd": "mul",
        "vmovapd": "mov",
        "vfmadd231pd": "fma",
        "vbroadcastsd": "bcast"
    }


    def gen(self, env={}, syntax="inline"):

        if syntax == "inline":
            result = self.operation + " "
            result += ", ".join(x.gen(env,syntax) for x in self.inputs)
            result += ", " + self.output.gen(env,syntax)
            if self.comment is not None:
                result += "\t\t; " + self.comment
            return result

        elif syntax == "intel":
            result = intel_syntax.get(self.operation, self.operation) + " "
            result += ", ".join(x.gen(env,syntax) for x in self.inputs)
            result += ", " + self.output.gen(env,syntax)
            if self.comment is not None:
                result += "\t\t; " + self.comment
            return result

        elif syntax == "pretty":
            result = pretty_syntax.get(self.operation, self.operation) + " "
            result += ", ".join(x.gen(env,syntax) for x in self.inputs)
            result += " -> " + self.output.gen(env,syntax)
            if self.comment is not None:
                result += "\t\t; " + self.comment
            return result

        else:
            raise Exception("Valid syntaxes are: inline, intel, pretty")





