#ifndef CSTR_H_GUARD
#define CSTR_H_GUARD

typedef struct {
    char *cstr;
} CStrBody;

/* This is how an instance with the CStr representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    CStrBody body;
} CStrInstance;

/* Not needed yet.
typedef struct {
} CStrREPRData;*/

REPROps *CStr_initialize(PARROT_INTERP,
        PMC * (* wrap_object_func_ptr) (PARROT_INTERP, void *obj),
        PMC * (* create_stable_func_ptr) (PARROT_INTERP, REPROps *REPR, PMC *HOW));

#endif
