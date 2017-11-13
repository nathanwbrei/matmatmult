import re
from enum import Enum
from datetime import datetime
import subprocess

class Cluster:
    def __init__(self, host, name, basedir, user="ga63qow2"):
        self.host = host
        self.name = name
        self.basedir = basedir
        self.user = user

class Job:
    def __init__(self, cluster, experiment, jobid):
        self.cluster = cluster
        self.experiment = experiment
        self.submitdate = datetime.now()
        self.jobid = jobid

    def filename(self):
        return self.experiment.name+"."+self.jobid+".out"

class Experiment:
    def __init__(self, name):
        self.name = name
        self.reldir = name
        self.executable = name
        self.script = name + ".sh"


Status = Enum('Status', ['PENDING','RUNNING','SUSPENDED','CANCELLED','COMPLETING',
                         'COMPLETED','CONFIGURING','FAILED','TIMEOUT','PREEMPTED',
                         'NODE_FAIL','SPECIAL_EXIT','ABSENT'])


coolmuc2 = Cluster("linuxcluster", "mpp2", "/home/hpc/pr63so/ga63qow2/experiments")
coolmuc3 = Cluster("knlcluster", "mpp3", "/home/hpc/pr63so/ga63qow2/experiments")
exp2 = Experiment("exp2")


def send(c: Cluster, filename: str) -> bool:
    return subprocess.run(["scp", filename, c.host+":"+c.basedir]).returncode == 0


def submit(c: Cluster, e: Experiment) -> Job:
    cmdstr = f'sbatch {c.basedir}/{e.script}'
    output = subprocess.run(["ssh", c.host, cmdstr],
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
    cmdstr = f"squeue -o %T -h -u {j.cluster.uname} -j {j.id}"
    output = subprocess.run(["ssh", j.cluster.host, cmdstr],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE)
    status_str = r.stdout.decode()
    if status_str == "":
        return Status.ABSENT
    else:
        return Status[status_str]


def cancel(j: Job) -> bool:
    cmdstr = f"scancel -M {j.cluster.slurmname} {j.id}"
    output = subprocess.run(["ssh", j.cluster.host, cmdstr],
                            stdout=subprocess.PIPE,
                            stderr=subprocess.PIPE)
    return output


def retrieve(job):
    filename = job.experiment.outfilename(job.jobid)
    inputpath = cluster.basedir + "/" + filename
    outputpath = job.reldir + "/output/" + filename
    return subprocess.run(["scp", inputpath, outputpath]).returncode == 0



