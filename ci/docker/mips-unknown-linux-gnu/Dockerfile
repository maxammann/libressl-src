FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y --no-install-recommends \
  ca-certificates \
  make \
  file \
  libc6-dev \
  libc6-dev-mips-cross \
  gcc \
  gcc-mips-linux-gnu

ENV CARGO_TARGET_MIPS_UNKNOWN_LINUX_GNU_RUNNER=echo \
  CARGO_TARGET_MIPS_UNKNOWN_LINUX_GNU_LINKER=mips-linux-gnu-gcc
