#ifndef P6NUM_H_GUARD
#define P6NUM_H_GUARD

typedef struct {
    /* Floating point storage slot. */
    FLOATVAL value;
} P6numBody;

/* This is how an instance with the P6num representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    P6numBody body;
} P6numInstance;

/* Initializes the P6num REPR. */
REPROps * P6num_initialize(PARROT_INTERP);

#endif
