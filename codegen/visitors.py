

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



from codegen.ast import *

class Visitor:

    def visitStmt(self, stmt: GenericStmt) -> None:
        raise NotImplementedError()

    def visitMov(self, stmt: MovStmt) -> None:
        raise NotImplementedError()

    def visitAdd(self, stmt: AddStmt) -> None:
        raise NotImplementedError()

    def visitLabel(self, stmt: LabelStmt) -> None:
        raise NotImplementedError()

    def visitFma(self, stmt: FmaStmt) -> None:
        raise NotImplementedError()

    def visitCmp(self, stmt: CmpStmt) -> None:
        raise NotImplementedError()

    def visitJump(self, stmt: JumpStmt) -> None:
        raise NotImplementedError()

    def visitData(self, stmt: DataStmt) -> None:
        raise NotImplementedError()

    def visitBlock(self, stmt: Block) -> None:
        raise NotImplementedError()

    def visitCommand(self, stmt: Command) -> None:
        raise NotImplementedError()
