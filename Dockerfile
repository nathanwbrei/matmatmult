FROM ubuntu:latest
WORKDIR /src/matmatmult
RUN apt-get update && apt-get install -y \
    autoconf automake gcc build-essential git libtool make nasm gdb valgrind likwid
CMD bash
