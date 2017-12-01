
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

from matplotlib import pyplot as plt
plt.xlabel("Nonzeros")
plt.ylabel("Microseconds")
plt.xticks(scipy.arange(0, baseline_nnzs, 400))
plt.yticks(scipy.arange(0, max(microsecs+[baseline_microsecs]), 10))
plt.plot(nnzs, microsecs, "-o")
plt.axhline(y=baseline_microsecs, color="r", linestyle = '--')
plt.savefig("exp4/fig.pdf")
plt.show()



