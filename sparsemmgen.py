#!/usr/local/bin/python3

import argparse

from codegen import *
from codegen.ccode import make_cfunc
from parameters import Parameters
from generators import dxsp_auto, dxsp_general, dxsp_tiled, dxsp_unrolled, dxsp_blocked


mtx_formats = ['any','csc','csr','bsc','bsr','bcsc','bcsr']

output_formats = ['cpp','gas','pretty']

generator_dict = {
			"auto":     dxsp_auto,
			"unrolled": dxsp_unrolled,
			"tiled":    dxsp_tiled,
			"blocked":  dxsp_blocked,
			"general":  dxsp_general
			}


def main(params: Parameters) -> None:

	if params.algorithm not in generator_dict:
		raise Exception(f"Invalid algorithm '{params.algorithm}'")

	generator = generator_dict[params.algorithm]
	params = generator.choose_params(params)       # type: ignore
	block = generator.make_alg(params)             # type: ignore

	# MyPy does not support 'module interfaces'
	# https://github.com/python/mypy/issues/1741

	if params.output_format == "pretty":
		text = prettyprinter.prettyprint(block)

	elif params.output_format == "gas":
		text = inlineprinter.render(block)

	elif params.output_format == "cpp":
		text = make_cfunc(params.output_funcname, block)

	else:
		raise Exception(f"Invalid output_format '{params.output_format}'")

	if params.output_filename is None:
		print(text)

	else:
		with open(params.output_filename, "a") as f:
			f.write(text)



if __name__=="__main__":

	parser = argparse.ArgumentParser(description='Generate a sparse matrix multiplication algorithm.')

	parser.add_argument("algorithm", help="Choice of algorithm", choices=list(generator_dict.keys()))

	parser.add_argument("m", type=int, help="Number of rows of A and C")
	parser.add_argument("n", type=int, help="Number of cols of B and C")
	parser.add_argument("k", type=int, help="Number of cols of A, rows of B")

	parser.add_argument("lda", type=int, help="Leading dimension of A (zero if A is sparse)")
	parser.add_argument("ldb", type=int, help="Leading dimension of B (zero if B is sparse)")
	parser.add_argument("ldc", type=int, help="Leading dimension of C")

	parser.add_argument("--bm", type=int, help="Size of m-blocks")
	parser.add_argument("--bn", type=int, help="Size of n-blocks")
	parser.add_argument("--bk", type=int, help="Size of k-blocks")

	parser.add_argument("mtx_filename", help="Path to MTX file describing the sparse matrix")
	parser.add_argument("--mtx_format", help="Constraint on sparsity pattern", choices=mtx_formats, default="Any")

	parser.add_argument("--output_format", help="Output format", choices=output_formats, default="cpp")
	parser.add_argument("--output_funcname", help="Name for generated C++ function")
	parser.add_argument("--output_filename", help="Path to destination C++ file")

	parser.add_argument("-v", "--verbose", action="store_true")

	args = parser.parse_args()
	params = Parameters(**args.__dict__)
	main(params)





