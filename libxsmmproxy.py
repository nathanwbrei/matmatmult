#!/usr/local/bin/python3

PATH_TO_LIBXSMM = "../libxsmm/bin/libxsmm_gemm_generator"
ALGORITHM = "unrolled"

import argparse
import subprocess
import traceback
from sys import argv

import sparsemmgen
from parameters import Parameters


def delegate():

	# Delegate codegen to actual libxsmm
	print("Delegating request...")
	argv[0] = PATH_TO_LIBXSMM
	result = subprocess.run(argv)
	exit()


def main(args):	

	# Decide whether to handle this request or delegate it
	if (args.sparsity == "sparse" and
	    args.arch == "knl" and
	    args.prefetch == "nopf" and
	    args.precision == "DP"):

		try:
			params = Parameters(algorithm=ALGORITHM, **args.__dict__)
			sparsemmgen.main(params)

		except Exception as e:
			print(f"{e.__class__.__name__}: {e}")
			traceback.print_tb(e.__traceback__)
			delegate()

	else:
		delegate()



if __name__=="__main__":

	parser = argparse.ArgumentParser(description='Proxy the libxsmm library in order to include sparsemmgen.')

	parser.add_argument("sparsity", choices=['dense','dense_asm','sparse'])
	parser.add_argument("output_filename", help="Path to destination C++ file")
	parser.add_argument("output_funcname", help="Name for generated C++ function")

	parser.add_argument("m", type=int, help="Number of rows of A and C")
	parser.add_argument("n", type=int, help="Number of cols of B and C")
	parser.add_argument("k", type=int, help="Number of cols of A, rows of B")

	parser.add_argument("lda", type=int, help="Leading dimension of A (zero if A is sparse)")
	parser.add_argument("ldb", type=int, help="Leading dimension of B (zero if B is sparse)")
	parser.add_argument("ldc", type=int, help="Leading dimension of C")

	parser.add_argument("alpha", type=int, help="Alpha", choices=[-1,1])
	parser.add_argument("beta", type=int, help="Beta", choices=[0,1])
	parser.add_argument("align_a", type=int, help="Alignment of A: 0=False, 1=True")
	parser.add_argument("align_c", type=int, help="Alignment of C: 0=False, 1=True")

	parser.add_argument("arch", type=str, help="Machine architecture", choices=['knl'])
	parser.add_argument("prefetch", type=str, help="Prefetching strategy", choices=['nopf'])
	parser.add_argument("precision", type=str, help="Prefetching strategy", choices=['SP','DP'])

	parser.add_argument("mtx_filename", help="Path to MTX file describing the sparse matrix", nargs="?", default=None)
	args = parser.parse_args()
	main(args)




