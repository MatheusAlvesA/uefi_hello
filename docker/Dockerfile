FROM ubuntu:22.04

RUN apt update && \
    apt install -y \
    build-essential \
    git \
    python3 \
    python3-distutils \
    uuid-dev \
    bison \
    flex \
    nasm 

ENV PYTHON_COMMAND /usr/bin/python3
RUN git clone "https://github.com/tianocore/edk2.git" "/usr/src/edk2"
WORKDIR /usr/src/edk2
RUN git submodule update --init
RUN make -C BaseTools

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
