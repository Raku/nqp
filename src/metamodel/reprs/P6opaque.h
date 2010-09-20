#ifndef P6OPAQUE_H_GUARD
#define P6OPAQUE_H_GUARD

/* This is how an instance with the P6opaque representation looks. The slots
 * is an array where we'll store most attributes, so we can look them up by
 * index. There's also an unallocated spill-over store for any attributes that
 * are added through augment, or in MI cases (e.g. it's lazily allocated on
 * demand). */
typedef struct {
    /* The commonalities all objects have. */
    RakudoObjectCommonalities common;

    /* Attribute slot storage. */
    PMC **slots;

    /* Spill (for MI, dynamically added attributes, etc.) Normally null. */
    PMC *spill;
} P6opaqueInstance;

/* A P6opaque REPR instance carries around both a slot mapping with it.
 * XXX We waste some memory here in that we're storing the REPR pointer
 * table per "instantiation" of the REPR. It's per type rather than per
 * instance, so not so bad, but with another level of indirection we
 * could probably do a bit better. OTOH, it'd be another level of
 * indirection... */
typedef struct {
    /* The commonalities shared by all representations. */
    REPRCommonalities common;

    /* A slot mapping table. */
    PMC *slot_mapping;

    /* The number of slots we have. */
    INTVAL num_slots;
} REPRP6opaque;

/* Handy macro for getting the struct out. */
#define P6O_REPR_STRUCT(p)   ((REPRP6opaque *)PMC_data(p))

/* Initializes the P6opaque REPR. */
PMC * P6opaque_initialize(PARROT_INTERP);

#endif
