#ifndef VMARRAY_H_GUARD
#define VMARRAY_H_GUARD

/* Body of a VMArray. */
typedef struct {
    INTVAL   elems;
    INTVAL   start;
    INTVAL   ssize;
    PMC    **slots;
} VMArrayBody;

/* This is how an instance with the VMArray representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    VMArrayBody body;
} VMArrayInstance;

/* Initializes the VMArray REPR. */
REPROps * VMArray_initialize(PARROT_INTERP);

#endif
