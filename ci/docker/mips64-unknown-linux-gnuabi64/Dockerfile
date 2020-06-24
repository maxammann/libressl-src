FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y --no-install-recommends \
  ca-certificates \
  make \
  file \
  libc6-dev \
  libc6-dev-mips64-cross \
  gcc \
  gcc-mips64-linux-gnuabi64

ENV CARGO_TARGET_MIPS64_UNKNOWN_LINUX_GNUABI64_RUNNER=echo \
  CARGO_TARGET_MIPS64_UNKNOWN_LINUX_GNUABI64_LINKER=mips64-linux-gnuabi64-gcc
