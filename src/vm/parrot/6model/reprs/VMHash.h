#ifndef VMHASH_H_GUARD
#define VMHASH_H_GUARD

/* Body of a VMHash. */
typedef struct {
    INTVAL dummy; /* Todo... */
} VMHashBody;

/* This is how an instance with the VMHash representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    VMHashBody body;
} VMHashInstance;

/* Initializes the VMHash REPR. */
REPROps * VMHash_initialize(PARROT_INTERP);

#endif
