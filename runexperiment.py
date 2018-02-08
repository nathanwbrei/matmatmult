#!/usr/local/bin/python3

from experiments import *
from experiments.proof_of_concept.exp1 import make as make_proof_of_concept
from experiments.unrolled_scaling.exp4 import make as make_unrolled_scaling

from experiments.jump_penalty.exp import JumpPenaltyExperiment
from experiments.jump_scaling.exp import JumpScalingExperiment

import os
import time
import argparse


exps = [JumpPenaltyExperiment(),
        JumpScalingExperiment()
        ]

coolmuc3 = Cluster("knlcluster", "mpp3", "/home/hpc/pr63so/ga63qow2/experiments")



def run(e: Experiment, generate: bool, deploy: bool, execute: bool, wait: bool, 
        c: Cluster = coolmuc3):

    if generate:
        print(f"Generating...")
        e.make()
        make_script(e,c)
        make_executable(e)

    if deploy:
        print(f"Deploying...")
        for filename in os.listdir(e.reldir + "/generated"):
            send(e.reldir+"/generated/"+filename, c)
        send("build/"+e.executable, c)

    if execute:
        print(f"Executing...")
        j = submit(e, c)
        print(f"... Submitted job {j.jobid}")

    if wait:
        output_dir = e.reldir + "/output"
        if not path.exists(output_dir):
            os.mkdir(output_dir)

        print(f"Waiting...")
        finished = False
        while not finished:
            time.sleep(5)
            file_found = retrieve(j)
            status = monitor(j)
            print(f"{str(status)}. Found output: {str(file_found)}")
            finished = file_found and status==Status.ABSENT

        contents = read_data(j)
        print("".join(contents))

    print("Done.")




if __name__=="__main__":

    description = "Run an experiment:\n"
    for i, e in enumerate(exps):
        description += f"{i}: {e.text}\n"

    parser = argparse.ArgumentParser(description=description, 
                                     formatter_class=argparse.RawTextHelpFormatter)

    parser.add_argument("-g", "--generate", help="Generate CPP, etc", action="store_true")
    parser.add_argument("-d", "--deploy", help="Deploy on cluster", action="store_true")
    parser.add_argument("-x", "--execute", help="Execute on cluster", action="store_true")
    parser.add_argument("-w", "--wait", help="Wait until retrieval", action="store_true")

    parser.add_argument("exp", type=int, help="Choice of experiment", choices=range(len(exps)))

    args = parser.parse_args()
    run(exps[args.exp], args.generate, args.deploy, args.execute, args.wait)
    



