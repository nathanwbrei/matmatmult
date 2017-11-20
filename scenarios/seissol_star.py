from algorithms.parameters import Parameters
from codegen.operands import *
from codegen.matrix import *


full_pattern = Matrix(
    [[0,0,0, 0,0,0, 1,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,1, 0,0,0, 0,0,0],

     [0,0,0, 0,0,0, 1,1,1, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,1, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,1, 0,0,0, 0,0,0],

     [1,1,1, 1,0,1, 0,0,0, 1,0,0, 1,0,1],
     [1,1,1, 1,1,0, 0,0,0, 0,1,0, 1,1,0],
     [1,1,1, 0,1,1, 0,0,0, 0,0,1, 0,1,1]])


square_pattern = full_pattern[:, 0:9]
skinny_pattern = full_pattern[:,0:3] | full_pattern[:,6:9]

Z = full_pattern[0:3, 0:3]
A = full_pattern[6:9, 0:3]
B = full_pattern[6:9, 3:6]
C = full_pattern[3:6, 6:9]
D = full_pattern[0:3, 6:9]

pattern_index = [Z, A, B, C, D]

blocks_full = Matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 3, 0, 0],
     [1, 2, 0, 4, 2]])

blocks_partial_3 = Matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 2, 0, 4, 2]])

blocks_partial_2 = Matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 1, 0, 4, 1]])

blocks_bsc = Matrix(
    [[0, 0, 1, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 1, 0, 1, 1]])


spsp_3x3 = Parameters.from_sparsesparse(
    name = "Star",
    m = 40, n = 15, k = 9,
    A_regs = Matrix([[zmm(r+5*c) for c in range(3)] for r in range(5)]),
    C_regs = Matrix([[zmm(r+5*c+15) for c in range(3)] for r in range(5)]),
    blocks = blocks_full, # TODO: Vary this
    pattern_index = pattern_index)

tiled_full = Parameters.from_tiledsparse(
    name = "StarTiledFull",
    m = 40,
    n = 15,
    k = 9,
    A_regs = Matrix([[zmm(i) for i in range(32-9, 32)]]),
    C_regs = Matrix([[zmm(i) for i in range(15)]]),
    pattern = full_pattern
)

tiled_square = Parameters.from_tiledsparse(
    name = "StarTiledSquare",
    m = 40,
    n = 15,
    k = 9,
    A_regs = Matrix([[zmm(i) for i in range(32-9, 32)]]),
    C_regs = Matrix([[zmm(i) for i in range(9)]]),
    pattern = square_pattern
)

tiled_skinny = Parameters.from_tiledsparse(
    name = "StarTiledSkinny",
    m = 40,
    n = 15,
    k = 9,
    A_regs = Matrix([[zmm(r+2*c) for c in range(9)] for r in range(2)]),
    C_regs = Matrix([[zmm(r+2*c+26) for c in range(3)] for r in range(2)]),
    pattern = skinny_pattern
)

