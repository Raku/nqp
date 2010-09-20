#ifndef P6STR_H_GUARD
#define P6STR_H_GUARD

/* This is how an instance with the P6str representation looks. */
typedef struct {
    /* The commonalities all objects have. */
    RakudoObjectCommonalities common;

    /* String storage slot. */
    STRING *value;
} P6strInstance;

/* Initializes the P6str REPR. */
PMC * P6str_initialize(PARROT_INTERP);

#endif
