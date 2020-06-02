#!/bin/bash -e

LIBRESSL_VERSION="3.1.2"

SCRIPT_DIR=$(cd "$(dirname "$_")" && pwd)
echo "$SCRIPT_DIR"
cd "$SCRIPT_DIR" || { echo "fatal error"; exit 1; }
[ -e "libressl-${LIBRESSL_VERSION}.tar.gz" ] || curl -sfL -O "https://ftp.openbsd.org/pub/OpenBSD/LibreSSL/libressl-${LIBRESSL_VERSION}.tar.gz"
rm -rf "$SCRIPT_DIR/libressl"
mkdir "$SCRIPT_DIR/libressl"
tar xzf "libressl-${LIBRESSL_VERSION}.tar.gz" --strip-components=1 -C "$SCRIPT_DIR/libressl"
# rm "libressl-${LIBRESSL_VERSION}.tar.gz"
