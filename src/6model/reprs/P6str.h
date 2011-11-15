#ifndef P6STR_H_GUARD
#define P6STR_H_GUARD

typedef struct {
    /* String storage slot. */
    STRING *value;
} P6strBody;

/* This is how an instance with the P6str representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    P6strBody body;
} P6strInstance;

/* Initializes the P6str REPR. */
REPROps * P6str_initialize(PARROT_INTERP);

#endif
