from algorithms.parameters import Parameters, BlockParameters, TiledParameters
from codegen.operands import *
from codegen.matrix import *



full_pattern: Matrix[bool] = Matrix(
    [[0,0,0, 0,0,0, 1,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,1, 0,0,0, 0,0,0],

     [0,0,0, 0,0,0, 1,1,1, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,1, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 1,0,1, 0,0,0, 0,0,0],

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

blocks_full: Matrix[int] = Matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 3, 0, 0],
     [1, 2, 0, 4, 2]])

blocks_partial_3: Matrix[int] = Matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 2, 0, 4, 2]])

blocks_partial_2: Matrix[int] = Matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 1, 0, 4, 1]])

blocks_bsc: Matrix[int] = Matrix(
    [[0, 0, 1, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 1, 0, 1, 1]])


spsp_3x3 = BlockParameters(
    name = "Star",
    m = 40, n = 15, k = 9, bm = 8, bn = 3, bk = 3,
    blocks = blocks_full,
    pattern_index = pattern_index)

tiled_full = TiledParameters(
    name = "StarTiledFull",
    m = 40, n = 15, k = 9, bm = 8, bn = 15, bk = 9,
    pattern = full_pattern
)

tiled_square = TiledParameters(
    name = "StarTiledSquare",
    m = 40, n = 15, k = 9, bm = 8, bn = 9, bk = 9,
    pattern = square_pattern
)

tiled_skinny = TiledParameters(
    name = "StarTiledSkinny",
    m = 40, n = 15, k = 9, bm = 8, bn = 3, bk = 9,
    pattern = skinny_pattern
)

