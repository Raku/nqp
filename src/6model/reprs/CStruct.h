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

    /* STRING* objects that we have converted to char arrays as well
     * when we put them in the C structure. */
    STRING **child_strs;
    
    /* Pointer to the actual C structure memory; we don't inline it
     * directly in the body, since it doesn't work so well if we get
     * something returned and are wrapping it. */
    void *cstruct;
} CStructBody;

/* This is how an instance with the CStruct representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    CStructBody body;
} CStructInstance;

/* This is used in the name to class mapping. */
typedef struct {
    PMC *class_key;
    PMC *name_map;
} CStructNameMap;

/* Attribute location flags. */
#define CSTRUCT_ATTR_IN_STRUCT 0
#define CSTRUCT_ATTR_CSTRUCT   1
#define CSTRUCT_ATTR_CARRAY    2
#define CSTRUCT_ATTR_CPTR      3
#define CSTRUCT_ATTR_MASK      3

/* The CStruct REPR data contains info we need to do allocations, look up
 * attributes and so forth. */
typedef struct {
    /* The size of the structure. */
    INTVAL struct_size;

    /* The number of attributes we have allocated slots for. Note that
     * slots can vary in size. */
    INTVAL num_attributes;
    
    /* Number of child objects we store. */
    INTVAL num_child_objs;
    
    /* Number of child strings we store. */
    INTVAL num_child_strs;
    
    /* Lower bits are flags indicating what kind of attribute we have;
     * whether it's one that is just a simple value that we can always
     * access directly in the C struct body, or a more complex one that
     * we need to maintain in the C struct and in the GC-able list. Upper
     * bits say where to find it. */
    INTVAL *attribute_locations;

    /* Maps attribute position numbers to their location in the C struct.
     * Note that this will not be the only place we need to update for
     * any reference type. */
    INTVAL *struct_offsets;

    /* If the attribute was actually flattened in to this object from another
     * representation, this is the s-table of the type of that attribute. NULL
     * for attributes that are reference types. */
    STable **flattened_stables;

    /* A table mapping attribute names to indexes (which can then be looked
     * up in the offset table). Uses a final null entry as a sentinel. */
    CStructNameMap *name_to_index_mapping;

    /* Slots holding flattened objects that need another REPR to initialize
     * them; terminated with -1. */
    INTVAL *initialize_slots;
} CStructREPRData;

/* Initializes the CStruct REPR. */
REPROps * CStruct_initialize(PARROT_INTERP,
        PMC * (* wrap_object_func_ptr) (PARROT_INTERP, void *obj),
        PMC * (* create_stable_func_ptr) (PARROT_INTERP, REPROps *REPR, PMC *HOW));

#endif
