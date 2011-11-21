# Package: dyncall
# File: share/cmake/Modules/CMakeLists.txt
# Description: Find DynCall library
# License:
#
# Copyright (c) 2010 Daniel Adler <dadler@uni-goettingen.de>
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

find_path(DynCall_INCLUDE_DIR NAMES dyncall.h)
find_library(DynCall_LIBRARY dyncall_s)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(DynCall DEFAULT_MSG DynCall_LIBRARY DynCall_INCLUDE_DIR)

if(DynCall_FOUND)
  set(DynCall_INCLUDE_DIRS ${DynCall_INCLUDE_DIR})
  set(DynCall_LIBRARIES ${DynCall_LIBRARY})
endif(DynCall_FOUND)

mark_as_advanced(DynCall_INCLUDE_DIR DynCall_LIBRARY)



