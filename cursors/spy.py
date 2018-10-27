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



from matplotlib import pyplot, colors # type: ignore
from pylab import savefig # type: ignore
import argparse
import seaborn

from cursors.matrix import Matrix


def spy(matrix: Matrix, filename: str, tick_interval=8) -> None:

    m = matrix._underlying
    rows, cols = m.shape

    colormap = colors.ListedColormap(['white', 'black'])

    pyplot.xticks(range(0, cols+1, tick_interval))
    pyplot.yticks(range(0, rows+1, tick_interval))
    pyplot.tick_params(axis='both', which='major', labelsize=5)
    pyplot.grid(color='r', linestyle='-', linewidth=1)
    pyplot.imshow(m, interpolation='nearest', cmap=colormap, aspect='equal')

    savefig(filename)



if __name__=="__main__":

    parser = argparse.ArgumentParser(description="Show the sparsity pattern of a matrix")

    parser.add_argument("source", help="Path to existing MTX file")
    parser.add_argument("destination", help="Path to future PDF file")
    parser.add_argument("-i", "--interval", type=int, help="Tick interval", default=8)

    args = parser.parse_args()
    m = Matrix.load_pattern(args.source)
    spy(m, args.destination, args.interval)
    



