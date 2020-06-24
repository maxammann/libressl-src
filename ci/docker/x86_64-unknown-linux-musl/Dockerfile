FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y --no-install-recommends \
  ca-certificates \
  make \
  file \
  libc6-dev \
  linux-libc-dev-amd64-cross \
  musl-tools

ENV CC="musl-gcc" CFLAGS="-I /usr/x86_64-linux-gnu/include"
# CFLAGS is for the linux/* headers provided by linux-libc-dev-amd64-cross
