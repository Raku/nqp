/* This represents the root of the serialization data; everything hangs
 * off this. In read mode, we don't do much besides populate and then
 * read this. In write mode, however, the tables and data chunks will be
 * filled out and grown as needed. */
typedef struct {
    /* The version of the serialization format. */
    Parrot_Int4   version;

    /* The number of dependencies, as well as a pointer to the
     * dependencies table. */
    Parrot_Int4   num_dependencies;
    char         *dependencies_table;
    
    /* List of the serialization context objects that we depend on. */
    PMC          *dependent_scs;
    
    /* The number of STables, as well as pointers to the STables
     * table and data chunk. */
    Parrot_Int4   num_stables;
    char         *stables_table;
    char         *stables_data;
    
    /* The number of objects, as well as pointers to the objects
     * table and data chunk. */
    Parrot_Int4   num_objects;
    char         *objects_table;
    char         *objects_data;
    
    /* Array of STRINGs. */
    PMC          *string_heap;
} SerializationRoot;

/* Represents the serialization reader and the various functions available
 * on it. */
typedef struct {
    /* Serialization root data. */
    SerializationRoot root;
} SerializationReader;

/* Represents the serialization writer and the various functions available
 * on it. */
typedef struct {
    /* Serialization root data. */
    SerializationRoot root;

    /* Hash of strings we've already seen while serializing to the index they
     * are placed at in the string heap. */
    PMC *seen_strings;
    
    /* Amount of memory allocated for various things. */
    Parrot_Int4 dependencies_table_alloc;
    Parrot_Int4 stables_table_alloc;
    Parrot_Int4 stables_data_alloc;
    Parrot_Int4 objects_table_alloc;
    Parrot_Int4 objects_data_alloc;
    
    /* Current offsets for the data chunks (also correspond to the amount of
     * data written in to them). */
    Parrot_Int4 stables_data_offset;
    Parrot_Int4 objects_data_offset;
} SerializationWriter;

/* Core serialize and deserialize functions. */
STRING * Serialization_serialize(PARROT_INTERP, PMC *sc, PMC *empty_string_heap);
void Serialization_deserialize(PARROT_INTERP, PMC *sc, PMC *string_heap, STRING *data);
