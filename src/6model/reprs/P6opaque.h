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
} P6opaqueInstance;

/* This is used in the name to class mapping. */
typedef struct {
    PMC *class_key;
    PMC *name_map;
} P6opaqueNameMap;

/* This is used in boxed type mappings. */
typedef struct {
    INTVAL repr_id;
    INTVAL slot;
} P6opaqueBoxedTypeMap;

/* The P6opaque REPR data has the slot mapping, allocation size and
 * various other bits of info. It hangs off the REPR_data pointer
 * in the s-table. */
typedef struct {
    /* The memory allocation size for an object instance. Includes space
     * for the 6model common header and attributes. Size is in bytes. */
    INTVAL allocation_size;

    /* The number of attributes we have allocated slots for. Note that
     * slots can vary in size. */
    INTVAL num_attributes;

    /* Maps attribute position numbers to the byte offset in the object. */
    INTVAL *attribute_offsets;

    /* If the attribute was actually flattened in to this object from another
     * representation, this is the s-table of the type of that attribute. NULL
     * for attributes that are just reference types. */
    STable **flattened_stables;
    
    /* Flags if we are MI or not. */
    INTVAL mi;
    
    /* Instantiated objects are just a blank piece of memory that needs to
     * be set up. However, in some cases we'd like them to magically turn in
     * to some container type. */
    PMC **auto_viv_values;

    /* Slot to delegate to when we need to unbox to a native integer. */
    INTVAL unbox_int_slot;

    /* Slot to delegate to when we need to unbox to a native number. */
    INTVAL unbox_num_slot;

    /* Slot to delegate to when we need to unbox to a native string. */
    INTVAL unbox_str_slot;
    
    /* If we have any other boxings, this maps repr ID to slot. */
    P6opaqueBoxedTypeMap *unbox_slots;
    
    /* Slot containing object to delegate for positional things. */
    INTVAL pos_del_slot;
    
    /* Slot containing object to delegate for associative things. */
    INTVAL ass_del_slot;

    /* A table mapping attribute names to indexes (which can then be looked
     * up in the offset table). Uses a final null entry as a sentinel. */
    P6opaqueNameMap *name_to_index_mapping;

    /* Offsets into the object that are elligible for PMC GC marking, and how
     * many of them we have. */
    INTVAL *gc_pmc_mark_offsets;
    INTVAL gc_pmc_mark_offsets_count;

    /* Slots holding flattened objects that need another REPR to initialize
     * them; terminated with -1. */
    INTVAL *initialize_slots;
    
    /* Slots holding flattened objects that need another REPR to mark them;
     * terminated with -1. */
    INTVAL *gc_mark_slots;
    
    /* Slots holding flattened objects that need another REPR to clean them;
     * terminated with -1. */
    INTVAL *gc_cleanup_slots;
} P6opaqueREPRData;

/* Initializes the P6opaque REPR. */
REPROps * P6opaque_initialize(PARROT_INTERP);

#endif
