# Package: dyncall
# File: CMakeLists.txt
# Description: DynCall Project cmake files
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

cmake_minimum_required (VERSION 2.6)
project(DynCall)

# add cmake modules shipped with the package to cmake's module path.
# currently we have no use for this, but maybe later..
#set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/buildsys/cmake/Modules" "${CMAKE_MODULE_PATH}")

# enable gcc as front-end to assembler for .S files
if(CMAKE_COMPILER_IS_GNUCC)
  enable_language(ASM)
  set(CMAKE_ASM_COMPILER "${CMAKE_C_COMPILER}")
  set(CMAKE_ASM_COMPILER_ARG1 "-c")
endif()

# fix for AMD64: force -fPIC (even for static libs).
if("${CMAKE_SYSTEM_PROCESSOR}" STREQUAL "x86_64")
  add_definitions("-fPIC")
endif()

add_subdirectory(dynload)
add_subdirectory(dyncall)
add_subdirectory(dyncallback)
add_subdirectory(doc EXCLUDE_FROM_ALL)
add_subdirectory(test EXCLUDE_FROM_ALL)

# install cmake Find scripts (disabled per default)

option(INSTALL_CMAKE_MODULES "install cmake modules to locate dyncall" "NO")

if(INSTALL_CMAKE_MODULES)
file(GLOB INSTALL_CMAKE_MODULES_FILES buildsys/cmake/Modules/Find*.cmake)
install(FILES ${INSTALL_CMAKE_MODULES_FILES} DESTINATION ${CMAKE_ROOT}/Modules)
endif(INSTALL_CMAKE_MODULES)

