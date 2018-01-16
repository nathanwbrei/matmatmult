
# Matrix format enum
ANY = 0
CSC = 1
CSR = 2
BSC = 3
BSR = 4
BCSC = 5
BCSR = 6

# Family enum
DxSpAny = 0
DxSpUnrolled = 1
DxSpTiled = 2
DxSpBlocked = 3
DxSpPadded = 4
DxSpPaddedDiag = 5
DxSpGeneral = 6
#TxSpUnrolled = 6
#SpxDTransposed = 7
#SpxDDiag = 8

# Output format enum
CPP = 0
GAS = 1
PRETTY = 2


class DxSpParameters:
	m: int
	n: int
	k: int
	lda: int
	ldc: int
	mtx_file: str
	mtx_fmt: int


# make_alg :: params -> AsmBlock
def make_alg(params, family=0):

	if family==0:
		# Find best family, best params
		pass
	else:
		# Find best params for given family
		pass

	# Generate alg for best params


def main(params, family=0, output_format=0, filename=None):

	alg = make_alg(params, family)
	text = alg.render(output_format)
	if filename == None:
		print(text)
	else:
		with open(filename, "a") as f:
			f.write(text)


if __name__=="__main__":
	# Parse arguments: 
	#  m,n,k,lda,ldb,ldb,ldc,mtx
	#  family
	#  outputformat
	#  filename

	main(params, family, output_format, filename)




