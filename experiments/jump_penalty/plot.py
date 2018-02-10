import matplotlib.pyplot as plt
import seaborn as sns
import pandas

def plot(src="experiments/jump_penalty/output/jump_penalty.txt",
		 dest="doc/images/jump_penalty.pdf"):

	data = pandas.read_csv(src, names=["name","microsecs"])
	pieces = data.name.str.split("_", expand=True)
	data["generator"] = pieces[4]
	data["njumps"] = pieces[2].astype(int)
	data["nnzs"] = pieces[3].astype(int)

#	data = data[data["microsecs"] < 0.2]	


	jump_samples = data[data["generator"] == "general"]
	libxsmm_samples = data[data["generator"] == "libxsmm"]
	unrolled_samples = data[data["generator"] == "unrolled"]

	table = jump_samples.pivot("nnzs","njumps","microsecs")
	libxsmm_table = libxsmm_samples.pivot("nnzs","njumps","microsecs")
	unrolled_table = unrolled_samples.pivot("nnzs","njumps","microsecs")

	table['dense'] = libxsmm_table
	table[0] = unrolled_table
	table = table[['dense',0,1,4,8,12,24]]

	sns.set(style="darkgrid")
	f, ax = plt.subplots(figsize=(7, 6))
	table.plot()
	plt.xlabel("Nonzeros")
	plt.ylabel("Microseconds")
	plt.ylim([0,0.175])
	plt.legend(loc='best')
	plt.savefig(dest)


if __name__=="__main__":
	plot()


