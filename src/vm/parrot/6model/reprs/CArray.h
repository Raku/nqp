#ifndef CARRAY_H_GUARD
#define CARRAY_H_GUARD

/* Body of a CArray. */
typedef struct {
    /* The storage of C-land elements. */
    void *storage;

    /* The storage of Perl-land elements */
    PMC **child_objs;

    /* Are we managing the memory for this array ourselves, or does it come
     * from C? */
    INTVAL managed;

    /* The number of elements we've allocated. If we do not know,
     * because the array was returned to us from elsewhere and we
     * are not managing it's memory, this is 0. */
    INTVAL allocated;

    /* The number of elements we have, if known. Invalid if we
     * are not managing the array. */
    INTVAL elems;
} CArrayBody;

/* This is how an instance with the CArray representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    CArrayBody body;
} CArrayInstance;

/* What kind of element do we have? */
#define CARRAY_ELEM_KIND_NUMERIC    1
#define CARRAY_ELEM_KIND_STRING     2
#define CARRAY_ELEM_KIND_CPOINTER   3
#define CARRAY_ELEM_KIND_CARRAY     4
#define CARRAY_ELEM_KIND_CSTRUCT    5

/* The CArray REPR data contains a little info about the type of array
 * that we have. */
typedef struct {
    /* The number of bytes in size that an element is. */
    INTVAL elem_size;

    /* The type of an element. */
    PMC *elem_type;
    
    /* What kind of element is it (lets us quickly know how to handle access
     * to it). */
    INTVAL elem_kind;
} CArrayREPRData;

/* Initializes the CArray REPR. */
REPROps * CArray_initialize(PARROT_INTERP,
        PMC * (* wrap_object_func_ptr) (PARROT_INTERP, void *obj),
        PMC * (* create_stable_func_ptr) (PARROT_INTERP, REPROps *REPR, PMC *HOW));

#endif
