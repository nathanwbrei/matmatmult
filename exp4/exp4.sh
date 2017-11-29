#!/bin/bash
#SBATCH -o output/exp4.%j.out
#SBATCH -D /home/hpc/pr63so/ga63qow2/experiments
#SBATCH -J exp4
#SBATCH --get-user-env
#SBATCH --clusters=mpp3
#SBATCH --nodes=1-1
#SBATCH --cpus-per-task=28
#SBATCH --mail-type=end
#SBATCH --mail-user=xyz@xyz.de
#SBATCH --export=NONE
#SBATCH --time=01:00:00
source /etc/profile.d/modules.sh
./exp4
