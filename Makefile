

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



exp_seissol_star-build:
	icpc -O1 -xMIC-AVX512 -I include -DNDEBUG -std=c++11 -lrt -o build/exp_seissol_star experiments/seissol_star/generated/exp_seissol_star.cpp
	objdump -D build/exp_seissol_star > experiments/seissol_star/output/seissol_star_o1.asm
	
exp_seissol_star-run:
	srun build/exp_seissol_star > experiments/seissol_star/output/seissol_star.txt

exp_jump_penalty-build:
	icpc -O1 -xMIC-AVX512 -I include -DNDEBUG -std=c++11 -lrt -o build/exp_jump_penalty experiments/jump_penalty/generated/exp_jump_penalty.cpp
	
exp_jump_penalty-run:
	srun build/exp_jump_penalty > experiments/jump_penalty/output/jump_penalty.txt

exp_jump_scaling-build:
	icpc -O1 -xMIC-AVX512 -I include -DNDEBUG -std=c++11 -lrt -o build/exp_jump_scaling experiments/jump_scaling/generated/exp_jump_scaling.cpp
	#g++ -O3 -mavx512f -I include -DNDEBUG -std=c++11 -lrt -o build/exp_jump_scaling experiments/jump_scaling/generated/exp_jump_scaling.cpp
	objdump -D build/exp_jump_scaling > build/exp_jump_scaling.asm

exp_jump_scaling-run:
	srun build/exp_jump_scaling > experiments/jump_scaling/output/jump_scaling.txt

exp_unrolled_sizing-build:
	icpc -O1 -xMIC-AVX512 -I include -DNDEBUG -std=c++11 -lrt -o build/exp_unrolled_sizing experiments/unrolled_sizing/generated/exp_unrolled_sizing.cpp

exp_unrolled_sizing-run:
	srun build/exp_unrolled_sizing > experiments/unrolled_sizing/output/unrolled_sizing.txt




jumptable: src/jumptable/jumptable.cpp src/jumptable/jumptable_unrolled.cpp src/jumptable/jumptable_looped.cpp
	g++ -g -mavx512f -std=c++11 -O3 -o build/jumptable src/jumptable/jumptable.cpp
	g++ -g -mavx512f -std=c++11 -O3 -o build/jumptable_unrolled src/jumptable/jumptable_unrolled.cpp
	g++ -g -mavx512f -std=c++11 -O3 -o build/jumptable_looped src/jumptable/jumptable_looped.cpp
	objdump -D build/jumptable > src/jumptable/jumptable.asm
	objdump -D build/jumptable_unrolled > src/jumptable/jumptable_unrolled.asm
	objdump -D build/jumptable_looped > src/jumptable/jumptable_looped.asm

strided: src/strided/strided.cpp
#	g++ -g -mavx512f -std=c++11 -O3 -S -o src/strided/strided-gcc.asm src/strided/strided.cpp
#	icpc -O3 -xMIC-AVX512 -std=c++11 -S -o src/strided/strided-icpc.asm src/strided/strided.cpp
	icpc -g -O1 -xMIC-AVX512 -std=c++11 -I include -lrt -o build/test_strided src/strided/test_strided.cpp
	srun build/test_strided > src/strided/output.txt
	cat src/strided/output.txt


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
	cp doc/literature.bib build
	cd doc; pdflatex -shell-escape -interaction=nonstopmode -halt-on-error -output-directory=../build thesis.tex
	cd build; bibtex thesis
	cd doc; pdflatex -shell-escape -interaction=nonstopmode -halt-on-error -output-directory=../build thesis.tex
	rm build/literature.bib
	#https://tex.stackexchange.com/questions/12686/how-do-i-run-bibtex-after-using-the-output-directory-flag-with-pdflatex-when-f



