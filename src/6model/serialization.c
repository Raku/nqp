/* This implements bounded serialization, or at least drives the overall
 * process. Representations know how to serialize and deserialize themselves.
 * So mostly, this does the rest of the work. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "sixmodelobject.h"
#include "serialization_context.h"
#include "pmc_serializationcontext.h"

/* Version of the serialization format that we are currently at. */
#define CURRENT_VERSION 1

/* Various sizes (in bytes). */
#define HEADER_SIZE                 4 * 9
#define DEP_TABLE_ENTRY_SIZE        8
#define STABLE_TABLE_ENTRY_SIZE     8
#define OBJECTS_TABLE_ENTRY_SIZE    16

/* Some guesses. */
#define DEFAULT_STABLE_DATA_SIZE    4096
#define OBJECT_SIZE_GUESS           8

/* ***************************************************************************
 * Serialization (writing related)
 * ***************************************************************************/

/* Writes an int64 into a buffer. */
static void write_int64(char *buffer, size_t offset, Parrot_Int8 value) {
    /* XXX: Big Endian Handling! */
    memcpy(buffer + offset, &value, 8);
}

/* Writes an int32 into a buffer. */
static void write_int32(char *buffer, size_t offset, Parrot_Int4 value) {
    /* XXX: Big Endian Handling! */
    memcpy(buffer + offset, &value, 4);
}

/* Writes an int16 into a buffer. */
static void write_int16(char *buffer, size_t offset, Parrot_Int2 value) {
    /* XXX: Big Endian Handling! */
    memcpy(buffer + offset, &value, 2);
}

/* Writes an double into a buffer. */
static void write_double(char *buffer, size_t offset, double value) {
    /* XXX: Big Endian Handling! */
    memcpy(buffer + offset, &value, 8);
}

/* Adds an item to the string heap if needed, and returns the index where
 * it may be found. */
static Parrot_Int4 add_string_to_heap(PARROT_INTERP, SerializationWriter *writer, STRING *s) {
    /* XXX Use seen hash to avoid dupes. */
    INTVAL next_idx = VTABLE_elements(interp, writer->root.string_heap);
    VTABLE_set_string_keyed_int(interp, writer->root.string_heap, next_idx, s);
    return (Parrot_Int4)next_idx;
}

/* Gets the ID of a serialization context. Returns 0 if it's the current
 * one, or its dependency table offset (base-1) otherwise. Note that if
 * it is not yet in the dependency table, it will be added. */
static Parrot_Int4 get_sc_id(PARROT_INTERP, SerializationWriter *writer, PMC *sc) {
    INTVAL i, num_deps, offset;

    /* Easy if it's in the current SC. */
    if (writer->root.sc == sc)
        return 0;
    
    /* Otherwise, find it in our dependencies list. */
    num_deps = writer->root.num_dependencies;
    for (i = 0; i < num_deps; i++)
        if (VTABLE_get_pmc_keyed_int(interp, writer->root.dependent_scs, i) == sc)
            return (Parrot_Int4)i + 1;

    /* Otherwise, need to add it to our dependencies list. Ensure there's
     * space in the dependencies table; grow if not. */
    offset = num_deps * DEP_TABLE_ENTRY_SIZE;
    if (offset + DEP_TABLE_ENTRY_SIZE > writer->dependencies_table_alloc) {
        writer->dependencies_table_alloc *= 2;
        writer->root.dependencies_table = mem_sys_realloc(writer->root.dependencies_table, writer->dependencies_table_alloc);
    }
    
    /* Add dependency. */
    VTABLE_push_pmc(interp, writer->root.dependent_scs, sc);
    write_int32(writer->root.dependencies_table, offset,
        add_string_to_heap(interp, writer, SC_get_handle(interp, sc)));
    write_int32(writer->root.dependencies_table, offset + 4,
        add_string_to_heap(interp, writer, SC_get_description(interp, sc)));
    writer->root.num_dependencies++;
    return writer->root.num_dependencies; /* Deliberately index + 1. */
}

/* Takes an STable. If it's already in an SC, returns information on how
 * to reference it. Otherwise, adds it to the current SC, effectively
 * placing it onto the work list. */
static void get_stable_ref_info(PARROT_INTERP, SerializationWriter *writer,
                                PMC *st, Parrot_Int4 *sc, Parrot_Int4 *sc_idx) {
    /* Add to this SC if needed. */
    if (PMC_IS_NULL(STABLE_STRUCT(st)->sc)) {
        STABLE_STRUCT(st)->sc = writer->root.sc;
        VTABLE_push_pmc(interp, writer->stables_list, st);
    }
    
    /* Work out SC reference. */
    *sc     = get_sc_id(interp, writer, STABLE_STRUCT(st)->sc);
    *sc_idx = (Parrot_Int4)SC_find_stable_idx(interp, STABLE_STRUCT(st)->sc, st);
}

/* Expands current target storage as needed. */
void expand_storage_if_needed(PARROT_INTERP, SerializationWriter *writer, INTVAL need) {
    if (writer->writing_object) {
        if (writer->objects_data_offset + need > writer->objects_data_alloc) {
            writer->objects_data_alloc *= 2;
            writer->root.objects_data = mem_sys_realloc(writer->root.objects_data,
                writer->objects_data_alloc);
        }
    }
    else {
        if (writer->stables_data_offset + need > writer->stables_data_alloc) {
            writer->stables_data_alloc *= 2;
            writer->root.stables_data = mem_sys_realloc(writer->root.stables_data,
                writer->stables_data_alloc);
        }
    }
}

/* Writing function for native integers. */
void write_int_func(PARROT_INTERP, SerializationWriter *writer, INTVAL value) {
    expand_storage_if_needed(interp, writer, 8);
    if (writer->writing_object) {
        write_int64(writer->root.objects_data, writer->objects_data_offset, value);
        writer->objects_data_offset += 8;
    }
    else {
        write_int64(writer->root.stables_data, writer->stables_data_offset, value);
        writer->stables_data_offset += 8;
    }
}

/* Writing function for native numbers. */
void write_num_func(PARROT_INTERP, SerializationWriter *writer, FLOATVAL value) {
    expand_storage_if_needed(interp, writer, 8);
    if (writer->writing_object) {
        write_double(writer->root.objects_data, writer->objects_data_offset, value);
        writer->objects_data_offset += 8;
    }
    else {
        write_double(writer->root.stables_data, writer->stables_data_offset, value);
        writer->stables_data_offset += 8;
    }
}

/* Writing function for native strings. */
void write_str_func(PARROT_INTERP, SerializationWriter *writer, STRING *value) {
    Parrot_Int4 heap_loc = add_string_to_heap(interp, writer, value);
    expand_storage_if_needed(interp, writer, 4);
    if (writer->writing_object) {
        write_int32(writer->root.objects_data, writer->objects_data_offset, heap_loc);
        writer->objects_data_offset += 4;
    }
    else {
        write_int32(writer->root.stables_data, writer->stables_data_offset, heap_loc);
        writer->stables_data_offset += 4;
    }
}

/* Concatenates the various output segments into a single binary string. */
static STRING * concatenate_outputs(PARROT_INTERP, SerializationWriter *writer) {
    char        *output      = NULL;
    Parrot_Int4  output_size = 0;
    Parrot_Int4  offset      = 0;
    
    /* Calculate total size. */
    output_size += HEADER_SIZE;
    output_size += writer->root.num_dependencies * DEP_TABLE_ENTRY_SIZE;
    output_size += writer->root.num_stables * STABLE_TABLE_ENTRY_SIZE;
    output_size += writer->stables_data_offset;
    output_size += writer->root.num_objects * OBJECTS_TABLE_ENTRY_SIZE;
    output_size += writer->objects_data_offset;
    
    /* Allocate a buffer that size. */
    output = mem_sys_allocate(output_size);
    
    /* Write version into header. */
    write_int32(output, 0, CURRENT_VERSION);
    offset += HEADER_SIZE;
    
    /* Put dependencies table in place and set location/rows in header. */
    write_int32(output, 4, offset);
    write_int32(output, 8, writer->root.num_dependencies);
    memcpy(output + offset, writer->root.dependencies_table, 
        writer->root.num_dependencies * DEP_TABLE_ENTRY_SIZE);
    offset += writer->root.num_dependencies * DEP_TABLE_ENTRY_SIZE;
    
    /* Put STables table in place, and set location/rows in header. */
    write_int32(output, 12, offset);
    write_int32(output, 16, writer->root.num_stables);
    memcpy(output + offset, writer->root.stables_table, 
        writer->root.num_stables * STABLE_TABLE_ENTRY_SIZE);
    offset += writer->root.num_stables * STABLE_TABLE_ENTRY_SIZE;
    
    /* Put STables data in place. */
    write_int32(output, 20, offset);
    memcpy(output + offset, writer->root.stables_data, 
        writer->stables_data_offset);
    offset += writer->stables_data_offset;
    
    /* Put objects table in place, and set location/rows in header. */
    write_int32(output, 24, offset);
    write_int32(output, 28, writer->root.num_objects);
    memcpy(output + offset, writer->root.objects_table, 
        writer->root.num_objects * OBJECTS_TABLE_ENTRY_SIZE);
    offset += writer->root.num_objects * OBJECTS_TABLE_ENTRY_SIZE;
    
    /* Put objects data in place. */
    write_int32(output, 32, offset);
    memcpy(output + offset, writer->root.objects_data, 
        writer->objects_data_offset);
    offset += writer->objects_data_offset;
    
    /* Sanity check. */
    if (offset != output_size)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialization sanity check failed: offset != output_size");
    
    /* Make a Parrot binary string containing it (external flag means use
     * this buffer, not copy it to a new one). */
    return Parrot_str_new_init(interp, output, output_size,
        Parrot_binary_encoding_ptr, PObj_external_FLAG);
}

/* This handles the serialization of an STable, and calls off to serialize
 * its representation data also. */
static void serialize_stable(PARROT_INTERP, SerializationWriter *writer, PMC *st) {
    /* Increment count of stables in the table. */
    writer->root.num_stables++;
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "STable serialization not yet implemented");
}

/* This handles the serialization of an object, which largely involves a
 * delegation to its representation. */
static void serialize_object(PARROT_INTERP, SerializationWriter *writer, PMC *obj) {
    Parrot_Int4 offset;
    
    /* Get index of SC that holds the STable and its index. */
    Parrot_Int4 sc;
    Parrot_Int4 sc_idx;
    get_stable_ref_info(interp, writer, STABLE_PMC(obj), &sc, &sc_idx);
    
    /* Ensure there's space in the objects table; grow if not. */
    offset = writer->root.num_objects * OBJECTS_TABLE_ENTRY_SIZE;
    if (offset + OBJECTS_TABLE_ENTRY_SIZE > writer->objects_table_alloc) {
        writer->objects_table_alloc *= 2;
        writer->root.objects_table = mem_sys_realloc(writer->root.objects_table, writer->objects_table_alloc);
    }
    
    /* Make objects table entry. */
    write_int32(writer->root.objects_table, offset, sc);
    write_int32(writer->root.objects_table, offset + 4, sc_idx);
    write_int32(writer->root.objects_table, offset + 8, writer->objects_data_offset);
    write_int32(writer->root.objects_table, offset + 12, IS_CONCRETE(obj) ? 1 : 0);
    
    /* Increment count of objects in the table. */
    writer->root.num_objects++;
    
    /* Delegate to its serialization REPR function. */
    writer->writing_object = 1;
    if (REPR(obj)->serialize)
        REPR(obj)->serialize(interp, STABLE(obj), OBJECT_BODY(obj), writer);
    else
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Missing serialize REPR function");
}

/* This is the overall serialization loop. It keeps an index into the list of
 * STables and objects in the SC. As we discover new ones, they get added. We
 * finished when we've serialized everything. */
static void serialize(PARROT_INTERP, SerializationWriter *writer) {
    INTVAL work_todo = 1;
    while (work_todo) {
        /* Current work list sizes. */
        INTVAL stables_todo = VTABLE_elements(interp, writer->stables_list);
        INTVAL objects_todo = VTABLE_elements(interp, writer->objects_list);
        
        /* Reset todo flag - if we do some work we'll go round again as it
         * may have generated more. */
        work_todo = 0;
        
        /* Serialize any STables on the todo list. */
        while (writer->stables_list_pos < stables_todo) {
            serialize_stable(interp, writer, VTABLE_get_pmc_keyed_int(interp,
                writer->stables_list, writer->stables_list_pos));
            writer->stables_list_pos++;
            work_todo = 1;
        }
        
        /* Serialize any objects on the todo list. */
        while (writer->objects_list_pos < objects_todo) {
            serialize_object(interp, writer, VTABLE_get_pmc_keyed_int(interp,
                writer->objects_list, writer->objects_list_pos));
            writer->objects_list_pos++;
            work_todo = 1;
        }
    }
}

/* Takes a serialization context along with an empty string array. Taking the
 * serialization context's contents as the roots, recursively walks them until
 * everything is serialized or a reference to something already serialized in
 * another context. */
STRING * Serialization_serialize(PARROT_INTERP, PMC *sc, PMC *empty_string_heap) {
    PMC         *stables  = PMCNULL;
    PMC         *objects  = PMCNULL;
    STRING      *result   = STRINGNULL;
    Parrot_Int4  sc_elems = (Parrot_Int4)VTABLE_elements(interp, sc);
    
    /* Set up writer with some initial settings. */
    SerializationWriter *writer = mem_allocate_zeroed_typed(SerializationWriter);
    GETATTR_SerializationContext_root_stables(interp, sc, stables);
    GETATTR_SerializationContext_root_objects(interp, sc, objects);
    writer->root.version        = CURRENT_VERSION;
    writer->root.sc             = sc;
    writer->stables_list        = stables;
    writer->objects_list        = objects;
    writer->root.string_heap    = empty_string_heap;
    writer->root.dependent_scs  = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    
    /* Allocate initial memory space for storing serialized tables and data. */
    writer->dependencies_table_alloc = DEP_TABLE_ENTRY_SIZE * 4;
    writer->root.dependencies_table  = mem_sys_allocate(writer->dependencies_table_alloc);
    writer->stables_table_alloc      = STABLE_TABLE_ENTRY_SIZE * (sc_elems || 1);
    writer->root.stables_table       = mem_sys_allocate(writer->stables_table_alloc);
    writer->objects_table_alloc      = OBJECTS_TABLE_ENTRY_SIZE * (sc_elems || 1);
    writer->root.objects_table       = mem_sys_allocate(writer->objects_table_alloc);
    writer->stables_data_alloc       = DEFAULT_STABLE_DATA_SIZE;
    writer->root.stables_data        = mem_sys_allocate(writer->stables_data_alloc);
    writer->objects_data_alloc       = OBJECT_SIZE_GUESS * (sc_elems || 1);
    writer->root.objects_data        = mem_sys_allocate(writer->objects_data_alloc);
    
    /* Populate write functions table. */
    writer->write_int = write_int_func;
    writer->write_num = write_num_func;
    writer->write_str = write_str_func;

    /* Start serializing. */
    serialize(interp, writer);

    /* Build a single result string out of the serialized data. */
    result = concatenate_outputs(interp, writer);

    /* Clear up afterwards. */
    mem_sys_free(writer->root.dependencies_table);
    mem_sys_free(writer->root.stables_table);
    mem_sys_free(writer->root.stables_data);
    mem_sys_free(writer->root.objects_table);
    mem_sys_free(writer->root.objects_data);
    mem_sys_free(writer);
    
    return result;
}


/* ***************************************************************************
 * Deserialization (reading related)
 * ***************************************************************************/

/* Reads an int64 from a buffer. */
static Parrot_Int8 read_int64(char *buffer, size_t offset) {
    Parrot_Int8 value;
    /* XXX: Big Endian Handling! */
    memcpy(&value, buffer + offset, 8);
    return value;
}

/* Reads an int32 from a buffer. */
static Parrot_Int4 read_int32(char *buffer, size_t offset) {
    Parrot_Int4 value;
    /* XXX: Big Endian Handling! */
    memcpy(&value, buffer + offset, 4);
    return value;
}

/* Reads an int16 from a buffer. */
static Parrot_Int2 read_int16(char *buffer, size_t offset) {
    Parrot_Int2 value;
    /* XXX: Big Endian Handling! */
    memcpy(&value, buffer + offset, 2);
    return value;
}

/* Reads double from a buffer. */
static double read_double(char *buffer, size_t offset) {
    double value;
    /* XXX: Big Endian Handling! */
    memcpy(&value, buffer + offset, 8);
    return value;
}

/* Reads the item from the string heap at the specified index. */
static STRING * read_string_from_heap(PARROT_INTERP, SerializationReader *reader, Parrot_Int4 idx) {
    if (idx >= VTABLE_elements(interp, reader->root.string_heap))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Attempt to read past end of string heap (index %d)", idx);
    return VTABLE_get_string_keyed_int(interp, reader->root.string_heap, idx);
}

/* Locates a serialization context; 0 is the current one, otherwise see the
 * dependencies table. */
static PMC * locate_sc(PARROT_INTERP, SerializationReader *reader, Parrot_Int4 sc_id) {
    PMC *sc;
    if (sc_id == 0)
        return reader->root.sc;
    sc = VTABLE_get_pmc_keyed_int(interp, reader->root.dependent_scs, sc_id - 1);
    if (PMC_IS_NULL(sc))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Invalid dependencies table index encountered (index %d)", sc_id);
    return sc;
}

/* Looks up an STable. */
static PMC * lookup_stable(PARROT_INTERP, SerializationReader *reader, Parrot_Int4 sc_id, Parrot_Int4 idx) {
    return SC_get_stable(interp, locate_sc(interp, reader, sc_id), idx);
}

/* Ensure that we aren't going to read off the end of the buffer. */
void assert_can_read(PARROT_INTERP, SerializationReader *reader, INTVAL amount) {
    if (reader->reading_object) {
        char *read_end = reader->root.objects_data + reader->objects_data_offset + amount;
        if (read_end > reader->objects_data_end)
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Read past end of objects data");
    }
    else {
        char *read_end = reader->root.stables_data + reader->stables_data_offset + amount;
        if (read_end > reader->stables_data_end)
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Read past end of STables data");
    }
}

/* Reading function for native integers. */
INTVAL read_int_func(PARROT_INTERP, SerializationReader *reader) {
    assert_can_read(interp, reader, 8);
    if (reader->reading_object) {
        INTVAL result = read_int64(reader->root.objects_data, reader->objects_data_offset);
        reader->objects_data_offset += 8;
        return result;
    }
    else {
        INTVAL result = read_int64(reader->root.stables_data, reader->stables_data_offset);
        reader->stables_data_offset += 8;
        return result;
    }
}

/* Reading function for native numbers. */
FLOATVAL read_num_func(PARROT_INTERP, SerializationReader *reader) {
    assert_can_read(interp, reader, 8);
    if (reader->reading_object) {
        FLOATVAL result = read_double(reader->root.objects_data, reader->objects_data_offset);
        reader->objects_data_offset += 8;
        return result;
    }
    else {
        FLOATVAL result = read_double(reader->root.stables_data, reader->stables_data_offset);
        reader->stables_data_offset += 8;
        return result;
    }
}

/* Reading function for native strings. */
STRING * read_str_func(PARROT_INTERP, SerializationReader *reader) {
    assert_can_read(interp, reader, 4);
    if (reader->reading_object) {
        STRING *result = read_string_from_heap(interp, reader,
            read_int32(reader->root.objects_data, reader->objects_data_offset));
        reader->objects_data_offset += 4;
        return result;
    }
    else {
        STRING *result = read_string_from_heap(interp, reader,
            read_int32(reader->root.stables_data, reader->stables_data_offset));
        reader->stables_data_offset += 4;
        return result;
    }
}

/* Checks the header looks sane and all of the places it points to make sense.
 * Also disects the input string into the tables and data segments and populates
 * the reader data structure more fully. */
static void check_and_disect_input(PARROT_INTERP, SerializationReader *reader, STRING *data_str) {
    /* Grab data from string. */
    char   *data     = (char *)Parrot_str_cstring(interp, data_str);
    INTVAL  data_len = Parrot_str_byte_length(interp, data_str);
    char   *prov_pos = data;
    char   *data_end = data + data_len;

    /* Ensure that we have enough space to read a version number and check it. */
    if (data_len < 4)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialized data too short to read a version number (< 4 bytes)");
    reader->root.version = read_int32(data, 0);
    if (reader->root.version != CURRENT_VERSION)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Unknown serialization format version %d", reader->root.version);

    /* Ensure that the data is at least as long as the header is expected to be. */
    if (data_len < HEADER_SIZE)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialized data shorter than header (< %d bytes)", HEADER_SIZE);
    prov_pos += HEADER_SIZE;

    /* Get size and location of dependencies table. */
    reader->root.dependencies_table = data + read_int32(data, 4);
    reader->root.num_dependencies   = read_int32(data, 8);
    if (reader->root.dependencies_table < prov_pos)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (dependencies table starts before header ends)");
    prov_pos = reader->root.dependencies_table + reader->root.num_dependencies * DEP_TABLE_ENTRY_SIZE;
    if (prov_pos > data_end)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (dependencies table overruns end of data)");
 
    /* Get size and location of STables table. */
    reader->root.stables_table = data + read_int32(data, 12);
    reader->root.num_stables   = read_int32(data, 16);
    if (reader->root.stables_table < prov_pos)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (STables table starts before dependencies table ends)");
    prov_pos = reader->root.stables_table + reader->root.num_stables * STABLE_TABLE_ENTRY_SIZE;
    if (prov_pos > data_end)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (STables table overruns end of data)");

    /* Get location of STables data. */
    reader->root.stables_data = data + read_int32(data, 20);
    if (reader->root.stables_data < prov_pos)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (STables data starts before STables table ends)");
    prov_pos = reader->root.stables_data;
    if (prov_pos > data_end)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (STables data starts after end of data)");
            
    /* Get size and location of objects table. */
    reader->root.objects_table = data + read_int32(data, 24);
    reader->root.num_objects   = read_int32(data, 28);
    if (reader->root.objects_table < prov_pos)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (objects table starts before STables data ends)");
    prov_pos = reader->root.objects_table + reader->root.num_objects * OBJECTS_TABLE_ENTRY_SIZE;
    if (prov_pos > data_end)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (objects table overruns end of data)");
            
    /* Get location of objects data. */
    reader->root.objects_data = data + read_int32(data, 32);
    if (reader->root.objects_data < prov_pos)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (objects data starts before objects table ends)");
    prov_pos = reader->root.objects_data;
    if (prov_pos > data_end)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (objects data starts after end of data)");
    
    /* Set reading limits for data chunks. */
    reader->stables_data_end = reader->root.objects_table;
    reader->objects_data_end = data_end;
}

/* Goes through the dependencies table and resolves the dependencies that it
 * contains to SerializationContexts. */
static void resolve_dependencies(PARROT_INTERP, SerializationReader *reader) {
    char        *table_pos = reader->root.dependencies_table;
    Parrot_Int4  i;
    for (i = 0; i < reader->root.num_dependencies; i++) {
        STRING *handle = read_string_from_heap(interp, reader, read_int32(table_pos, 0));
        PMC    *sc     = SC_get_sc(interp, handle);
        if (PMC_IS_NULL(sc)) {
            STRING *desc = read_string_from_heap(interp, reader, read_int32(table_pos, 4));
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Missing or wrong version of dependency '%Ss'", desc);
        }
        VTABLE_push_pmc(interp, reader->root.dependent_scs, sc);
        table_pos += 8;
    }
}

/* Deserializes a single STable, along with its REPR data. */
static void deserialize_stable(PARROT_INTERP, SerializationReader *reader, INTVAL i, PMC *st) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "STable deserialization not yet implemented");
}

/* Deserializes a single object, along with its REPR data. */
static void deserialize_object(PARROT_INTERP, SerializationReader *reader, INTVAL i, PMC *obj) {
    /* Calculate location of object's table row. */
    char *obj_table_row = reader->root.objects_table + i * OBJECTS_TABLE_ENTRY_SIZE;
    
    /* Resolve the STable. */
    PMC *stable = lookup_stable(interp, reader,
        read_int32(obj_table_row, 0),   /* The SC in the dependencies table, + 1 */
        read_int32(obj_table_row, 4));  /* The index in that SC */

    /* Allocate the object, fiddling things so that it gets wrapped in the
     * PMC we want it to. */
    set_wrapping_object(obj);
    STABLE_STRUCT(stable)->REPR->allocate(interp, STABLE_STRUCT(stable));
     
    /* Delegate to its deserialization REPR function. */
    reader->reading_object = 1;
    reader->objects_data_offset = read_int32(obj_table_row, 8);
    if ((read_int32(obj_table_row, 12) & 1) != 1)
        MARK_AS_TYPE_OBJECT(obj);
    if (REPR(obj)->deserialize)
        REPR(obj)->deserialize(interp, STABLE(obj), OBJECT_BODY(obj), reader);
    else
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Missing deserialize REPR function");
}

/* Takes serialized data, an empty SerializationContext to deserialize it into
 * and a strings heap. Deserializes the data into the required objects and
 * STables. */
void Serialization_deserialize(PARROT_INTERP, PMC *sc, PMC *string_heap, STRING *data) {
    PMC    *stables   = PMCNULL;
    PMC    *objects   = PMCNULL;
    INTVAL  stable_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "STable", 0));
    INTVAL  smo_id    = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "SixModelObject", 0));
    Parrot_Int4 i;
    
    /* Create reader data structure and populate the basic bits. */
    SerializationReader *reader = mem_allocate_zeroed_typed(SerializationReader);
    GETATTR_SerializationContext_root_stables(interp, sc, stables);
    GETATTR_SerializationContext_root_objects(interp, sc, objects);
    reader->stables_list        = stables;
    reader->objects_list        = objects;
    reader->root.sc             = sc;
    reader->root.string_heap    = string_heap;
    reader->root.dependent_scs  = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    
    /* Put reader functions in place. */
    reader->read_int = read_int_func;
    reader->read_num = read_num_func;
    reader->read_str = read_str_func;
    
    /* Read header and disect the data into its parts. */
    check_and_disect_input(interp, reader, data);
    
    /* Resolve the SCs in the dependencies table. */
    resolve_dependencies(interp, reader);
    
    /* Disable GC at this stage; for one there's no point collecting when all
     * we're doing in here is allocating, but more importantly STable REPRData
     * may be in an inconsistent state during all of this and so we may not have
     * yet deserialized enough to know how to do marking/freeing. */
     Parrot_block_GC_mark(interp);
    
    /* Stub-allocate PMCs for all STables and objects, so we know where
     * they will all end up. */
    for (i = 0; i < reader->root.num_stables; i++)
        VTABLE_set_pmc_keyed_int(interp, stables, i, Parrot_pmc_new(interp, stable_id));
    for (i = 0; i < reader->root.num_objects; i++)
        VTABLE_set_pmc_keyed_int(interp, objects, i, Parrot_pmc_new(interp, smo_id));
     
     /* Deserialize STables, along with their representation data. */
     for (i = 0; i < reader->root.num_stables; i++)
        deserialize_stable(interp, reader, i,
            VTABLE_get_pmc_keyed_int(interp, stables, i));
     
     /* Deserialize objects. */
     for (i = 0; i < reader->root.num_objects; i++)
        deserialize_object(interp, reader, i,
            VTABLE_get_pmc_keyed_int(interp, objects, i));
     
     /* Re-enable GC. */
     Parrot_unblock_GC_mark(interp);
    
    /* Clear up afterwards. */
    mem_sys_free(reader);
}
