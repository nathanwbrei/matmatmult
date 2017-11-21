

# Need a native Python matrix type.
# Lists of lists are too cumbersome, and scipy does not understand typing.
# Also don't want to introduce a hard dependence on scipy if not necessary.

from typing import TypeVar, Generic, Union, Tuple
from scipy import full, matrix # type: ignore

T = TypeVar('T')
class Matrix(Generic[T]):

    def __init__(self, data):
        self._underlying = matrix(data)
        self.shape = self._underlying.shape
        self.rows = self.shape[0]
        self.cols = self.shape[1]

    @classmethod
    def full(cls, rows:int, cols:int, initial_value:T):
        """Create a brand new matrix of given size"""
        return cls(full((rows,cols), initial_value))

    def __repr__(self):
        return self._underlying.__repr__()

    def __getitem__(self, t) -> Union[T, "Matrix[T]"]:
        result = self._underlying[t]
        if isinstance(result, matrix):
            return Matrix(result)
        else:
            return result

    def __setitem__(self, cell:Tuple[int,int], value:T):
        self._underlying[cell] = value

    def __or__(self, other):
        return Matrix(self._underlying | other._underlying)

    def any(self, axis=None, out=None):
        return self._underlying.any(axis, out)

    def nnz(self) -> int:
        return sum(self[r,c] != 0 for r in range(self.rows)
                                  for c in range(self.cols))



