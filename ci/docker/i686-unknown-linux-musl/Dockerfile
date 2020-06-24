FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y --no-install-recommends \
  ca-certificates \
  make \
  file \
  libc6-dev \
  linux-libc-dev-i386-cross \
  gcc-multilib \
  musl-tools

# after libc6-dev, i686-gnu has only: gcc-multilib
# FIXME: musl-tool->musl-dev only has /usr/{include,lib}/x86_64-linux-musl

ENV CC="musl-gcc" CFLAGS="-I /usr/i686-linux-gnu/include"
# CFLAGS is for the linux/* headers provided by linux-libc-dev-amd64-cross
