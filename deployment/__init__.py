import re
from enum import Enum
from datetime import datetime
import subprocess

class Cluster:
    def __init__(self, host, basedir, slurmname):
        self._host = host
        self._uname = "ga63qow2"
        self._basedir = basedir
        self._slurmname = slurmname

class Job:
    def __init__(self, cluster, experiment, jobid):
        self._cluster = cluster
        self._experiment = experiment
        self._submitDate = datetime.now()
        self._id = jobid

class RawResult:
    def __init__(self, job, filename):
        self._job = job
        self._filename = filename

class Experiment:
    def __init__(self, name):
        self._name = name
        self._rel_dir = name
        self._executable = name
        self._script = name + ".sh"

    def outfilename(self, jobid):
        return self._name+"."+jobid+".out"


class Status(Enum):
    SUBMITTED, QUEUED, WORKING, FINISHED, UNKNOWN = range(4)


coolmuc2 = Cluster("linuxcluster", "/home/hpc/pr63so/ga63qow2/experiments", "mpp2")
coolmuc3 = Cluster("knlcluster", "/home/hpc/pr63so/ga63qow2/experiments", "mpp3")
exp2 = Experiment("exp2")


def send(c: Cluster, filename: str) -> bool:
    return subprocess.run(["scp", filename, c._host+":"+c._basedir]).returncode == 0


def submit(c: Cluster, e: Experiment) -> Job:
    cmdstr = f'sbatch {c._basedir}/{e._script}'
    output = subprocess.run(["ssh", c._host, cmdstr],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE)
    m = re.match("Submitted batch job (\d+)", output.stdout.decode())
    if m is not None:
        jobid = m.groups()[0]
        return Job(c, e, jobid)
    else:
        print(output.stdout)
        print(output.stderr)
        return None


def monitor(j: Job) -> Status:
    cmdstr = f"squeue -o %T -h -u {j._cluster._uname} -j {j._id}"
    output = subprocess.run(["ssh", j._cluster._host, cmdstr],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE)
    status = r.stdout.decode()

    return output


def cancel(j: Job) -> bool:
    cmdstr = f"scancel -M {j._cluster._slurmname} {j._id}"
    output = subprocess.run(["ssh", j._cluster_host, cmdstr],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE)
    return output


def retrieve(job):
    filename = job._experiment.outfilename(job._id)
    inputpath = cluster._basedir + "/" + filename
    outputpath = job._rel_dir + "/output/" + filename
    return subprocess.run(["scp", inputpath, outputpath]).returncode == 0



