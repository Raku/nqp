/*

 Package: dyncall
 Library: test
 File: test/callf/main.c
 Description: 
 License:

   Copyright (c) 2007-2011 Daniel Adler <dadler@uni-goettingen.de>, 
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


/* test dcCallF API */

#include "../../dyncall/dyncall_callf.h"
#include <stdio.h>
#include "../common/platformInit.h"

/* sample void function */

int vf_iii(int x,int y,int z)
{
  printf("%d %d %d\n", x, y, z);
  return (x == 1 && y == 2 && z == 3);
}

/* main */

int main(int argc, char* argv[])
{
  DCCallVM* vm;
  DCValue r;

  dcTest_initPlatform();

  /* allocate call vm */
  vm = dcNewCallVM(4096);
  dcReset(vm);

  /* call using 'formatted' API */
  dcCallF(vm, &r, (void*) &vf_iii, "iii)i", 1, 2, 3);

  /* free vm */
  dcFree(vm);

  printf("result: callf: %d\n", r.i);

  dcTest_deInitPlatform();
  
  return 0;
}

