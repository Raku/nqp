/*
 Package: dyncall
 Library: dyncallback
 File: dyncallback/dyncall_callback_arch.S
 Description: Callback Thunk - Implementation Back-end selector
 License:
 Copyright (c) 2007-2009 Daniel Adler <dadler@uni-goettingen.de>,
                         Tassilo Philipp <tphilipp@potion-studios.com>

 Permission to use, copy, modify, and distribute this software for any
 purpose with or without fee is hereby granted, provided that the above
 copyright notice and this permission notice appear in all copies.

 THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

*/


#include "dyncall_macros.h"

#if defined(DC__OS_Darwin)
#  if defined(DC__Arch_Intel_x86)
#    include "dyncall_callback_x86_apple.s"
#  elif defined(DC__Arch_AMD64)
#    include "dyncall_callback_x64_apple.s"
#  elif defined(DC__Arch_PowerPC)
#    include "dyncall_callback_ppc32_apple.s"
#  elif defined(DC__Arch_ARM_ARM)
#    include "dyncall_callback_arm32_arm_apple.s"
#  endif
#else
#  if defined(DC__Arch_Intel_x86)
#   include "dyncall_callback_x86_gas.S"
#  elif defined(DC__Arch_AMD64)
#   include "dyncall_callback_x64_gas.s"
#  elif defined(DC__Arch_ARM_ARM)
#   include "dyncall_callback_arm32_arm_gas.s"
#  elif defined(DC__Arch_ARM_THUMB)
#   include "dyncall_callback_arm32_thumb_gas.s"
#  endif
#endif

