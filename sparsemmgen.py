#!/usr/local/bin/python3

import argparse
from enum import Enum
from codegen import *
from codegen.ccode import make_cfunc
from algorithms import generalsparse, tiledsparse, unrolledsparse, blockedsparse

mtx_formats = ['any','csc','csr','bsc','bsr','bcsc','bcsr']
output_formats = ['cpp','gas','pretty']

generators = {
#			"auto":     autosparse,
			"unrolled": unrolledsparse,
			"tiled":    tiledsparse,
			"blocked":  blockedsparse,
			"general":  generalsparse
			}

class Parameters:

	def __init__(self,
				 algorithm: str, 
				 m: int, 
				 n: int, 
				 k: int, 
				 lda: int, 
				 ldb: int, 
				 ldc: int,
				 mtx_filename: str,

				 mtx_format: str = 'Any',
				 output_format: str = 'CPP',
				 output_funcname: str = None,
				 output_filename: str = None,
				 bm: int = None, 
				 bn: int = None, 
				 bk: int = None,
				 verbose: bool = False
				 ) -> None:

		self.algorithm = algorithm
		self.m, self.n, self.k = m, n, k
		self.lda, self.ldb, self.ldc = lda, ldb, ldc
		self.bm, self.bn, self.bk = bm, bn, bk
		self.mtx_filename = mtx_filename
		self.mtx_format = mtx_format
		self.output_format = output_format
		self.output_funcname = output_funcname
		self.output_filename = output_filename
		self.verbose = verbose

		# Validate inputs
		if algorithm not in generators:
			raise Exception(f"Invalid algorithm: '{algorithm}'")

		if mtx_format not in mtx_formats:
			raise Exception(f"Invalid mtx_format: '{mtx_format}'")

		if output_format not in output_formats:
			raise Exception(f"Invalid output_format: '{output_format}'")

		if lda == 0 || ldb != 0:
			raise Exception("Sparse x Dense not supported yet-- lda must be nonzero, ldb must be 0")
			


def main(params: Parameters) -> None:

	generator = generators[params.algorithm]
	params = generator.choose_params(params)
	block = generator.make_alg(params)

	if params.output_format == "pretty":
		text = prettyprinter.prettyprint(block)

	elif params.output_format == "gas":
		text = inlineprinter.render(block)

	else: # 'cpp'
		text = make_cfunc(params.output_funcname, block)

	if params.output_filename is None:
		print(text)

	else:
		with open(filename, "a") as f:
			f.write(text)



if __name__=="__main__":

	parser = argparse.ArgumentParser(description='Generate a sparse matrix multiplication algorithm.')

	parser.add_argument("algorithm", help="Choice of algorithm", choices = list(generators.keys()))

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

	parser.add_argument("--output_format", help="Output format", choices=output_formats, default="CPP")
	parser.add_argument("--output_funcname", help="Name for generated C++ function")
	parser.add_argument("--output_filename", help="Path to destination C++ file")

	parser.add_argument("-v", "--verbose", action="store_true")

	args = parser.parse_args()
	params = Parameters(**args.__dict__)
	main(params)





