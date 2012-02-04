/* This implements bounded serialization, or at least drives the overall
 * process. Representations know how to serialize and deserialize themselves.
 * So mostly, this does the rest of the work. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "sixmodelobject.h"
#include "repr_registry.h"
#include "serialization_context.h"
#include "pmc_serializationcontext.h"

/* Version of the serialization format that we are currently at. */
#define CURRENT_VERSION 1

/* Various sizes (in bytes). */
#define HEADER_SIZE                 4 * 9
#define DEP_TABLE_ENTRY_SIZE        8
#define STABLES_TABLE_ENTRY_SIZE    8
#define OBJECTS_TABLE_ENTRY_SIZE    16

/* Some guesses. */
#define DEFAULT_STABLE_DATA_SIZE    4096
#define OBJECT_SIZE_GUESS           8

/* Possible reference types we can serialize. */
#define REFVAR_NULL                 1
#define REFVAR_OBJECT               2
#define REFVAR_VM_NULL              3
#define REFVAR_VM_INT               4
#define REFVAR_VM_NUM               5
#define REFVAR_VM_STR               6
#define REFVAR_VM_ARR_VAR           7
#define REFVAR_VM_ARR_STR           8
#define REFVAR_VM_ARR_INT           9
#define REFVAR_VM_HASH_STR_VAR      10
#define REFVAR_STATIC_CODEREF       11

/* Cached type IDs. */
static INTVAL smo_id = 0;

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
    if (*(writer->cur_write_offset) + need > *(writer->cur_write_limit)) {
        *(writer->cur_write_limit) *= 2;
        *(writer->cur_write_buffer) = mem_sys_realloc(*(writer->cur_write_buffer),
            *(writer->cur_write_limit));
    }
}

/* Writing function for native integers. */
void write_int_func(PARROT_INTERP, SerializationWriter *writer, INTVAL value) {
    expand_storage_if_needed(interp, writer, 8);
    write_int64(*(writer->cur_write_buffer), *(writer->cur_write_offset), value);
    *(writer->cur_write_offset) += 8;
}

/* Writing function for native numbers. */
void write_num_func(PARROT_INTERP, SerializationWriter *writer, FLOATVAL value) {
    expand_storage_if_needed(interp, writer, 8);
    write_double(*(writer->cur_write_buffer), *(writer->cur_write_offset), value);
    *(writer->cur_write_offset) += 8;
}

/* Writing function for native strings. */
void write_str_func(PARROT_INTERP, SerializationWriter *writer, STRING *value) {
    Parrot_Int4 heap_loc = add_string_to_heap(interp, writer, value);
    expand_storage_if_needed(interp, writer, 4);
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), heap_loc);
    *(writer->cur_write_offset) += 4;
}

/* Writes an object reference. */
void write_obj_ref(PARROT_INTERP, SerializationWriter *writer, PMC *ref) {
    Parrot_Int4 sc_id, idx;
    
    if (PMC_IS_NULL(SC_PMC(ref))) {
        /* This object doesn't belong to an SC yet, so it must be serialized as part of
         * this compilation unit. Add it to the work list. */
        SC_PMC(ref) = writer->root.sc;
        VTABLE_push_pmc(interp, writer->objects_list, ref);
    }
    sc_id = get_sc_id(interp, writer, SC_PMC(ref));
    idx   = (Parrot_Int4)SC_find_object_idx(interp, SC_PMC(ref), ref);
    
    expand_storage_if_needed(interp, writer, 8);
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), sc_id);
    *(writer->cur_write_offset) += 4;
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), idx);
    *(writer->cur_write_offset) += 4;
}

/* Writes an array where each item is a variant reference. */
void write_ref_func(PARROT_INTERP, SerializationWriter *writer, PMC *ref);
static void write_array_var(PARROT_INTERP, SerializationWriter *writer, PMC *arr) {
    Parrot_Int4 elems = (Parrot_Int4)VTABLE_elements(interp, arr);
    Parrot_Int4 i;
    
    /* Write out element count. */
    expand_storage_if_needed(interp, writer, 4);
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), elems);
    *(writer->cur_write_offset) += 4;
    
    /* Write elements. */
    for (i = 0; i < elems; i++)
        write_ref_func(interp, writer, VTABLE_get_pmc_keyed_int(interp, arr, i));
}

/* Writes an array where each item is an integer. */
static void write_array_int(PARROT_INTERP, SerializationWriter *writer, PMC *arr) {
    Parrot_Int4 elems = (Parrot_Int4)VTABLE_elements(interp, arr);
    Parrot_Int4 i;
    
    /* Write out element count. */
    expand_storage_if_needed(interp, writer, 4);
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), elems);
    *(writer->cur_write_offset) += 4;
    
    /* Write elements. */
    for (i = 0; i < elems; i++)
        write_int_func(interp, writer, VTABLE_get_integer_keyed_int(interp, arr, i));
}

/* Writes an array where each item is a string. */
static void write_array_str(PARROT_INTERP, SerializationWriter *writer, PMC *arr) {
    Parrot_Int4 elems = (Parrot_Int4)VTABLE_elements(interp, arr);
    Parrot_Int4 i;
    
    /* Write out element count. */
    expand_storage_if_needed(interp, writer, 4);
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), elems);
    *(writer->cur_write_offset) += 4;
    
    /* Write elements. */
    for (i = 0; i < elems; i++)
        write_str_func(interp, writer, VTABLE_get_string_keyed_int(interp, arr, i));
}

/* Writes a hash where each key is a string and each value a variant reference. */
void write_ref_func(PARROT_INTERP, SerializationWriter *writer, PMC *ref);
static void write_hash_str_var(PARROT_INTERP, SerializationWriter *writer, PMC *hash) {
    PMC *iter = VTABLE_get_iter(interp, hash);
    Parrot_Int4 elems = (Parrot_Int4)VTABLE_elements(interp, hash);
    
    /* Write out element count. */
    expand_storage_if_needed(interp, writer, 4);
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), elems);
    *(writer->cur_write_offset) += 4;
    
    /* Write elements, as key,value,key,value etc. */
    while (VTABLE_get_bool(interp, iter)) {
        STRING *key = VTABLE_shift_string(interp, iter);
        write_str_func(interp, writer, key);
        write_ref_func(interp, writer, VTABLE_get_pmc_keyed_str(interp, hash, key));
    }
}

/* Writes a reference to a code object in some SC. */
static void write_code_ref(PARROT_INTERP, SerializationWriter *writer, PMC *code) {
    PMC         *code_sc = VTABLE_getprop(interp, code, Parrot_str_new_constant(interp, "SC"));
    Parrot_Int4  sc_id   = get_sc_id(interp, writer, code_sc);
    Parrot_Int4  idx     = (Parrot_Int4)SC_find_code_idx(interp, code_sc, code);
    expand_storage_if_needed(interp, writer, 8);
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), sc_id);
    *(writer->cur_write_offset) += 4;
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), idx);
    *(writer->cur_write_offset) += 4;
}

/* Writing function for references to things. */
void write_ref_func(PARROT_INTERP, SerializationWriter *writer, PMC *ref) {
    /* Work out what kind of thing we have and determine the discriminator. */
    Parrot_Int2 discrim = 0;
    if (ref == NULL) {
        discrim = REFVAR_NULL;
    }
    else if (PMC_IS_NULL(ref) || ref->vtable->base_type == enum_class_Undef) {
        discrim = REFVAR_VM_NULL;
    }
    else if (ref->vtable->base_type == smo_id) {
        discrim = REFVAR_OBJECT;
    }
    else if (ref->vtable->base_type == enum_class_Integer) {
        discrim = REFVAR_VM_INT;
    }
    else if (ref->vtable->base_type == enum_class_Float) {
        discrim = REFVAR_VM_NUM;
    }
    else if (ref->vtable->base_type == enum_class_String) {
        discrim = REFVAR_VM_STR;
    }
    else if (ref->vtable->base_type == enum_class_ResizablePMCArray) {
        discrim = REFVAR_VM_ARR_VAR;
    }
    else if (ref->vtable->base_type == enum_class_ResizableIntegerArray) {
        discrim = REFVAR_VM_ARR_INT;
    }
    else if (ref->vtable->base_type == enum_class_ResizableStringArray) {
        discrim = REFVAR_VM_ARR_STR;
    }
    else if (ref->vtable->base_type == enum_class_Hash) {
        discrim = REFVAR_VM_HASH_STR_VAR;
    }
    else if (ref->vtable->base_type == enum_class_Sub) {
        /* Is it a static code reference? */
        PMC *code_sc = VTABLE_getprop(interp, ref, Parrot_str_new_constant(interp, "SC"));
        PMC *static_cr = VTABLE_getprop(interp, ref, Parrot_str_new_constant(interp, "STATIC_CODE_REF"));
        if (!PMC_IS_NULL(code_sc) && !PMC_IS_NULL(static_cr)) {
            discrim = REFVAR_STATIC_CODEREF;
        }
        else {
            printf("WARNING: No closure serialization\n");
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Serialization Error: Closure serializatin not yet implemented");
        }
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialization Error: Unimplemented object type passed to write_ref");
    }

    /* Write the discriminator. */
    expand_storage_if_needed(interp, writer, 2);
    write_int16(*(writer->cur_write_buffer), *(writer->cur_write_offset), discrim);
    *(writer->cur_write_offset) += 2;
    
    /* Now take appropriate action. */
    switch (discrim) {
        case REFVAR_NULL:
        case REFVAR_VM_NULL:
            /* Nothing to do for these. */
            break;
        case REFVAR_OBJECT:
            write_obj_ref(interp, writer, ref);
            break;
        case REFVAR_VM_INT:
            write_int_func(interp, writer, VTABLE_get_integer(interp, ref));
            break;
        case REFVAR_VM_NUM:
            write_num_func(interp, writer, VTABLE_get_number(interp, ref));
            break;
        case REFVAR_VM_STR:
            write_str_func(interp, writer, VTABLE_get_string(interp, ref));
            break;
        case REFVAR_VM_ARR_VAR:
            write_array_var(interp, writer, ref);
            break;
        case REFVAR_VM_ARR_INT:
            write_array_int(interp, writer, ref);
            break;
        case REFVAR_VM_ARR_STR:
            write_array_str(interp, writer, ref);
            break;
        case REFVAR_VM_HASH_STR_VAR:
            write_hash_str_var(interp, writer, ref);
            break;
        case REFVAR_STATIC_CODEREF:
            write_code_ref(interp, writer, ref);
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Serialization Error: Unimplemented object type passed to write_ref");
    }
}

/* Writing function for references to STables. */
void write_stable_ref_func(PARROT_INTERP, SerializationWriter *writer, STable *st) {
    Parrot_Int4 sc_id, idx;
    get_stable_ref_info(interp, writer, st->stable_pmc, &sc_id, &idx);
    expand_storage_if_needed(interp, writer, 8);
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), sc_id);
    *(writer->cur_write_offset) += 4;
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), idx);
    *(writer->cur_write_offset) += 4;
}

/* Concatenates the various output segments into a single binary string. */
static STRING * concatenate_outputs(PARROT_INTERP, SerializationWriter *writer) {
    char        *output      = NULL;
    Parrot_Int4  output_size = 0;
    Parrot_Int4  offset      = 0;
    
    /* Calculate total size. */
    output_size += HEADER_SIZE;
    output_size += writer->root.num_dependencies * DEP_TABLE_ENTRY_SIZE;
    output_size += writer->root.num_stables * STABLES_TABLE_ENTRY_SIZE;
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
        writer->root.num_stables * STABLES_TABLE_ENTRY_SIZE);
    offset += writer->root.num_stables * STABLES_TABLE_ENTRY_SIZE;
    
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
static void serialize_stable(PARROT_INTERP, SerializationWriter *writer, PMC *st_pmc) {
    STable *st = STABLE_STRUCT(st_pmc);
    INTVAL  i;
    
    /* Ensure there's space in the STables table; grow if not. */
    Parrot_Int4 offset = writer->root.num_stables * STABLES_TABLE_ENTRY_SIZE;
    if (offset + STABLES_TABLE_ENTRY_SIZE > writer->stables_table_alloc) {
        writer->stables_table_alloc *= 2;
        writer->root.stables_table = mem_sys_realloc(writer->root.stables_table, writer->stables_table_alloc);
    }
    
    /* Make STables table entry. */
    write_int32(writer->root.stables_table, offset, add_string_to_heap(interp, writer, st->REPR->name));
    write_int32(writer->root.objects_table, offset + 4, writer->objects_data_offset);
    
    /* Increment count of stables in the table. */
    writer->root.num_stables++;
    
    /* Make sure we're going to write to the correct place. */
    writer->cur_write_buffer = &(writer->root.stables_data);
    writer->cur_write_offset = &(writer->stables_data_offset);
    writer->cur_write_limit  = &(writer->stables_data_alloc);
    
    /* Write HOW and WHAT. */
    write_obj_ref(interp, writer, st->HOW);
    write_obj_ref(interp, writer, st->WHAT);

    /* XXX Method cache and v-table. */
    
    /* Type check cache. */
    write_int_func(interp, writer, st->type_check_cache_length);
    for (i = 0; i < st->type_check_cache_length; i++)
        write_ref_func(interp, writer, st->type_check_cache[i]);
    
    /* XXX More to do here. */
    printf("WARNING: STable serialization not yet fully implemented\n");
    
    /* If the REPR has a function to serialize representation data, call it. */
    if (st->REPR->serialize_repr_data)
        st->REPR->serialize_repr_data(interp, st, writer);
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
    
    /* Make sure we're going to write to the correct place. */
    writer->cur_write_buffer = &(writer->root.objects_data);
    writer->cur_write_offset = &(writer->objects_data_offset);
    writer->cur_write_limit  = &(writer->objects_data_alloc);
    
    /* Delegate to its serialization REPR function. */
    if (IS_CONCRETE(obj)) {
        if (REPR(obj)->serialize)
            REPR(obj)->serialize(interp, STABLE(obj), OBJECT_BODY(obj), writer);
        else
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Missing serialize REPR function");
    }
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
    PMC         *codes    = PMCNULL;
    STRING      *result   = STRINGNULL;
    Parrot_Int4  sc_elems = (Parrot_Int4)VTABLE_elements(interp, sc);
    
    /* Set up writer with some initial settings. */
    SerializationWriter *writer = mem_allocate_zeroed_typed(SerializationWriter);
    GETATTR_SerializationContext_root_stables(interp, sc, stables);
    GETATTR_SerializationContext_root_objects(interp, sc, objects);
    GETATTR_SerializationContext_root_codes(interp, sc, codes);
    writer->root.version        = CURRENT_VERSION;
    writer->root.sc             = sc;
    writer->stables_list        = stables;
    writer->objects_list        = objects;
    writer->codes_list          = codes;
    writer->root.string_heap    = empty_string_heap;
    writer->root.dependent_scs  = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    
    /* Allocate initial memory space for storing serialized tables and data. */
    writer->dependencies_table_alloc = DEP_TABLE_ENTRY_SIZE * 4;
    writer->root.dependencies_table  = mem_sys_allocate(writer->dependencies_table_alloc);
    writer->stables_table_alloc      = STABLES_TABLE_ENTRY_SIZE * (sc_elems || 1);
    writer->root.stables_table       = mem_sys_allocate(writer->stables_table_alloc);
    writer->objects_table_alloc      = OBJECTS_TABLE_ENTRY_SIZE * (sc_elems || 1);
    writer->root.objects_table       = mem_sys_allocate(writer->objects_table_alloc);
    writer->stables_data_alloc       = DEFAULT_STABLE_DATA_SIZE;
    writer->root.stables_data        = mem_sys_allocate(writer->stables_data_alloc);
    writer->objects_data_alloc       = OBJECT_SIZE_GUESS * (sc_elems || 1);
    writer->root.objects_data        = mem_sys_allocate(writer->objects_data_alloc);
    
    /* Populate write functions table. */
    writer->write_int        = write_int_func;
    writer->write_num        = write_num_func;
    writer->write_str        = write_str_func;
    writer->write_ref        = write_ref_func;
    writer->write_stable_ref = write_stable_ref_func;
    
    /* Other init. */
    smo_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "SixModelObject", 0));

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
    char *read_end = *(reader->cur_read_buffer) + *(reader->cur_read_offset) + amount;
    if (read_end > *(reader->cur_read_end))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Read past end of serialization data buffer");
}

/* Reading function for native integers. */
INTVAL read_int_func(PARROT_INTERP, SerializationReader *reader) {
    INTVAL result;
    assert_can_read(interp, reader, 8);
    result = read_int64(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 8;
    return result;
}

/* Reading function for native numbers. */
FLOATVAL read_num_func(PARROT_INTERP, SerializationReader *reader) {
    FLOATVAL result;
    assert_can_read(interp, reader, 8);
    result = read_double(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 8;
    return result;
}

/* Reading function for native strings. */
STRING * read_str_func(PARROT_INTERP, SerializationReader *reader) {
    STRING *result;
    assert_can_read(interp, reader, 4);
    result = read_string_from_heap(interp, reader,
        read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset)));
    *(reader->cur_read_offset) += 4;
    return result;
}

/* Reads in and resolves an object references. */
PMC * read_obj_ref(PARROT_INTERP, SerializationReader *reader) {
    Parrot_Int4 sc_id, idx;

    assert_can_read(interp, reader, 8);
    sc_id = read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 4;
    idx = read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 4;
    
    return SC_get_object(interp, locate_sc(interp, reader, sc_id), idx);
}

/* Reads in an array of variant references. */
PMC * read_ref_func(PARROT_INTERP, SerializationReader *reader);
static PMC * read_array_var(PARROT_INTERP, SerializationReader *reader) {
    PMC *result = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    Parrot_Int4 elems, i;

    /* Read the element count. */
    assert_can_read(interp, reader, 4);
    elems = read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 4;

    /* Read in the elements. */
    for (i = 0; i < elems; i++)
        VTABLE_set_pmc_keyed_int(interp, result, i, read_ref_func(interp, reader));

    return result;
}

/* Reads in an array of integers. */
static PMC * read_array_int(PARROT_INTERP, SerializationReader *reader) {
    PMC *result = Parrot_pmc_new(interp, enum_class_ResizableIntegerArray);
    Parrot_Int4 elems, i;

    /* Read the element count. */
    assert_can_read(interp, reader, 4);
    elems = read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 4;

    /* Read in the elements. */
    for (i = 0; i < elems; i++)
        VTABLE_set_integer_keyed_int(interp, result, i, read_int_func(interp, reader));

    return result;
}

/* Reads in an array of strings. */
static PMC * read_array_str(PARROT_INTERP, SerializationReader *reader) {
    PMC *result = Parrot_pmc_new(interp, enum_class_ResizableStringArray);
    Parrot_Int4 elems, i;

    /* Read the element count. */
    assert_can_read(interp, reader, 4);
    elems = read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 4;

    /* Read in the elements. */
    for (i = 0; i < elems; i++)
        VTABLE_set_string_keyed_int(interp, result, i, read_str_func(interp, reader));

    return result;
}

/* Reads in an hash with string keys and variant references. */
static PMC * read_hash_str_var(PARROT_INTERP, SerializationReader *reader) {
    PMC *result = Parrot_pmc_new(interp, enum_class_Hash);
    Parrot_Int4 elems, i;

    /* Read the element count. */
    assert_can_read(interp, reader, 4);
    elems = read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 4;

    /* Read in the elements. */
    for (i = 0; i < elems; i++) {
        STRING *key = read_str_func(interp, reader);
        VTABLE_set_pmc_keyed_str(interp, result, key, read_ref_func(interp, reader));
    }

    return result;
}

/* Reading function for references. */
PMC * read_ref_func(PARROT_INTERP, SerializationReader *reader) {
    PMC *result;
    
    /* Read the discriminator. */
    Parrot_Int2 discrim;
    assert_can_read(interp, reader, 2);
    discrim = read_int16(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 2;
    
    /* Decide what to do based on it. */
    switch (discrim) {
        case REFVAR_NULL:
            return NULL;
        case REFVAR_OBJECT:
            return read_obj_ref(interp, reader);
        case REFVAR_VM_NULL:
            return PMCNULL;
        case REFVAR_VM_INT:
            result = Parrot_pmc_new(interp, enum_class_Integer);
            VTABLE_set_integer_native(interp, result, read_int_func(interp, reader));
            return result;
        case REFVAR_VM_NUM:
            result = Parrot_pmc_new(interp, enum_class_Float);
            VTABLE_set_number_native(interp, result, read_num_func(interp, reader));
            return result;
        case REFVAR_VM_STR:
            result = Parrot_pmc_new(interp, enum_class_String);
            VTABLE_set_string_native(interp, result, read_str_func(interp, reader));
            return result;
        case REFVAR_VM_ARR_VAR:
            return read_array_var(interp, reader);
        case REFVAR_VM_ARR_INT:
            return read_array_int(interp, reader);
        case REFVAR_VM_ARR_STR:
            return read_array_str(interp, reader);
        case REFVAR_VM_HASH_STR_VAR:
            return read_hash_str_var(interp, reader);
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Serialization Error: Unimplemented case of read_ref");
    }
}

/* Reading function for STable references. */
STable * read_stable_ref_func(PARROT_INTERP, SerializationReader *reader) {
    Parrot_Int4 sc_id, idx;
    
    assert_can_read(interp, reader, 8);
    sc_id = read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 4;
    idx = read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 4;
    
    return STABLE_STRUCT(lookup_stable(interp, reader,sc_id, idx));
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
    prov_pos = reader->root.stables_table + reader->root.num_stables * STABLES_TABLE_ENTRY_SIZE;
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
static void deserialize_stable(PARROT_INTERP, SerializationReader *reader, INTVAL i, PMC *st_pmc) {
    STable *st = STABLE_STRUCT(st_pmc);

    /* Calculate location of STable's table row. */
    char *st_table_row = reader->root.objects_table + i * STABLES_TABLE_ENTRY_SIZE;
    
    /* Read in and look up representation. */
    st->REPR = REPR_get_by_name(interp,
        read_string_from_heap(interp, reader, read_int32(st_table_row, 0)));
    
    /* Set STable read position, and set current read buffer to the correct thing. */
    reader->stables_data_offset = read_int32(st_table_row, 4);
    reader->cur_read_buffer     = &(reader->root.stables_data);
    reader->cur_read_offset     = &(reader->stables_data_offset);
    reader->cur_read_end        = &(reader->stables_data_end);
    
    /* Read the HOW and WHAT. */
    st->HOW  = read_obj_ref(interp, reader);
    st->WHAT = read_obj_ref(interp, reader);
    
    /* XXX Method cache and v-table. */
    
    /* Type check cache. */
    st->type_check_cache_length = read_int_func(interp, reader);
    if (st->type_check_cache_length > 0) {
        st->type_check_cache = mem_sys_allocate(st->type_check_cache_length * sizeof(PMC *));
        for (i = 0; i < st->type_check_cache_length; i++)
            st->type_check_cache[i] = read_ref_func(interp, reader);
    }

    /* XXX More to do here. */
    printf("WARNING: STable deserialization not yet fully implemented\n");
    
    /* If the REPR has a function to deserialize representation data, call it. */
    if (st->REPR->deserialize_repr_data)
        st->REPR->deserialize_repr_data(interp, st, reader);

    PARROT_GC_WRITE_BARRIER(interp, st->stable_pmc);
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
    
    /* Set current read buffer to the correct thing. */
    reader->cur_read_buffer = &(reader->root.objects_data);
    reader->cur_read_offset = &(reader->objects_data_offset);
    reader->cur_read_end    = &(reader->objects_data_end);
     
    /* Delegate to its deserialization REPR function. */
    reader->objects_data_offset = read_int32(obj_table_row, 8);
    if ((read_int32(obj_table_row, 12) & 1) != 1)
        MARK_AS_TYPE_OBJECT(obj);
    else if (REPR(obj)->deserialize)
        REPR(obj)->deserialize(interp, STABLE(obj), OBJECT_BODY(obj), reader);
    else
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Missing deserialize REPR function");

    PARROT_GC_WRITE_BARRIER(interp, obj);
}

/* Takes serialized data, an empty SerializationContext to deserialize it into,
 * a strings heap and the set of static code refs for the compilation unit.
 * Deserializes the data into the required objects and STables. */
void Serialization_deserialize(PARROT_INTERP, PMC *sc, PMC *string_heap, PMC *static_codes, STRING *data) {
    PMC    *stables   = PMCNULL;
    PMC    *objects   = PMCNULL;
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
    
    /* Static code refs list for the SC becomes the initial full code
     * refs list. */
    SETATTR_SerializationContext_root_codes(interp, sc, static_codes);
    reader->codes_list = static_codes;
    
    /* Put reader functions in place. */
    reader->read_int        = read_int_func;
    reader->read_num        = read_num_func;
    reader->read_str        = read_str_func;
    reader->read_ref        = read_ref_func;
    reader->read_stable_ref = read_stable_ref_func;
    
    /* Other init. */
    smo_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "SixModelObject", 0));
    
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
        VTABLE_set_pmc_keyed_int(interp, stables, i, create_stable(interp, NULL, PMCNULL));
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
