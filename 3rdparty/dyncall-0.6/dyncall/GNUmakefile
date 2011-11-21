# Package: dyncall
# File: dyncall/GNUmakefile
# Description: dyncall library GNUmakefile
# License:
#
# Copyright (c) 2007,2010 Daniel Adler <dadler@uni-goettingen.de>, 
#                         Tassilo Philipp <tphilipp@potion-studios.com>
#
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
#

TOP = ..
include $(TOP)/MakeProlog

TARGET_LIB = dyncall

INSTALL_HEADERS	= \
	dyncall_macros.h \
	dyncall_config.h \
	dyncall_types.h \
	dyncall.h \
	dyncall_signature.h \
	dyncall_value.h \
	dyncall_callf.h \
	dyncall_alloc.h

INSTALL_LIB = 1

UNITS = dyncall_vector dyncall_api 

# @@@ disable dyncall_callf for pcc support temporarly
ifdef BUILD_TOOL_pcc
UNITS += dyncall_call dyncall_callvm dyncall_callvm_base
endif

ifdef BUILD_TOOL_gcc
UNITS += dyncall_call dyncall_callvm dyncall_callvm_base dyncall_callf
endif

ifdef BUILD_TOOL_llvm_gcc
UNITS += dyncall_call dyncall_callvm dyncall_callvm_base dyncall_callf
endif

ifdef BUILD_TOOL_msvc
UNITS += dyncall_callf
ifdef BUILD_ARCH_x86
UNITS += dyncall_callvm_x86
ifdef BUILD_ASM_nasm
UNITS += dyncall_call_x86_nasm
else
UNITS += dyncall_call_x86_masm
endif
endif
ifdef BUILD_ARCH_x64
UNITS += dyncall_callvm_x64
ifdef BUILD_ASM_nasm
UNITS += dyncall_call_x64_nasm
else
UNITS += dyncall_call_x64_masm
endif
endif
endif

# -----------------------------------------------------------------------------

include $(TOP)/MakeEpilog


