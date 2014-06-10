#!/bin/sh

# ------------------------------------------------------------- #
# DynCall build script using Makefile.generic for PSP toolchain #
# ------------------------------------------------------------- #

# build libs and tests, but exclude dynload

./configure --target=PSP
make libdyncall libdyncallback tests-libdyncallback tests-libdyncall

