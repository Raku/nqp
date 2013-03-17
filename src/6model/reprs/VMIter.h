#ifndef VMITER_H_GUARD
#define VMITER_H_GUARD

#define VMITER_MODE_ARRAY 1
#define VMITER_MODE_HASH  2

/* Body of a VMIter. */
typedef struct {
    PMC *target;

    /* Array iteration state. */
    INTVAL idx;
    INTVAL limit;

    /*TODO: Hash iteration mode.*/

    INTVAL mode;
} VMIterBody;

/* This is how an instance with the VMIter representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    VMIterBody body;
} VMIterInstance;

/* Initializes the VMIter REPR. */
REPROps * VMIter_initialize(PARROT_INTERP);

#endif
