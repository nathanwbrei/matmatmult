FROM ubuntu:latest
COPY . /src
WORKDIR /src
RUN apt-get update && apt-get install -y \
    autoconf automake gcc build-essential git libtool make nasm tar curl gdb

CMD make
