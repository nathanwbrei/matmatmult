

LDFLAGS_MACOS = -arch x86_64 -macosx_version_min 10.10 -lSystem -no_pie 

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


patternsparse: dense_x_blocksparse/exp.c
	gcc -g -std=c11 -O0 -o build/dense_x_patternsparse dense_x_blocksparse/exp.c

matrix_tests: dense_x_blocksparse/harness.c dense_x_blocksparse/blocksparse.h
	gcc -g -std=c11 -O0 -o build/matrix_tests common/matrix_tests.c
