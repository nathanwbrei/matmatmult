#!/usr/local/bin/python3


#  @author Nathan Brei (nathan.w.brei AT tum.de)

#  @section LICENSE
#  Copyright (c) 2018, SeisSol Group
#  All rights reserved.
 
#  Redistribution and use in source and binary forms, with or without
#  modification, are permitted provided that the following conditions are met:

#  1. Redistributions of source code must retain the above copyright notice,
#    this list of conditions and the following disclaimer.

#  2. Redistributions in binary form must reproduce the above copyright notice,
#    this list of conditions and the following disclaimer in the documentation
#    and/or other materials provided with the distribution.

#  3. Neither the name of the copyright holder nor the names of its
#     contributors may be used to endorse or promote products derived from this
#     software without specific prior written permission.

#  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
#  IMPLIED WARRANTIES OF  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
#  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
#  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
#  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
#  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
#  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
#  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
#  ARISING IN ANY WAY OUT OF THE  USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
#  POSSIBILITY OF SUCH DAMAGE.



PATH_TO_LIBXSMM = "../libxsmm/bin/libxsmm_gemm_generator"
ALGORITHM = "unrolled"

import argparse
import subprocess
import traceback
from sys import argv

import sparsemmgen
from components.parameters import Parameters


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
	parser.add_argument("precision", type=str, help="Floating point precision", choices=['SP','DP'])

	parser.add_argument("mtx_filename", help="Path to MTX file describing the sparse matrix", nargs="?", default=None)
	args = parser.parse_args()
	main(args)




