#ifndef P6INT_H_GUARD
#define P6INT_H_GUARD

typedef struct {
    /* Integer storage slot. */
    INTVAL value;
} P6intBody;

/* This is how an instance with the P6int representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    P6intBody body;
} P6intInstance;

/* Initializes the P6int REPR. */
REPROps * P6int_initialize(PARROT_INTERP);

#endif
