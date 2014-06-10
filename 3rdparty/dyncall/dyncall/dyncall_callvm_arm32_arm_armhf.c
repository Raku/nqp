/*

 Package: dyncall
 Library: dyncall
 File: dyncall/arm_armhf.c
 Description: ARM 'armhf' ABI implementation
 License:

   Copyright (c) 2007-2012 Daniel Adler <dadler@uni-goettingen.de>, 
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

#include "dyncall_callvm_arm32_arm_armhf.h"
#include "dyncall_alloc.h"


static DCCallVM* dc_callvm_new_arm32_armhf(DCCallVM_vt* vt, DCsize size)
{
  /* Store at least 16 bytes (4 words) for internal spill area. Assembly code depends on it. */
  DCCallVM_arm32_armhf* p = (DCCallVM_arm32_armhf*)dcAllocMem(sizeof(DCCallVM_arm32_armhf)+size+16);
  dc_callvm_base_init(&p->mInterface, vt);
  dcVecInit(&p->mVecHead, size);
  p->i = 0;
  p->s = 0;
  p->d = 0;
  return (DCCallVM*)p;
}

static void mode(DCCallVM* in_self,DCint mode);

static void deinit(DCCallVM* in_self)
{
  dcFreeMem(in_self);
}


static void reset(DCCallVM* in_p)
{
  DCCallVM_arm32_armhf* p = (DCCallVM_arm32_armhf*)in_p;
  p->i = 0;
  p->s = 0;
  p->d = 0;
  dcVecResize(&p->mVecHead, 16);
}

static void a_int(DCCallVM* in_self, DCint x)
{
  DCCallVM_arm32_armhf* p = (DCCallVM_arm32_armhf*)in_self;
  if (p->i < 16) {
    * (DCint*) dcVecAt(&p->mVecHead, p->i) = x;
    p->i += 4;
  } else {
    dcVecAppend(&p->mVecHead, &x, sizeof(DCint));
  }
}

static void a_bool    (DCCallVM* in_self, DCbool  x) { a_int(in_self, (DCint)x); }
static void a_char    (DCCallVM* in_self, DCchar  x) { a_int(in_self, x); }
static void a_short   (DCCallVM* in_self, DCshort x) { a_int(in_self, x); }
static void a_long    (DCCallVM* in_self, DClong  x) { a_int(in_self, x); }
static void a_longlong(DCCallVM* in_self, DClonglong x)
{
  DCCallVM_arm32_armhf* p = (DCCallVM_arm32_armhf*)in_self;

  p->i = (p->i+4) & -8;
  if (p->i < 16) {
    * (DClonglong*) dcVecAt(&p->mVecHead, p->i) = x;
    p->i += 8;
  } else {
    /* 64 bit values need to be aligned on 8 byte boundaries */
    dcVecSkip(&p->mVecHead, dcVecSize(&p->mVecHead) & 4);
    dcVecAppend(&p->mVecHead, &x, sizeof(DClonglong));
  }
}
static void a_pointer(DCCallVM* in_p, DCpointer x) { a_int(in_p, (DCint) x ); }

static void a_float(DCCallVM* in_p, DCfloat x)
{
  DCCallVM_arm32_armhf* p = (DCCallVM_arm32_armhf*)in_p;
  if (p->s < 16) {
    p->S[p->s++] = x;
    if (p->d < p->s) {
      p->d = (p->s+1) & ~(1U);
    } else {
      p->s = p->d;
    }
  } else {
    dcVecAppend(&p->mVecHead, &x, sizeof(DCfloat));
  } 
}

static void a_double(DCCallVM* in_p, DCdouble x)
{
  DCCallVM_arm32_armhf* p = (DCCallVM_arm32_armhf*)in_p;
  if (p->d < 16) {
    * (double*) &p->S[p->d] = x;
    p->d += 2;
    if (!(p->s & 1)) {
      /* if s is even it always equals d. 
	 otherwise, s points to an odd float register. 
       */
      p->s = p->d;
    }
  } else {
    p->s = 16;
    union {
      DCdouble d;
      DCchar   b[8];
    } v; // ,w;
    v.d = x;
#if 0
    w.b[0] = v.b[7];
    w.b[1] = v.b[6];
    w.b[2] = v.b[5];
    w.b[3] = v.b[4];
    w.b[4] = v.b[3];
    w.b[5] = v.b[2];
    w.b[6] = v.b[1];
    w.b[7] = v.b[0];
#endif
    /* 64 bit values need to be aligned on 8 byte boundaries */
    dcVecSkip(&p->mVecHead, dcVecSize(&p->mVecHead) & 4);
    dcVecAppend(&p->mVecHead, &v.b[0], sizeof(DCdouble));
  }
}

void call(DCCallVM* in_p, DCpointer target)
{
  DCCallVM_arm32_armhf* p = (DCCallVM_arm32_armhf*)in_p;
  dcCall_arm32_armhf(target, dcVecData(&p->mVecHead), dcVecSize(&p->mVecHead), &p->S[0]);
}

DCCallVM_vt vt_armhf =
{
  &deinit
, &reset
, &mode
, &a_bool
, &a_char
, &a_short 
, &a_int
, &a_long
, &a_longlong
, &a_float
, &a_double
, &a_pointer
, NULL /* argStruct */
, (DCvoidvmfunc*)       &call
, (DCboolvmfunc*)       &call
, (DCcharvmfunc*)       &call
, (DCshortvmfunc*)      &call
, (DCintvmfunc*)        &call
, (DClongvmfunc*)       &call
, (DClonglongvmfunc*)   &call
, (DCfloatvmfunc*)      &call
, (DCdoublevmfunc*)     &call
, (DCpointervmfunc*)    &call
, NULL /* callStruct */
};

DCCallVM* dcNewCallVM(DCsize size) 
{
#if defined(DC__ABI_ARM_EABI)
  return dc_callvm_new_arm32_arm(&eabi, size);
#elif defined(DC__ABI_ARM_HF)
  return dc_callvm_new_arm32_armhf(&vt_armhf, size);
#elif defined(DC__ABI_ARM_OABI)
  return dc_callvm_new_arm32_arm(&oabi, size);
#else
#error unknown ARM abi
#endif
}

static void mode(DCCallVM* in_self,DCint mode)
{
  DCCallVM_arm32_armhf* self = (DCCallVM_arm32_armhf*) in_self;
  DCCallVM_vt*  vt;
  switch(mode) {
    case DC_CALL_C_DEFAULT:        
    case DC_CALL_C_ELLIPSIS:
    case DC_CALL_C_ELLIPSIS_VARARGS:
    case DC_CALL_C_ARM_ARMHF:        
      vt = &vt_armhf;
      break;
    default: 
      in_self->mError = DC_ERROR_UNSUPPORTED_MODE;
      return;
  }
  self->mInterface.mVTpointer = vt;
}

