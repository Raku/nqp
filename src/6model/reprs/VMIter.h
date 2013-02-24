#ifndef VMITER_H_GUARD
#define VMITER_H_GUARD

/* Body of a VMIter. */
typedef struct {
    INTVAL dummy; /* Todo... */
} VMIterBody;

/* This is how an instance with the VMIter representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    VMIterBody body;
} VMIterInstance;

/* Initializes the VMIter REPR. */
REPROps * VMIter_initialize(PARROT_INTERP);

#endif
