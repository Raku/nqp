#ifndef KNOWHOWREPR_H_GUARD
#define KNOWHOWREPR_H_GUARD

/* This is how an instance with the KnowHOWREPR representation looks. */
typedef struct {
    /* The commonalities all objects have. */
    RakudoObjectCommonalities common;

    /* Methods table; a hash. */
    PMC *methods;

    /* Array of attribute meta-objects. */
    PMC *attributes;
} KnowHOWREPRInstance;

/* Initializes the KnowHOW REPR. */
PMC * KnowHOWREPR_initialize(PARROT_INTERP);

#endif
