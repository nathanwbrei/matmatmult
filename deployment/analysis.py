from deployment.database import *
from os import path

def read_data(job: Job):
    filepath = path.join(job.experiment.reldir, "output", job.filename())
    with open(filepath) as f:
        contents = f.readlines()
    return contents

