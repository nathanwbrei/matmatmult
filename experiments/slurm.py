
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



import re
from enum import Enum
import subprocess
from os import path
from typing import List

from experiments.database import *


Status = Enum('Status', ['PENDING','RUNNING','SUSPENDED','CANCELLED','COMPLETING',
                         'COMPLETED','CONFIGURING','FAILED','TIMEOUT','PREEMPTED',
                         'NODE_FAIL','SPECIAL_EXIT','ABSENT'])



def send(filename: str, c: Cluster) -> bool:
    return subprocess.run(["scp", filename, c.host+":"+c.basedir]).returncode == 0


def submit(e: Experiment, c: Cluster) -> Job:
    cmdstr = f'sbatch {c.basedir}/{e.script}'
    output = subprocess.run(["ssh", c.host, cmdstr],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE)
    m = re.match("Submitted batch job (\d+)", output.stdout.decode())
    if m is not None:
        jobid = m.groups()[0]
        return Job(c, e, jobid)
    else:
        print(output.stdout.decode())
        print(output.stderr.decode())
        raise Exception("Submit failed!")


def monitor(j: Job) -> Status:
    cmdstr = f"squeue -o %T -h -u {j.cluster.user} -j {j.jobid}"
    output = subprocess.run(["ssh", j.cluster.host, cmdstr],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE)
    status_str = output.stdout.decode().strip()
    if status_str == "":
        return Status.ABSENT
    else:
        return Status[status_str]

def jobs(c: Cluster) -> List[Job]:
    cmdstr = f'squeue -o "%j %A %F %T" -h -u {c.user}'
    output = subprocess.run(["ssh", c.host, cmdstr],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE)
    print(output.stdout.decode())
    return None

def cancel(j: Job) -> None:
    cmdstr = f"scancel -M {j.cluster.slurmname} {j.id}"
    output = subprocess.run(["ssh", j.cluster.host, cmdstr])


def retrieve(job):
    filename = job.filename()
    inputpath = path.join(job.cluster.basedir, "output", filename)
    outputpath = path.join(job.experiment.reldir, "output")
    result = subprocess.run(["scp", job.cluster.host+":"+inputpath, outputpath],
                            stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    return result.returncode == 0



