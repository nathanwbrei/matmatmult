from subprocess import run, PIPE
from os import path
from deployment import *
import os

script_template = """\
#!/bin/bash
#SBATCH -o output/{expname}.%j.out
#SBATCH -D {basedir}
#SBATCH -J {expname}
#SBATCH --get-user-env
#SBATCH --clusters={clustername}
#SBATCH --nodes=1-1
#SBATCH --cpus-per-task=28
#SBATCH --mail-type=end
#SBATCH --mail-user=xyz@xyz.de
#SBATCH --export=NONE
#SBATCH --time=01:00:00
source /etc/profile.d/modules.sh
./{executable}
"""


def make_script(e:Experiment, c:Cluster):

    destination = path.join(e.reldir, e.script)
    contents= script_template.format(expname = e.name,
                                     basedir = c.basedir,
                                     clustername = c.name,
                                     executable = e.executable)
    with open(destination, "w") as f:
        f.write(contents)
    return destination


def make_executable(e:Experiment):

    src = path.join(e.reldir, e.executable+".cpp")
    dest = path.join("build", e.executable)

    cmds = [f"./linux g++ -mavx512f -std=c++11 -O3 -DNDEBUG -lrt -o {dest} {src}"]

    output = run(cmds, stdout=PIPE, stderr=PIPE, shell=True)

    if output.stdout:
        print("STDOUT:")
        print(output.stdout.decode())

    if output.stderr:
        print("STDRR:")
        print(output.stderr.decode())

    return output


if __name__ == "__main__":
    make_executable(exp2)

def __main__(*args):
    make_executable(exp2)

