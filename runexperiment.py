#!/usr/local/bin/python3


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




from experiments import *
from experiments.unrolled_scaling.exp4 import make as make_unrolled_scaling

from experiments.seissol_star.exp import SeisSolStarExperiment
from experiments.unrolled_sizing.exp import UnrolledSizingExperiment
from experiments.jump_penalty.exp import JumpPenaltyExperiment
from experiments.jump_scaling.exp import JumpScalingExperiment

import os
import time
import argparse


exps = [SeisSolStarExperiment(),
        UnrolledSizingExperiment(),
        JumpPenaltyExperiment(),
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
    run(exps[args.exp], True, args.deploy, args.execute, args.wait)
    



