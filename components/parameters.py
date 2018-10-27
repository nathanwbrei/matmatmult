
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



class Parameters:
	""" Container class for user-specified parameters. 
	    All attributes should be supplied as ctor args. """

	def __init__(self,
				 algorithm: str, 
				 m: int, 
				 n: int, 
				 k: int, 
				 lda: int, 
				 ldb: int, 
				 ldc: int,
				 mtx_filename: str,
				 mtx_format: str = 'any',
				 output_format: str = 'cpp',
				 output_funcname: str = None,
				 output_filename: str = None,
				 bm: int = None, 
				 bn: int = None, 
				 bk: int = None,
				 verbose: bool = False,
				 **kwargs  # Accept and ignore args which don't belong
				 ) -> None:
	
		self.algorithm = algorithm
		self.verbose = verbose

		self.m = m
		self.n = n
		self.k = k

		self.lda = lda
		self.ldb = ldb
		self.ldc = ldc

		self.bm = bm
		self.bn = bn
		self.bk = bk

		self.mtx_filename = mtx_filename
		self.mtx_format = mtx_format

		self.output_format = output_format
		self.output_funcname = output_funcname
		self.output_filename = output_filename


	def copy(self, other):
		""" Updates contents """
		Parameters.__init__(self, **other.__dict__)

	

