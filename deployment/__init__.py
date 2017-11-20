
from deployment.slurm import *
from deployment.build import *
from deployment.analysis import *
import time



def run(e: Experiment, c: Cluster = coolmuc3):
    make_script(e,c)
    make_executable(e)

    send(e.reldir+"/"+e.script, c)
    send("build/"+e.executable, c)
    j = submit(e, c)
    print(f"Submitted job {j.jobid}")

    finished = False
    while not finished:
        time.sleep(5)
        file_found = retrieve(j)
        status = monitor(j)
        print(f"{str(status)}. Found output: {str(file_found)}")
        finished = file_found and status==Status.ABSENT

    contents = read_data(j)
    print("".join(contents))

if __name__=="__main__":
    run(exp2)

