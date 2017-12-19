from enum import Enum
from typing import List, Dict


AsmType = Enum('AsmType', ['unknown','i8','i16','i32','i64','f32','f64',
                           'f32x4','f32x8','f32x16','f64x2','f64x4','f64x8'])

AsmType.__doc__ = """Enum of different concrete types, the useful subset of
    the cross product {Int,Float} x {size} x {vector length}.
    Each Operand has exactly one concrete type."""

class Operand:
    pass


# TODO: Rename this 'Immediate'
class Constant(Operand):
    def __init__(self, value:int) -> None:
        self.value = value

    def __repr__(self):
        return f"Immediate: {self.value}"

    @property
    def ugly(self):
        return f"${self.value}"

    @property
    def nice(self):
        return str(self.value)


def c(n):
    """Sugar for conveniently defining integer constants"""
    return Constant(value=int(n))



class Label(Operand):
    _interns: Dict[str, int] = {}
    _last: int = -1
    def __init__(self, value: str) -> None:
        assert(isinstance(value, str))
        self.value = value
        if value in Label._interns:
            self.ordinal = Label._interns[value]
        else:
            self.ordinal = Label._last + 1
            Label._last += 1
            Label._interns[value] = self.ordinal

    @property
    def ugly(self):
        #return self.ordinal
        return self.value.upper() + "_%="

    @property
    def nice(self):
        return self.value

    def __repr__(self):
        return "Label: "+self.value

def l(label: str):
    return Label(label)


class Register(Operand):

    def __init__(self, typeinfo:AsmType, value:str) -> None:
        self.typeinfo = typeinfo
        self.value = str(value)

    @property
    def ugly(self):
        return "%%" + self.value

    @property
    def nice(self):
        return self.value

    def __repr__(self):
        return "Register: " + self.value


rax = Register(AsmType.i64, "rax")
rbx = Register(AsmType.i64, "rbx")
rcx = Register(AsmType.i64, "rcx")
rdx = Register(AsmType.i64, "rdx")
rdi = Register(AsmType.i64, "rdi")
rsi = Register(AsmType.i64, "rsi")

r   = lambda n: Register(AsmType.i64, "r"+str(n))
ymm = lambda n: Register(AsmType.f64x4, "ymm"+str(n))
zmm = lambda n: Register(AsmType.f64x8, "zmm"+str(n))




class MemoryAddress(Operand):

    def __init__(self,
                 base: Register,
                 index: Register,
                 scale: int,
                 disp: int) -> None:
        self.base = base
        self.index = index
        self.scale = scale
        self.disp = disp


    @property
    def nice(self):
        if self.index is not None and self.scale is not None:
            return f"[{self.base.nice}+{self.index.nice}*{self.scale}+{self.disp}]"
        else:
            return f"[{self.base.nice}+{self.disp}]"

    @property
    def ugly(self):
        if self.index is not None and self.scale is not None:
            return f"{self.disp}({self.base.ugly}, {self.index.ugly}, {self.scale})"
        else:
            return f"{self.disp}({self.base.ugly})"

    def __repr__(self):
        return "MemoryAddress: " + self.nice


def mem(base, index, scale, offset):
    return MemoryAddress(base, index, scale, offset)






