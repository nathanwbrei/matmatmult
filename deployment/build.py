from subprocess import run, PIPE

script_template = """
#!/bin/bash
#SBATCH -o output/{expname}.%j.out
#SBATCH -D {basedir}
#SBATCH -J spmmexp
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

    destination = os.path.join(e.reldir, e.script)
    contents= script_template.format(expname = e.name,
                                     basedir = c.basedir,
                                     clustername = c.name,
                                     executable = e.executable)
    with open(destination, "w") as f:
        f.write(contents)


def make_executable(e:Experiment):

    src = os.path.join(e.reldir, e.executable+".c")
    dest = os.path.join("build", e.executable)

    cmds = ["g++", "-mavx512f", "-std=c++11", "-O3", "-DNDEBUG",
            "-lrt", "-o", dest, src]

    output = run(cmds, stdout=PIPE, stderr=PIPE)

    return output



