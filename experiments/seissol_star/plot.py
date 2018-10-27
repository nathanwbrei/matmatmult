
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


def plot(src="experiments/seissol_star/output/seissol_star_2.txt",
		 dest="doc/images/seissol_comparison"):

	sns.set(style="darkgrid")

	data = pandas.read_csv(src, names=["name","microsecs"])
	pieces = data.name.str.split("_", expand=True)
	data["matrix"] = pieces[3]
	data["algorithm"] = pieces[4]



	for matrix in ["9x15", "9x9", "27x27"]:
		dd = data[data['matrix'] == matrix]
		libxsmm_microsecs = dd[dd['algorithm'] == 'libxsmm'].microsecs.mean()
		dd["speedup"] = libxsmm_microsecs / dd["microsecs"]

		print(dd)

		f, ax = plt.subplots(figsize=(6, 6))
		bp = sns.barplot(x="algorithm", y="speedup", data=dd,
						 ax=ax, 
						 saturation=0.5, 
						 ci=None)

		plt.title(matrix + " SeisSol Star")
		plt.xlabel("Algorithm")
		plt.ylabel("Speedup")
		plt.savefig(dest + "_" + matrix + ".pdf")



	#cmap = sns.diverging_palette(220, 10, as_cmap=True)





if __name__=="__main__":
	plot()
