

class Coords:
    """ Coords is a container for relative logical matrix coordinates.
    """
    def __init__(self, down:int=0, right:int=0, units:str="cells") -> None:
        self.down_cells = 0
        self.right_cells = 0
        self.down_vecs = 0
        self.right_vecs = 0
        self.down_blocks = 0
        self.right_blocks = 0
        self.update(down,right,units)


    def go(self, down:int=0, right:int=0, units:str="cells"):
        return self + Coords(down, right, units)


    def update(self, down:int=0, right:int=0, units:str="cells"):
        if units=="cells":
            self.down_cells += down
            self.right_cells += right

        elif units=="vectors":
            self.down_vecs += down
            self.right_vecs += right

        elif units=="blocks":
            self.down_blocks += down
            self.right_blocks += right

        else:
            raise Exception("Units must be cells, vectors, or blocks")


    def __add__(self, other:"Coords"):
        result = Coords()
        result.down_cells += self.down_cells + other.down_cells
        result.right_cells += self.right_cells + other.right_cells
        result.down_vecs += self.down_vecs + other.down_vecs
        result.right_vecs += self.right_vecs + other.right_vecs
        result.down_blocks += self.down_blocks + other.down_blocks
        result.right_blocks += self.right_blocks + other.right_blocks
        return result

    def __neg__(self):
        result = Coords()
        result.down_cells =  -self.down_cells
        result.right_cells = -self.right_cells
        result.down_vecs = -self.down_vecs
        result.right_vecs = -self.right_vecs
        result.down_blocks = -self.down_blocks
        result.right_blocks = -self.right_blocks
        return result

    def __sub__(lhs,rhs):
        result = Coords()
        result.down_cells =  lhs.down_cells - rhs.down_cells
        result.right_cells = lhs.right_cells - rhs.right_cells
        result.down_vecs = lhs.down_vecs - rhs.down_vecs
        result.right_vecs = lhs.right_vecs - rhs.right_vecs
        result.down_blocks = lhs.down_blocks - rhs.down_blocks
        result.right_blocks = lhs.right_blocks - rhs.right_blocks
        return result

    def __eq__(self, other):
        return self.down_cells == other.down_cells and \
            self.down_vecs == other.down_vecs and \
            self.down_blocks == other.down_blocks and \
            self.right_cells == other.right_cells and \
            self.right_vecs == other.right_vecs and \
            self.right_blocks == other.right_blocks

    def __repr__(self):
        return f"(down={self.down_blocks}B,{self.down_vecs}V,{self.down_cells}C; " + \
               f"right={self.right_blocks}B,{self.right_vecs}V,{self.right_cells}C)"

