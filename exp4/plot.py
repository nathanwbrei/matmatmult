
import scipy
import csv

raw_data_file = "exp4/output/exp4.26235.out"
nnzs = []
microsecs = []
baseline_nnzs = 0
baseline_microsecs = 0

with open(raw_data_file, "r") as f:
    r = csv.reader(f)
    for line in r:
        if line[0] != "baseline":
            nnzs.append(float(line[7]))
            microsecs.append(float(line[8]))
        else:
            baseline_nnzs = float(line[7])
            baseline_microsecs = float(line[8])

print(nnzs)
print(microsecs)
print(baseline_nnzs)
print(baseline_microsecs)

#nnzs = nnzs[:-5]
#microsecs = microsecs[:-5]
baseline_microsecs_list = [baseline_microsecs for nnz in nnzs]
baseline_gflops = [2*128*128*28*1e-3/baseline_microsecs for nnz in nnzs]
baseline_nzgflops = [2*128*nnz*1e-3/baseline_microsecs for nnz in nnzs]
gflops = [2*128*nnz*1e-3/time for (nnz,time) in zip(nnzs, microsecs)]

from matplotlib import pyplot as plt
plt.xlabel("Nonzeros")
plt.ylabel("Microseconds")
plt.xticks(scipy.arange(0, baseline_nnzs, 400))
plt.yticks(scipy.arange(0, max(microsecs+[baseline_microsecs]), 10))
plt.plot(nnzs, microsecs, "-o")
plt.axhline(y=baseline_microsecs, color="r", linestyle = '--')
plt.savefig("exp4/fig.pdf")

# Now let's make it nice
import prettyplotlib as ppl
from prettyplotlib import brewer2mpl

fig, ax = ppl.subplots(1)
ppl.plot(ax, nnzs, baseline_microsecs_list, label="Baseline wall clock time", linewidth=0.75)
ppl.plot(ax, nnzs, microsecs, label="Fully unrolled wall clock time", linewidth=0.75)
ppl.plot(ax, nnzs, microsecs, linewidth=0.75)
ppl.legend(ax)
plt.xlabel("Nonzeros")
plt.ylabel("Microseconds")
plt.savefig("exp4/fig2.pdf")

fig, ax = ppl.subplots(1)
plt.xlabel("Nonzeros")
plt.ylabel("GFlops")
ppl.plot(ax, nnzs, baseline_gflops, label="Baseline hardware GFlops", linewidth=0.75)
ppl.plot(ax, nnzs, baseline_nzgflops, label="Baseline nonzero GFlops", linewidth=0.75)
ppl.plot(ax, nnzs, gflops, label="Fully unrolled GFlops", linewidth=0.75)
ppl.legend(ax)
plt.savefig("exp4/fig3.pdf")




