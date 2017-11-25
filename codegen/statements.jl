

Register = String
Immediate = Int64
Label = String

struct MemoryAddress
    base_ptr :: Register
    index_ptr :: Nullable{Register}
    scale :: Int64
    displacement :: Int64
end

Operand = Union{Register, MemoryAddress, Immediate, Label}


abstract type Statement end

struct Block <: Statement
    contents :: Array{Statement, 1}
end

struct FmaStmt <: Statement
    lh_src :: Operand
    rh_src :: Register
    dest :: Register
end

struct AddStmt <: Statement
    lh_src :: Operand
    rh_src :: Operand
    dest :: Operand
end

struct LabelStmt <: Statement
    label :: Label
end

struct JumpStmt <: Statement
    label :: Label
    backwards :: Bool
end

struct CmpStmt <: Statement
    lhs :: Operand
    rhs :: Operand
end


function prettyPrint(stmt :: CmpStmt)
    return "cmp $stmt.lhs, $stmt.rhs"
end

function prettyPrint(stmt :: JumpStmt)
    return string("jl ", stmt.label, stmt.backwards ? "b" : "f")
end

function prettyPrint(stmt :: LabelStmt)
    return string(stmt.label, ":")
end

function prettyPrint(stmt :: AddStmt)
    return string("addq ", lhs, ", ", rhs)
end

function prettyPrint(stmt :: Block)
end








