
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
