#!/usr/local/bin/python3

import argparse
from enum import Enum
from codegen import *
from algorithms import generalsparse, tiledsparse, unrolledsparse, blockedsparse

mtx_formats = ['Any','CSC','CSR','BSC','BSR','BCSC','BCSR']
output_formats = ['CPP','GAS','Pretty']

MatrixFormat = Enum('MatrixFormat', mtx_formats)
OutputFormat = Enum('OutputFormat', output_formats)

class Parameters:
	name: str
	m: int
	n: int
	k: int
	lda: int
	ldb: int
	ldc: int
	mtx_pattern: Matrix[bool]
	mtx_format: MatrixFormat
	mtx_filename: str

families = {
#			"auto":     autosparse,
			"unrolled": unrolledsparse,
			"tiled":    tiledsparse,
			"blocked":  blockedsparse,
			"general":  generalsparse
			}

def make_alg(params: Parameters, family: str) -> Block:

	family = families[family]
	params = family.choose_params(params)
	alg = family.make_alg(params)
	return alg


def main(params: Parameters,
		 family: str = None,
		 output_format: OutputFormat = OutputFormat.Pretty,
		 filename: str = None):

	alg = make_alg(params, family)
	text = alg.render(output_format)
	if filename == None:
		print(text)
	else:
		with open(filename, "a") as f:
			f.write(text)


if __name__=="__main__":

	parser = argparse.ArgumentParser(description='Generate a sparse matrix multiplication algorithm.')

	parser.add_argument("algorithm", help="Choice of algorithm", choices = list(families.keys()))

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

	p = Parameters()
	p.m = args.m
	p.n = args.n
	p.k = args.k
	p.lda = args.lda
	p.ldb = args.ldb
	p.ldc = args.ldc

	print(args)
	#main(p, args.algorithm, args.output_format, args.output_filename)




