/*

 Package: dyncall
 Library: dyncallback
 File: dyncallback/dyncall_thunk_mips.c
 Description: Thunk - Implementation for MIPS
 License:

   Copyright (c) 2013 Daniel Adler <dadler@uni-goettingen.de>,
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

#include "dyncall_thunk.h"

unsigned short hi16(x) { return ( (unsigned short) (((unsigned int)x)>>16UL) ); }
unsigned short lo16(x) { return ( (unsigned short)  ((unsigned int)x)        ); }

void dcbInitThunk(DCThunk* p, void (*entry)())
{
  /*
    mips thunk code:
      lui $t4,      hi(p)
      lui $t5,      hi(entry)
      ori $t5, $t5, lo(entry)
      jr  $t5
      ori $t4, $t4, lo(p) - branch delay slot
  */

  p->data[0] = hi16(p);     /* lui $t4, hi(p) */
  p->data[1] = 0x3c0c;
  p->data[2] = hi16(entry); /* lui $t5, hi(entry) */
  p->data[3] = 0x3c0d;
  p->data[4] = lo16(entry); /* ori $t5, $t5, lo(entry) */
  p->data[5] = 0x35ad;
  p->jump    = 0x01a00008;  /* jr $t5 */
  p->bddt[0] = lo16(p);     /* ori $t4, $t4, lo(p) - branch delay slot */
  p->bddt[1] = 0x358c;
}

