from algorithms.parameters import Parameters
from scipy import matrix


full_pattern = matrix(
    [[0,0,0, 0,0,0, 1,0,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,0, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,1, 0,0,0, 0,0,0],

     [0,0,0, 0,0,0, 1,1,1, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,1,1, 0,0,0, 0,0,0],
     [0,0,0, 0,0,0, 0,0,1, 0,0,0, 0,0,0],

     [1,1,1, 1,0,1, 0,0,0, 1,0,0, 1,0,1],
     [1,1,1, 1,1,0, 0,0,0, 0,1,0, 1,1,0],
     [1,1,1, 0,1,1, 0,0,0, 0,0,1, 0,1,1]])


square_pattern = full_pattern[:, 0:12]
skinny_pattern = full_pattern[:,0:3] | full_pattern[:,6:9]

Z = full_pattern[0:3, 0:3]
A = full_pattern[6:9, 0:3]
B = full_pattern[6:9, 3:6]
C = full_pattern[3:6, 6:9]
D = full_pattern[0:3, 6:9]

pattern_index = [Z, A, B, C, D]

blocks_full = matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 3, 0, 0],
     [1, 2, 0, 4, 2]])

blocks_partial_3 = matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 2, 0, 4, 2]])

blocks_partial_2 = matrix(
    [[0, 0, 4, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 1, 0, 4, 1]])

blocks_bsc = matrix(
    [[0, 0, 1, 0, 0],
     [0, 0, 1, 0, 0],
     [1, 1, 0, 1, 1]])


defaults = Parameters(name = "Star 48x9x9 ",
                      Bm = 6,
                      Bn = 3,
                      blocks = blocks_full, # TODO: Vary this
                      patterns = pattern_index)


