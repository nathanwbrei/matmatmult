
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




import matplotlib.pyplot as plt
import seaborn as sns
import pandas

def plot(src="experiments/jump_penalty/output/exp_jump_penalty999.txt",
		 dest="doc/images/jump_penalty_new.pdf"):

	data = pandas.read_csv(src, names=["name","microsecs"])
	pieces = data.name.str.split("_", expand=True)
	data["generator"] = pieces[4]
	data["bk"] = pieces[2].astype(int)
	data["nnzs"] = pieces[3].astype(int)
	data["njumps"] = 512/data["bk"]

	jump_samples = data[data["generator"] == "general"]
	libxsmm_samples = data[data["generator"] == "libxsmm"]
	unrolled_samples = data[data["generator"] == "unrolled"]
	unrolled_samples.njumps = 0

	table = jump_samples.pivot("njumps","nnzs","microsecs")
	#libxsmm_table = libxsmm_samples.pivot("bk","nnzs","microsecs")
	unrolled_table = unrolled_samples.pivot("njumps","nnzs","microsecs")

	table = unrolled_table.append(table)
	print(table)
	#table['dense'] = libxsmm_table
	#table = table[['dense',0,1,4,8,12,24]]

	sns.set(style="darkgrid")
	f, ax = plt.subplots(figsize=(7, 6))
	table.plot(ax=ax, style='o-')
	plt.xlabel("Number of jumps")
	plt.ylabel("Microseconds")
	plt.legend(loc='best', title='Nonzeros')
	plt.axhline(y=14.67, color="k", linestyle = '--')

	#plt.xlim([-1,120])
	#plt.ylim([0,35])
	#unrolled_table.plot(style='bx', label='UnrolledReal')

	plt.savefig(dest)
	return table, unrolled_table, unrolled_samples





if __name__=="__main__":
	plot()


