FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y --no-install-recommends \
  ca-certificates \
  make \
  file \
  libc6-dev \
  libc6-dev-armel-cross \
  gcc \
  gcc-arm-linux-gnueabi

ENV CARGO_TARGET_ARM_UNKNOWN_LINUX_GNUEABI_RUNNER=echo \
  CARGO_TARGET_ARM_UNKNOWN_LINUX_GNUEABI_LINKER=arm-linux-gnueabi-gcc
