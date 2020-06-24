FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y --no-install-recommends \
  ca-certificates \
  make \
  file \
  gcc \
  libc6-dev \
  libc6-dev-arm64-cross \
  gcc-aarch64-linux-gnu

ENV CARGO_TARGET_AARCH64_UNKNOWN_LINUX_GNU_RUNNER=echo \
  CARGO_TARGET_AARCH64_UNKNOWN_LINUX_GNU_LINKER=aarch64-linux-gnu-gcc
