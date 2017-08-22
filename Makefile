

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


