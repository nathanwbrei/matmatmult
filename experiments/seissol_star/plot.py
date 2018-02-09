
import matplotlib.pyplot as plt
import seaborn as sns
import pandas

def plot(src="experiments/seissol_star/output/seissol_star.txt",
		 dest="doc/images/seissol_comparison.pdf"):

	sns.set(style="darkgrid")

	data = pandas.read_csv(src, names=["name","microsecs"])

	libxsmm_microsecs = data[data['name'] == 'libxsmm'].microsecs[0]
	data["speedup"] = libxsmm_microsecs / data["microsecs"]

	print(data)

	#cmap = sns.diverging_palette(220, 10, as_cmap=True)

	f, ax = plt.subplots(figsize=(7, 6))
	bp = sns.barplot(x="name", y="speedup", data=data, 
					 ax=ax, 
					 saturation=0.5, 
					 ci=None)

	plt.xlabel("Algorithm")
	plt.ylabel("Speedup")
	plt.savefig(dest)


if __name__=="__main__":
	plot()
