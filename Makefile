

LDFLAGS_MACOS = -arch x86_64 -macosx_version_min 10.10 -lSystem -no_pie 

#EIGEN_HOME = /usr/local/Cellar/eigen/3.3.4/include/eigen3
EIGEN_HOME = ../eigen3

.PHONY: exp1 exp2 exp4 exp5

docker-image:
	docker build -t thesis_dev_env .

asmtests_helloworld_linux: asmtests/helloworld_linux.asm
	nasm -f elf64 -g -o build/helloworld_linux.o asmtests/helloworld_linux.asm
	ld -arch x86_64 -o build/helloworld_linux build/helloworld_linux.o

asmtests_helloworld_macos: asmtests/helloworld_macos.asm
	nasm -f macho64 -g -o build/helloworld_macos.o asmtests/helloworld_macos.asm
	ld $(LDFLAGS_MACOS) -e main build/helloworld_macos.o -o build/helloworld_macos

asmtests_call_incandprint: asmtests/incandprint.asm asmtests/call_incandprint.cpp
	nasm -f elf64 -g -o build/incandprint.o asmtests/incandprint.asm
	g++ -c -g -o build/call_incandprint.o asmtests/call_incandprint.cpp
	g++ -o build/call_incandprint build/call_incandprint.o build/incandprint.o

asmtests_sumarray: asmtests/sumarray.asm asmtests/call_sumarray.cpp
	nasm -f elf64 -g -o build/sumarray.o asmtests/sumarray.asm
	g++ -c -g -std=c++11 -o build/call_sumarray.o asmtests/call_sumarray.cpp
	g++ -o build/sumarray build/call_sumarray.o build/sumarray.o

clean:
	rm build/*

workbench: workbench/workbench.cpp workbench/gemms_libxsmm.c
	g++ -c -g -std=c++11 -O0 -o build/workbench.o workbench/workbench.cpp
	g++ -c -g -std=c++11 -O0 -o build/gemms_unoptimized.o workbench/gemms_unoptimized.cpp
	g++ -c -g -std=c++11 -O3 -o build/gemms_optimized.o workbench/gemms_optimized.cpp
	gcc -c -g -mavx2 -o build/gemms_libxsmm.o workbench/gemms_libxsmm.c
	nasm -f elf64 -g -o build/gemms_goto.o workbench/gemms_goto.asm
	g++ -o build/workbench \
		build/workbench.o \
		build/gemms_optimized.o \
		build/gemms_unoptimized.o \
		build/gemms_libxsmm.o \
		build/gemms_goto.o


exp1:
	#icpc -xCORE-AVX2 -std=c++11 -O3 -o build/baseline exp1/baseline.c -lrt -DNDEBUG
	#icpc -xCORE-AVX2 -std=c++11 -O3 -o build/exp1 exp1/exp.c -lrt -DNDEBUG
	g++ -mavx2 -std=c++11 -O3 -o build/baseline exp1/baseline.c -lrt -DNDEBUG
	g++ -mavx2 -std=c++11 -O3 -o build/exp1 exp1/exp.c -lrt -DNDEBUG


exp2:
	#icpc -xCORE-AVX2 -std=c++11 -O3 -o build/baseline exp1/baseline.c -lrt -DNDEBUG
	#icpc -xCORE-AVX2 -std=c++11 -O3 -o build/exp1 exp1/exp.c -lrt -DNDEBUG
	g++ -mavx512f -std=c++11 -O3 -o build/baseline exp2/baseline.c -lrt -DNDEBUG
	g++ -mavx512f -std=c++11 -O3 -o build/exp2 exp2/exp2.c -lrt -DNDEBUG

exp4:
	PYTHONPATH="." python3 exp4/exp4.py

exp5:
	icpc -O3 -xMIC-AVX512 -I include -DNDEBUG -std=c++11 -lrt -o build/exp5 experiments/jump_penalty/generated/exp5.cpp
	#g++ -O3 -mavx512f -I include -DNDEBUG -std=c++11 -lrt -o build/exp5 experiments/jump_penalty/generated/exp5.cpp
	objdump -D build/exp5 > build/exp5.asm



jumptable: src/jumptable/jumptable.cpp src/jumptable/jumptable_unrolled.cpp src/jumptable/jumptable_looped.cpp
	g++ -g -mavx512f -std=c++11 -O3 -o build/jumptable src/jumptable/jumptable.cpp
	g++ -g -mavx512f -std=c++11 -O3 -o build/jumptable_unrolled src/jumptable/jumptable_unrolled.cpp
	g++ -g -mavx512f -std=c++11 -O3 -o build/jumptable_looped src/jumptable/jumptable_looped.cpp
	objdump -D build/jumptable > src/jumptable/jumptable.asm
	objdump -D build/jumptable_unrolled > src/jumptable/jumptable_unrolled.asm
	objdump -D build/jumptable_looped > src/jumptable/jumptable_looped.asm



generate_gen256:
	./sparsemmgen.py general 256 256 256 256 0 256 experiments/jump_penalty/generated/jump_penalty_1_200.mtx --bm 8 --bn 16 --bk 16


test_matrixops: src/cpptests/test_matrixops.cpp
	g++ -g -std=c++11 -O2 -o build/test_matrixops src/cpptests/test_matrixops.cpp
	build/test_matrixops

test_matrix: src/cpptests/test_matrix.cpp include/DenseMatrix.hpp include/SparseMatrix.hpp include/Matrix.hpp
	g++ -g -std=c++11 -O2 -o build/test_matrix src/cpptests/test_matrix.cpp
	build/test_matrix star.mtx

test_eigen: src/cpptests/test_eigen.cpp
	g++ -g -std=c++11 -O2 -I $(EIGEN_HOME) -o build/test_eigen src/cpptests/test_eigen.cpp
	build/test_eigen

test_generated: src/cpptests/test_generated.cpp
	g++ -g -mavx512f -std=c++11 -O2 -I $(EIGEN_HOME) -o build/test_generated src/cpptests/test_generated.cpp
	build/test_generated





presentation:
	cd doc; pdflatex -shell-escape -interaction=batchmode -halt-on-error -output-directory=../build presentation.tex

presentation-verbose:
	cd doc; pdflatex -shell-escape -interaction=nonstopmode -halt-on-error -output-directory=../build presentation.tex

presentation-auto:
	fswatch -0 -o -r -l 2 -e ".*" -i"\.tex" doc | xargs -0 -n 1 -I NONE make presentation

thesis:
	cd doc; pdflatex -shell-escape -interaction=nonstopmode -halt-on-error -output-directory=../build thesis.tex

thesis-quiet:
	cd doc; pdflatex -shell-escape -interaction=batchmode -halt-on-error -output-directory=../build thesis.tex

thesis-auto:
	fswatch -0 -o -r -l 2 -e ".*" -i"\.tex" doc | xargs -0 -n 1 -I NONE make thesis-quiet

thesis-refs:
	cd doc; pdflatex -shell-escape -interaction=nonstopmode -halt-on-error -output-directory=../build thesis.tex
	cp doc/literature.bib build
	cd build; bibtex thesis
	cd doc; pdflatex -shell-escape -interaction=nonstopmode -halt-on-error -output-directory=../build thesis.tex

	#https://tex.stackexchange.com/questions/12686/how-do-i-run-bibtex-after-using-the-output-directory-flag-with-pdflatex-when-f



