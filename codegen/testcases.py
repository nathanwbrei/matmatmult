import unittest
from ast import *
from x86_64 import *

class TestStatementConstruction(unittest.TestCase):

    def test_helloworld(self):
        syscalls = {"write":c(1), "exit":c(60)}
        message = "Hello world!"

        asm = Asm("Hello world program")
        asm.stmt("mov", syscalls["write"], rax)
        asm.stmt("mov", c(1), rdi)
        asm.stmt("mov", c(99999), rsi) #TODO: Do this correctly
        asm.stmt("mov", c(len(message)+1), rdx)
        asm.stmt("syscall")

        print(asm.gen())

        self.assertTrue(True)

if __name__ == '__main__':
    unittest.main()
