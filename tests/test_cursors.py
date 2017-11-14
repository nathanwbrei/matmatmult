
import unittest
from scipy import matrix
from codegen.cursors import *


blocks = matrix([[1, 2, 0, 0],
                 [2, 1, 2, 0],
                 [0, 2, 1, 2]])
patterns = [
    matrix([[0, 0],
            [0, 0]]),

    matrix([[1, 1],
            [1, 1]]),

    matrix([[1, 0],
            [0, 1]])
]

def test_blocksparse_tab():

    c = BlockSparseCursor("K", rax, blocks, patterns)
    return c
