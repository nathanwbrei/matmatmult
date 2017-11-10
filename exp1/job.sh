#!/bin/bash
#SBATCH -o logs/%j.%N.out 
#SBATCH -D /home/hpc/pr63so/gu74geb2/matmatmult/
#SBATCH -J int
#SBATCH --get-user-env 
#SBATCH --clusters=mpp2
#SBATCH --nodes=1-1
#SBATCH --cpus-per-task=28
#SBATCH --mail-type=end 
#SBATCH --mail-user=xyz@xyz.de 
#SBATCH --export=NONE 
#SBATCH --time=01:00:00 
source /etc/profile.d/modules.sh

./build/baseline
./build/dense_x_patternsparse
