from algorithms.mntravelers import *
from algorithms.ktravelers import *


zero_p = matrix([[0, 0, 0],
                 [0, 0, 0],
                 [0, 0, 0]])

ones_p = matrix([[1, 1, 1],
                 [1, 1, 1],
                 [1, 1, 1]])

triangle_p = matrix([[0, 0, 1],
                     [0, 1, 1],
                     [1, 1, 1]])

blocks = matrix([[1, 2, 1],
                 [2, 0, 0],
                 [2, 2, 1]])


defaults = Parameters(name = "Dummy 48x9x9 blocksparse",
                      Bm = 6,
                      Bn = 3,
                      blocks = matrix([[1, 2, 1],
                                       [2, 0, 0],
                                       [2, 2, 1]]),
                      patterns = [zero_p, ones_p, triangle_p])


