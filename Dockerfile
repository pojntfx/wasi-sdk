FROM ubuntu:20.10

WORKDIR /opt

RUN apt update
RUN apt install -y wget cmake git autoconf automake autotools-dev libtool binaryen

RUN wget --no-check-certificate https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-12/wasi-sdk-12.0-linux.tar.gz

RUN tar xvzf wasi-sdk-12.0-linux.tar.gz

ENV PATH="/opt/wasi-sdk-12.0/bin:$PATH"
