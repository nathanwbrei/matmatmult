
from codegen import experimenter


def pattern(nnz):
    metapattern = [[1,4,6],[7,2,5],[9,8,3]]
    return [[x <= nnz for x in row]
                      for row in metapattern]

def param_space():
    pass
