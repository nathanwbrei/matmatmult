from sys import argv
import subprocess

path_to_libxsmm = "../libxsmm/bin/libxsmm_gemm_generator"


def main():

	# Unpack libxsmm arguments	
	sparsity = argv[0]                # "sparse","dense","dense_asm"
	output_filename = argv[1]
	funcname = argv[2]
	m = int(argv[3])
	n = int(argv[4])
	k = int(argv[5])
	lda = int(argv[6])              # < 1: sparse, o/w: dense
	ldb = int(argv[7])              # < 1: sparse, o/w: dense
	ldc = int(argv[8])
	alpha = int(argv[9])            # {-1, 1}
	beta = int(argv[10])            # {0, 1}
	align_a = int(argv[11])         # 0: unaligned, o/w: aligned
	align_c = int(argv[12])         # 0: unaligned, o/w: aligned
	arch = argv[13]                 # noarch, wsm, snb, hsw, knc, knl, knm, skx
	prefetch = argv[14]             # nopf, pfsigonly, ...
	precision = argv[15]            # I16, SP, DP
	matrix_filename = argv[16]

	# Decide whether to handle this request or delegate it
	handle_ourselves = False
	if sparsity == "sparse" and 
	   arch == "knl":
		handle_ourselves = True

	if handle_ourselves:
		# Assume dxsp for now
		print("Handling request")
	else:
		# Delegate codegen to actual libxsmm
		argv[0] = path_to_libxsmm
		result = subprocess.run(argv)

if __name__=="__main__":
	main()