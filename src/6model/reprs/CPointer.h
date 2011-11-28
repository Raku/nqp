#ifndef CPOINTER_H_GUARD
#define CPOINTER_H_GUARD

/* Body of a CPointer. */
typedef struct {
    void *ptr;
} CPointerBody;

/* This is how an instance with the CPointer representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    CPointerBody body;
} CPointerInstance;

/* Initializes the CPointer REPR. */
REPROps * CPointer_initialize(PARROT_INTERP,
        PMC * (* wrap_object_func_ptr) (PARROT_INTERP, void *obj),
        PMC * (* create_stable_func_ptr) (PARROT_INTERP, REPROps *REPR, PMC *HOW));

#endif
