/*
 Package: dyncall
 File: dyncall/dyncall_call.S
 Description: assembly call kernel, auto-selected by gcc / Plan9 build system
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


/* Darwin */
#if defined(DC__OS_Darwin)
#  if defined(DC__Arch_Intel_x86)
#    include "dyncall_call_x86_apple.s"
#  elif defined(DC__Arch_AMD64)
#    include "dyncall_call_x64_apple.s"
#  elif defined(DC__Arch_PowerPC)
#    include "dyncall_call_ppc32_apple.s"
#  elif defined(DC__Arch_PPC64)
#    include "dyncall_call_ppc64_apple.s"
#  elif defined(DC__Arch_ARM_ARM)
#    include "dyncall_call_arm32_arm_apple.s"
#  elif defined(DC__Arch_ARM_THUMB)
#    include "dyncall_call_arm32_thumb_apple.s"
#  else
#    error Unsupported Architecture on Darwin.
#  endif

/* Plan9 */
#elif defined(DC__OS_Plan9)
#  if defined(DC__Arch_Intel_x86)
#    include "dyncall_call_x86_8a.s"
#  else
#    error Unsupported Architecture on Plan9.
#  endif

/* Other (GNU as) */
#else
#  if defined(DC__Arch_Intel_x86)
#    include "dyncall_call_x86_gas.S"
#  elif defined(DC__Arch_AMD64)
#    include "dyncall_call_x64_gas.s"
#  elif defined(DC__Arch_PowerPC)
#    include "dyncall_call_ppc32_gas.s"
#  elif defined(DC__Arch_PPC64)
#    include "dyncall_call_ppc64_gas.s"
#  elif defined(DC__Arch_ARM_ARM)
#    include "dyncall_call_arm32_arm_gas.s"
#  elif defined(DC__Arch_ARM_THUMB)
#    include "dyncall_call_arm32_thumb_gas.s"
#  elif defined(DC__Arch_MIPS) || defined(DC__Arch_MIPS64)
#    include "dyncall_call_mips_gas.S"
#  else
#    error Unsupported Architecture.
#  endif

#endif

