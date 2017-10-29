from codegen import blocks, loop


def addq(*args):
	pass

def syscall():
	pass

def vmulpd(r1,r2,r3):
	pass


b = AsmBlock("Do something interesting.").body([

		addq(rax, 22),
		syscall(),

		loop(rdi,1,1,10).body([
			addq(rax, 32)
		]),

		vmulpd(ymm1,ymm2,ymm1)
	])

