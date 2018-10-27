
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

sns.set(style="white")

csvs = [
		("unrolled_sizing_2000", "experiments/unrolled_sizing/outputs/unrolled_sizing_2000.txt",1.0,4,None),
		("unrolled_sizing_500", "experiments/unrolled_sizing/outputs/unrolled_sizing_500.txt",None,7,5)
		]

for name,csv,center,vmax,vmin in csvs:

	data = pandas.read_csv(csv, names=["name","microsecs"])
	d2 = data.name.str.split("_",expand=True).fillna("0")

	data["name"] = d2[0] 
	data["bm"] = d2[1].astype(int)
	data["bn"] = d2[2].astype(int)
	data["bk"] = d2[3].astype(int)

	data = data.append([{"name":"unrolled", "bm":16, "bn":16, "bk":16}])
	data = data.append([{"name":"unrolled", "bm":16, "bn":24, "bk":24}])
	data = data.append([{"name":"unrolled", "bm":24, "bn":12, "bk":12}])
	data = data.append([{"name":"unrolled", "bm":24, "bn":16, "bk":16}])
	data = data.append([{"name":"unrolled", "bm":24, "bn":24, "bk":24}])

	libxsmm_microsecs = data[data['name'] == 'libxsmm'].microsecs[0]
	data["speedup"] = libxsmm_microsecs / data["microsecs"]


	for bm in [8,16,24]:

		data_subset = data[(data['name']=='unrolled') & (data['bm']==bm)]
		table = data_subset.pivot("bk","bn","speedup")
		table = table.sort_index(ascending=False)
		print(table)

		#cmap = sns.diverging_palette(220, 10, as_cmap=True)

		f, ax = plt.subplots(figsize=(7, 6))
		sns.heatmap(table, 
					annot=True, 
					fmt="1.2f", 
					linewidths=2., 
					ax=ax,
					#cmap=cmap, 
					center=center,
					vmax=vmax, 
					vmin=vmin,
					square=True, 
					cbar_kws={"shrink": .5})

		plt.savefig(f"doc/images/{name}_{bm}.pdf")


