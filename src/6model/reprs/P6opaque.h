#ifndef P6OPAQUE_H_GUARD
#define P6OPAQUE_H_GUARD

/* This is how an instance with the P6opaque representation starts. However, what
 * follows on from this depends on the declaration. For object attributes, it will
 * be a pointer size and point to another 6model Object. For native integers and
 * numbers, it will be the appropriate sized piece of memory to store them
 * right there in the object. Note that P6opaque does not do packed storage, so
 * an int2 gets as much space as an int. */
typedef struct {
    /* The commonalities all objects have. */
    SixModelObjectCommonalities common;

    /* Spill (for MI, dynamically added attributes, etc.) Normally null. */
    PMC *spill;
} P6opaqueInstance;

/* This is used in the name to class mapping. */
typedef struct {
    PMC *class_key;
    PMC *name_map;
} P6opaqueNameMap;

/* A P6opaque REPR instance carries around both a slot mapping with it.
 * We waste some memory here in that we're storing the REPR pointer
 * table per "instantiation" of the REPR. It's per type rather than per
 * instance, so not so bad, but with another level of indirection we
 * could probably do a bit better. OTOH, it'd be another level of
 * indirection... */
typedef struct {
    /* The commonalities shared by all representations. */
    REPRCommonalities common;

    /* The memory allocation size for an object instance. Includes space
     * for the Shared Table pointer, spill hash and then for storing the
     * actual, pre-declared attributes. Note, this is in bytes. */
    INTVAL allocation_size;

    /* The number of attributes we have allocated slots for. Does not include
     * any in the spill hash. */
    INTVAL num_attributes;

    /* Maps attribute position numbers to the byte offset in the object. */
    INTVAL *attribute_offsets;

    /* If we can unbox to a native integer, this is the offset to find it. */
    INTVAL unbox_int_offset;

    /* If we can unbox to a native number, this is the offset to find it. */
    INTVAL unbox_num_offset;

    /* If we can unbox to a native string, this is the offset to find it. */
    INTVAL unbox_str_offset;

    /* A table mapping attribute names to indexes (which can then be looked
     * up in the offset table). Uses a final null entry as a sentinel. */
    P6opaqueNameMap *name_to_index_mapping;

    /* Offsets into the object that are elligible for PMC GC marking. */
    INTVAL *gc_pmc_mark_offsets;

    /* Offsets into the object that are elligible for string GC marking. */
    INTVAL *gc_str_mark_offsets;
} REPRP6opaque;

/* Handy macro for getting the struct out. */
#define P6O_REPR_STRUCT(p)   ((REPRP6opaque *)PMC_data(p))

/* Initializes the P6opaque REPR. */
PMC * P6opaque_initialize(PARROT_INTERP);

#endif
