
import unittest
from scipy import matrix
from codegen.cursors import *


class TestCursor(unittest.TestCase):

    blocks = matrix([[1, 2, 0, 3],
                     [2, 1, 2, 0],
                     [0, 2, 1, 2]])
    patterns = [
        matrix([[0, 0],
                [0, 0]]),

        matrix([[1, 1],
                [1, 1]]),

        matrix([[1, 0],
                [0, 1]]),

        matrix([[0, 1],
                [1, 1]])
    ]

    def test_blocksparse_move_look(self):

        c = BlockSparseCursor("K", rax, self.blocks, self.patterns)
        self.assertEqual(c.lookup,
                         [[ 0,  2,  6, -1, -1, -1, -1, 21],
                          [ 1,  3, -1,  7, -1, -1, 20, 22],
                          [ 4, -1,  8, 10, 14, -1, -1, -1],
                          [-1,  5,  9, 11, -1, 15, -1, -1],
                          [-1, -1, 12, -1, 16, 18, 23, -1],
                          [-1, -1, -1, 13, 17, 19, -1, 24]])

        self.assertEqual(8, c.abs_offset(Coords(2,2)))
        self.assertEqual(8, c.rel_offset(Coords(2,2)))

        s = c.move(Coords(down=2, right=2))  # Now at K[8]
        self.assertEqual("addq $64, %%rax", s.gen())

        s = c.move(Coords(down=1, units="blocks")) # Now at K[12]
        addr,comment = c.look(Coords(right=1,down=1)) # Looking at K[13]
        self.assertEqual(addr.offset.value, 8) # Takes 1 double to go from K[12] to K[13]

        return c

    def test_blocksparse_tab(self):

        c = BlockSparseCursor("K", rax, self.blocks, self.patterns)

        # Tab down
        stmt, disp = c.tab(1,0)
        self.assertEqual(8*4, stmt.inputs[0].value)
        self.assertEqual(4, c.abs_offset(c._cursor))

        # Tab right
        stmt, disp = c.tab(0,1)
        self.assertEqual(8, c.abs_offset(c._cursor))

        # Tab up
        stmt, disp = c.tab(-1,0)
        self.assertEqual(6, c.abs_offset(c._cursor))
        self.assertEqual(Coords(), disp)

        # Tab right to zero
        flag = 0
        try:
            c.tab(0,1)
        except:
            flag = 1
        self.assertEquals(1, flag)

        # Tab right to weird
        stmt, blockstart = c.tab(0,2)
        self.assertEqual(20, c.abs_offset(c._cursor))
        self.assertEqual(Coords(down=-1), blockstart)

        # Tab down from weird to normal
        c.tab(2,0)
        self.assertEqual(23, c.abs_offset(c._cursor))

        return c
