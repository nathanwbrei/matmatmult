import unittest
from blocks import *
from loop import *

class TestStatementConstruction(unittest.TestCase):



    def test_helloworld(self):
        syscalls = {"write":c(1), "exit":c(60)}
        message = "Hello world!"

        asm = AsmBlock("Hello world program") \
                .stmt("movq", [syscalls["write"]], rax) \
                .stmt("movq", [c(1)], rdi) \
                .stmt("movq", [c(99999)], rsi) \
                .stmt("movq", [c(len(message)+1)], rdx) \
                .stmt("syscall", [], None)

        print(asm.gen())

        self.assertTrue(True)


    def test_nested_block(self):

        inner = AsmBlock("This should be inside") \
                    .stmt("movq", [ymm(1)], ymm(2)) \
                    .stmt("movq", [ymm(2)], ymm(3))

        outer = AsmBlock("This should be outside") \
                    .stmt("movq", [rax], rbx) \
                    .stmt("movq", [rbx], rcx) \
                    .include(inner) \
                    .stmt("movq", [rcx], rdx)

        print("GAS syntax")
        print(outer.gen())
        print()
        print("pretty syntax")
        print(outer.gen(syntax=Syntax.pretty))
        print()

        self.assertTrue(True)


    def test_loop(self):
        l = Loop(rax, c(0), c(10)) \
                .stmt("movq", [rdi+0], ymm(0)) \
                .stmt("movq", [rdi+32], ymm(1)) \
                .stmt("vaddpd", [ymm(0), ymm(1)], ymm(2)) \
                .stmt("movq", [ymm(2)], rdi+0)

        print("Loop code")
        print()
        print(l.gen())
        print()
        print("Pretty Loop code")
        print()
        print(l.gen(syntax=Syntax.pretty))
        print()



if __name__ == '__main__':
    unittest.main()
