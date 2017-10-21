

from libxsmm_standard import *
from ccode import *

dest_filename = "../dense_x_blocksparse/gemms_dense_x_dense_py.h"
code = make_cfunc("gemm_dense_snb_py", make_gemm(snb), True)

with open(dest_filename, "w") as f:
    f.writelines(code)




