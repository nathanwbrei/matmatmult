from codegen.ast import *

# Convenient statement constructors
def add(src: Operand, dest: Operand):
    stmt = AddStmt()
    stmt.src = src
    stmt.dest = dest
    return stmt

def label(name: str):
    stmt = LabelStmt()
    stmt.label = Label(name)
    return stmt

def fma(bcast_src: Operand, mult_src: Operand, add_dest: Operand):
    stmt = FmaStmt()
    stmt.bcast_src = bcast_src
    stmt.mult_src = mult_src
    stmt.add_dest = add_dest
    return stmt

def cmp(lhs: Operand, rhs: Operand):
    stmt = CmpStmt()
    stmt.lhs = lhs
    stmt.rhs = rhs
    return stmt

def jump(label: str, backwards: bool):
    stmt = JumpStmt()
    stmt.label = label
    stmt.backwards = backwards
    return stmt



# Fluent interface
class BlockBuilder(Block):

    def __init__(self, description: str, parent: "BlockBuilder" = None):
        self.parent = parent
        self.comment = description
        self.contents = []
        self.block.description = description

    def add(self, stmt: AsmStmt):
        self.contents.append(stmt)
        return self

    def open(self, description: str):
        b = BlockBuilder(description, parent=self)
        self.contents.append(b)
        return b

    def close(self):
        return self.parent



# S-expression interface
def block(description: str, *args: List[AsmStmt]):
    b = BlockBuilder(description)
    b.contents = args
    return b



