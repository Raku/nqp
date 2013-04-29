#ifndef P6BIGINT_H_GUARD
#define P6BIGINT_H_GUARD

#include "tommath.h"

/* Body of a P6bigint.. */
typedef struct {
    /* Big integer storage slot. */
    mp_int i;
} P6bigintBody;

/* This is how an instance with the P6bigint representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    P6bigintBody body;
} P6bigintInstance;

/* Initializes the P6bigint REPR. */
REPROps * P6bigint_initialize(PARROT_INTERP,
        PMC * (* wrap_object_func_ptr) (PARROT_INTERP, void *obj),
        PMC * (* create_stable_func_ptr) (PARROT_INTERP, REPROps *REPR, PMC *HOW));

#endif
