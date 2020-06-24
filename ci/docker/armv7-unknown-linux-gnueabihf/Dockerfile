FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y --no-install-recommends \
  ca-certificates \
  make \
  file \
  libc6-dev \
  libc6-dev-armhf-cross \
  gcc \
  gcc-arm-linux-gnueabihf

ENV CARGO_TARGET_ARMV7_UNKNOWN_LINUX_GNUEABIHF_RUNNER=echo \
  CARGO_TARGET_ARMV7_UNKNOWN_LINUX_GNUEABIHF_LINKER=arm-linux-gnueabihf-gcc
