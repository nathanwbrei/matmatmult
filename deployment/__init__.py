
from enum import Enum
from datetime import datetime
import subprocess

class Cluster:
    def __init__(self, host, basedir, slurmname):
        self._host = host
        self._basedir = basedir
        self._slurmname = slurmname

class Job:
    def __init__(self, cluster, experiment):
        self._cluster = cluster
        self._experiment = experiment
        self._submitDate = datetime.now()
        self._id = None

class RawResult:
    def __init__(self, job, filename):
        self._job = job
        self._filename = filename

class Experiment:
    def __init__(self, name, rel_dir):
        self._name = name
        self._rel_dir = rel_dir

class Status(Enum):
    submitted, queued, working, finished = range(4)


coolmuc2 = Cluster("linuxcluster", "/home/hpc/pr63so/ga63qow2/experiments", "mpp2")
coolmuc3 = Cluster("knlcluster", "/home/hpc/pr63so/ga63qow2/experiments", "mpp3")


def send(c: Cluster, filename: str) -> bool:
    return subprocess.run(["scp", filename, cluster._host + ":" + cluster._basedir]).returncode == 0

def submit(c: Cluster, filename: str) -> Job:
    # salloc --nodes=1 --tasks-per-node=1
    # sbatch myjob.cmd => Submitted batch job ddddd.
    pass

def monitor(j: Job) -> Status:
    #squeue --clusters=mpp3
    pass

def retrieve(job):
    filename = job._id + ".csv"
    inputpath = cluster._basedir + "/" + filename
    outputpath = job._rel_dir + "/output/" + filename
    return subprocess.run(["scp", inputpath, outputpath]).returncode == 0


