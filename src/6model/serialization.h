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
    Parrot_Int4 **dependencies_table;
    
    /* List of the serialization context objects that we depend on. */
    PMC         **dependent_scs;
    
    /* The number of STables, as well as pointers to the STables
     * table and data chunk. */
    Parrot_Int4   num_stables;
    Parrot_Int4 **stables_table;
    char         *stables_data;
    
    /* The number of objects, as well as pointers to the objects
     * table and data chunk. */
    Parrot_Int4   num_objects;
    Parrot_Int4  *objects_table;
    char         *objects_data;
    
    /* Array of STRINGs. */
    PMC          *string_heap;
} SerializationRoot;

/* Represents the serialization reader and the various functions available
 * on it. */
typedef struct {
    SerializationRoot root;
} SerializationReader;

/* Represents the serialization writer and the various functions available
 * on it. */
typedef struct {
    SerializationRoot root;
} SerializationWriter;
