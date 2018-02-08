
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
    def __init__(self, name, text, reldir):
        self.name = name
        self.text = text
        self.reldir = reldir

        self.executable = name
        self.script = name + ".sh"

