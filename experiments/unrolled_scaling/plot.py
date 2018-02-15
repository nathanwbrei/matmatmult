
import scipy
import csv

raw_data_file = "experiments/unrolled_scaling/data/exp4.26235.out"
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

# Now let's make it nice
#import prettyplotlib as ppl
#from prettyplotlib import brewer2mpl

import matplotlib.pyplot as plt
import seaborn as sns
import pandas

sns.set(style="darkgrid")
fig, ax = plt.subplots(figsize=(6, 6))

plt.plot(nnzs, baseline_microsecs_list, label="Baseline wall clock time")
plt.plot(nnzs, microsecs, label="Fully unrolled wall clock time")
plt.legend()
plt.xlabel("Nonzeros")
plt.ylabel("Microseconds")
plt.savefig("doc/images/unrolled_scaling_time.pdf")

fig, ax2 = plt.subplots(figsize=(6, 6))
plt.xlabel("Nonzeros")
plt.ylabel("GFlops")
plt.plot(nnzs, baseline_gflops, label="Baseline hardware GFlops")
plt.plot(nnzs, baseline_nzgflops, label="Baseline nonzero GFlops")
plt.plot(nnzs, gflops, label="Fully unrolled GFlops")
plt.legend()
plt.savefig("doc/images/unrolled_scaling_flops.pdf")




