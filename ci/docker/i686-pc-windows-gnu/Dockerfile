FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y --no-install-recommends \
  ca-certificates \
  make \
  file \
  libc6-dev \
  gcc \
  gcc-mingw-w64-i686

# after libc6-dev, i686-linux has only: gcc-multilib
# mingw-w64-tools: has gendef, genidl, pkg-config, widl

# FIXME: this fails to link, with undefined references to: _Unwind_RaiseException _Unwind_Resume __mingwthr_key_dtor
# Reason is that Rust uses DWARF2 unwinder for this target, whereas Ubuntu's (and many Linux distro's) i686 mingw toolchain uses SJLJ unwinding
# https://github.com/rust-lang/rust/issues/32859 suggests using RUSTFLAGS="-C panic=abort" (which in turn forces nightly and -Zpanic_abort_tests), but issue persists
# perhaps because of https://github.com/rust-lang/rust/issues/53301

ENV CARGO_TARGET_I686_PC_WINDOWS_GNU_LINKER=i686-w64-mingw32-gcc \
  CARGO_TARGET_I686_PC_WINDOWS_GNU_RUNNER=echo

#  RUSTFLAGS="-Cpanic=abort -Zpanic_abort_tests ?-Clink-args=-mwindows"
