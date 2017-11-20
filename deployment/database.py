
from datetime import datetime

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
        self.jobid = jobid
        self.submitdate = datetime.now()

    def filename(self):
        return self.experiment.name+"."+self.jobid+".out"

class Experiment:
    def __init__(self, name):
        self.name = name
        self.reldir = name
        self.executable = name
        self.script = name + ".sh"


coolmuc2 = Cluster("linuxcluster", "mpp2", "/home/hpc/pr63so/ga63qow2/experiments")
coolmuc3 = Cluster("knlcluster", "mpp3", "/home/hpc/pr63so/ga63qow2/experiments")
exp2 = Experiment("exp2")

