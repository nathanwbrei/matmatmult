
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



from subprocess import run, PIPE
from os import path
from experiments import *
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

    cmds = [f"./linux g++ -O3 -mavx512f -I ../eigen3 -I include -DNDEBUG -std=c++11 -lrt -o {dest} {src}"]

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

