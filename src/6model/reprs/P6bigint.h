#ifndef P6BIGINT_H_GUARD
#define P6BIGINT_H_GUARD

#include "tommath.h"

/* This is how an instance with the P6bigint representation looks. */
typedef struct {
    /* The commonalities all objects have. */
    SixModelObjectCommonalities common;

    /* Big integer storage slot. */
    mp_int i;
} P6bigintInstance;

/* Initializes the P6bigint REPR. */
REPROps * P6bigint_initialize(PARROT_INTERP,
        PMC * (* wrap_object_func_ptr) (PARROT_INTERP, void *obj),
        PMC * (* create_stable_func_ptr) (PARROT_INTERP, REPROps *REPR, PMC *HOW));

#endif
