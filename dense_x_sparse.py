
from sys import argv
from enum import Enum
from algorithms import generalsparse, tiledsparse, unrolledsparse, blockedsparse

DxSpAlgorithm = Enum('DxSpAlgorithm', ['Any','Unrolled','Blocked','Padded','PaddedDiag','General'])

OutputFormat = Enum('OutputFormat', ['CPP','GAS','Pretty'])


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

families = {"unrolled": unrolledsparse,
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

	params = Parameters()
	p.m = int(argv[1])
	p.n = int(argv[2])
	p.k = int(argv[3])
	p.lda = int(argv[4])              # < 1: sparse, o/w: dense
	#p.ldb = int(argv[5])              # < 1: sparse, o/w: dense
	#assert(ldb == 0)
	p.ldc = int(argv[6])

	mtx_filename = argv[8]
	funcname = argv[7]
	if len(argv) > 9:
		output_filename = argv[9]

	main(params, family, output_format, filename)




