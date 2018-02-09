import matplotlib.pyplot as plt
import seaborn as sns
import pandas

sns.set(style="white")

csvs = [
		("unrolled_sizing_2000", "experiments/unrolled_sizing/outputs/unrolled_sizing_2000.txt",1.0,4),
		("unrolled_sizing_500", "experiments/unrolled_sizing/outputs/unrolled_sizing_500.txt",None,7)
		]

for name,csv,center,vmax in csvs:

	data = pandas.read_csv(csv, names=["name","microsecs"])
	d2 = data.name.str.split("_",expand=True).fillna("0")

	data["name"] = d2[0] 
	data["bm"] = d2[1].astype(int)
	data["bn"] = d2[2].astype(int)
	data["bk"] = d2[3].astype(int)

	data = data.append([{"name":"unrolled", "bm":16, "bn":16, "bk":16}])
	data = data.append([{"name":"unrolled", "bm":16, "bn":24, "bk":24}])

	libxsmm_microsecs = data[data['name'] == 'libxsmm'].microsecs[0]
	data["speedup"] = libxsmm_microsecs / data["microsecs"]


	for bm in [8,16]:

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
					square=True, 
					cbar_kws={"shrink": .5})

		plt.savefig(f"doc/images/{name}_{bm}.pdf")


