FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y --no-install-recommends \
  ca-certificates \
  make \
  file \
  libc6-dev \
  libc6-dev-mipsel-cross \
  gcc \
  gcc-mipsel-linux-gnu

ENV CARGO_TARGET_MIPSEL_UNKNOWN_LINUX_GNU_RUNNER=echo \
  CARGO_TARGET_MIPSEL_UNKNOWN_LINUX_GNU_LINKER=mipsel-linux-gnu-gcc
