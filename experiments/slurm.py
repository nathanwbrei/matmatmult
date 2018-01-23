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



