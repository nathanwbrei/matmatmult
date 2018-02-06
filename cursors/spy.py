#!/usr/local/bin/python3

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
    



