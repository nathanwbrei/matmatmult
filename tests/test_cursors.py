
import unittest
from scipy import matrix
from codegen.cursors import *


class TestCursor(unittest.TestCase):

    blocks = matrix([[1, 2, 0, 0],
                     [2, 1, 2, 0],
                     [0, 2, 1, 3]])
    patterns = [
        matrix([[0, 0],
                [0, 0]]),

        matrix([[1, 1],
                [1, 1]]),

        matrix([[1, 0],
                [0, 1]]),

        matrix([[0, 1],
                [0, 0]])
    ]

    def test_blocksparse_move_look(self):

        c = BlockSparseCursor("K", rax, self.blocks, self.patterns)
        self.assertEqual(c.lookup,
                         [[0, 2, 6, -1, -1, -1, -1, -1],
                          [1, 3, -1, 7, -1, -1, -1, -1],
                          [4, -1, 8, 10, 14, -1, -1, -1],
                          [-1, 5, 9, 11, -1, 15, -1, -1],
                          [-1, -1, 12, -1, 16, 18, 20, -1],
                          [-1, -1, -1, 13, 17, 19, -1, 21]])

        self.assertEqual(8, c.abs_offset(Coords(2,2)))
        self.assertEqual(8, c.rel_offset(Coords(2,2)))

        s = c.move(Coords(down=2, right=2))  # Now at K[8]
        self.assertEqual("addq $64, %%rax", s.gen())

        s = c.move(Coords(down=1, units="blocks")) # Now at K[12]
        addr,comment = c.look(Coords(right=1,down=1)) # Looking at K[13]
        self.assertEqual(addr.offset.value, 8) # Takes 1 double to go from K[12] to K[13]

        return c
