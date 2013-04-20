#ifndef KNOWHOWREPR_H_GUARD
#define KNOWHOWREPR_H_GUARD

typedef struct {
    /* Methods table; a hash. */
    PMC *methods;

    /* Array of attribute meta-objects. */
    PMC *attributes;

    /* Name of the object. */
    STRING *name;
} KnowHOWREPRBody;
    
/* This is how an instance with the KnowHOWREPR representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    KnowHOWREPRBody body;
} KnowHOWREPRInstance;

/* Initializes the KnowHOW REPR. */
REPROps * KnowHOWREPR_initialize(PARROT_INTERP);

#endif
