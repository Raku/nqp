#ifndef P6INT_H_GUARD
#define P6INT_H_GUARD

/* The P6int body is just a union of the different int types. */
typedef union {
    Parrot_Int1 int8;
    Parrot_Int2 int16;
    Parrot_Int4 int32;
    Parrot_Int8 int64;
} P6intBody;

/* This is how an instance with the P6int representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    P6intBody body;
} P6intInstance;

/* The bit width requirement is shared for all instances of the same type. */
typedef struct {
    INTVAL bits;
} P6intREPRData;

/* Initializes the P6int REPR. */
REPROps * P6int_initialize(PARROT_INTERP);

#endif
