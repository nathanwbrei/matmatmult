

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




