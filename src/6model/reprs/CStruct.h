#ifndef CSTRUCT_H_GUARD
#define CSTRUCT_H_GUARD

/* The CStruct representation maintains a chunk of memory that it can
 * always pass off to C land. If we in turn embed any strings, pointers
 * to other CStruct REPR objects and so forth, we need to both keep the
 * C-friendly bit of memory and a copy to the GC-able, 6model objects in
 * sync. */
typedef struct {
    /* GC-marked objects that our C structure points into. */
    PMC **child_objs;
    INTVAL num_child_objs;

    /* This is not an actual pointer; instead it's just a marker we can
     * use to get at the start of the data that we'll actually pass off
     * to C land. */
    void *cstruct;
} CStructBody;

/* This is how an instance with the CStruct representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    CStructBody body;
} CStructInstance;

/* Initializes the CStruct REPR. */
REPROps * CStruct_initialize(PARROT_INTERP,
        PMC * (* wrap_object_func_ptr) (PARROT_INTERP, void *obj),
        PMC * (* create_stable_func_ptr) (PARROT_INTERP, REPROps *REPR, PMC *HOW));

#endif
