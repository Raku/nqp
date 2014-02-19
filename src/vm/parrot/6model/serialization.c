/* This implements bounded serialization, or at least drives the overall
 * process. Representations know how to serialize and deserialize themselves.
 * So mostly, this does the rest of the work. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "sixmodelobject.h"
#include "repr_registry.h"
#include "serialization_context.h"
#include "containers.h"
#include "pmc_serializationcontext.h"
#include "pmc_nqplexinfo.h"
#include "pmc_ownedhash.h"
#include "pmc_ownedresizablepmcarray.h"
#include "pmc/pmc_sub.h"
#include "base64.h"

#define MAX(x, y) ((y) > (x) ? (y) : (x))

/* Version of the serialization format that we are currently at and lowest
 * version we support. */
#define CURRENT_VERSION 6
#define MIN_VERSION 1

/* Various sizes (in bytes). */
#define HEADER_SIZE                 4 * 16
#define DEP_TABLE_ENTRY_SIZE        8
#define STABLES_TABLE_ENTRY_SIZE    (version >= 4 ? 12 : 8)
#define OBJECTS_TABLE_ENTRY_SIZE    16
#define CLOSURES_TABLE_ENTRY_SIZE   24
#define CONTEXTS_TABLE_ENTRY_SIZE   16
#define REPOS_TABLE_ENTRY_SIZE      16

/* Some guesses. */
#define DEFAULT_STABLE_DATA_SIZE     4096
#define STABLES_TABLE_ENTRIES_GUESS  16
#define OBJECT_SIZE_GUESS            8
#define CLOSURES_TABLE_ENTRIES_GUESS 16
#define CONTEXTS_TABLE_ENTRIES_GUESS 4
#define DEFAULT_CONTEXTS_DATA_SIZE   1024

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
#define REFVAR_CLONED_CODEREF       12

/* Cached type IDs. */
static INTVAL smo_id = 0;
static INTVAL nqp_lexpad_id = 0;
static INTVAL perl6_lexpad_id = 0;
static INTVAL ctmthunk_id = 0;
static INTVAL ownedhash_id = 0;
static INTVAL ownedrpa_id = 0;
static INTVAL qrpa_id = 0;

/* Endian translation (file format is little endian, so on big endian we need
 * to twiddle. */
#if PARROT_BIGENDIAN
static void switch_endian(char *bytes, size_t size)
{
    size_t low  = 0;
    size_t high = size - 1;
    while (high > low) {
        char tmp    = bytes[low];
        bytes[low]  = bytes[high];
        bytes[high] = tmp;
        low++;
        high--;
    }
}
#endif

/* ***************************************************************************
 * Serialization (writing related)
 * ***************************************************************************/

/* Writes an int64 into a buffer. */
static void write_int64(char *buffer, size_t offset, Parrot_Int8 value) {
    memcpy(buffer + offset, &value, 8);
#if PARROT_BIGENDIAN
    switch_endian(buffer + offset, 8);
#endif
}

/* Writes an int32 into a buffer. */
static void write_int32(char *buffer, size_t offset, Parrot_Int4 value) {
    memcpy(buffer + offset, &value, 4);
#if PARROT_BIGENDIAN
    switch_endian(buffer + offset, 4);
#endif
}

/* Writes an int16 into a buffer. */
static void write_int16(char *buffer, size_t offset, Parrot_Int2 value) {
    memcpy(buffer + offset, &value, 2);
#if PARROT_BIGENDIAN
    switch_endian(buffer + offset, 2);
#endif
}

/* Writes an double into a buffer. */
static void write_double(char *buffer, size_t offset, double value) {
    memcpy(buffer + offset, &value, 8);
#if PARROT_BIGENDIAN
    switch_endian(buffer + offset, 8);
#endif
}

/* Adds an item to the string heap if needed, and returns the index where
 * it may be found. */
static Parrot_Int4 add_string_to_heap(PARROT_INTERP, SerializationWriter *writer, STRING *s) {
    if (STRING_IS_NULL(s)) {
        /* We ensured that the first entry in the heap represents the null string,
         * so can just hand back 0 here. */
        return 0;
    }
    else if (VTABLE_exists_keyed_str(interp, writer->seen_strings, s)) {
        return (Parrot_Int4)VTABLE_get_integer_keyed_str(interp, writer->seen_strings, s);
    }
    else {
        INTVAL next_idx = VTABLE_elements(interp, writer->root.string_heap);
        VTABLE_set_string_keyed_int(interp, writer->root.string_heap, next_idx, s);
        VTABLE_set_integer_keyed_str(interp, writer->seen_strings, s, next_idx);
        return (Parrot_Int4)next_idx;
    }
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
        writer->root.dependencies_table = (char *)mem_sys_realloc(writer->root.dependencies_table, writer->dependencies_table_alloc);
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
static void expand_storage_if_needed(PARROT_INTERP, SerializationWriter *writer, INTVAL need) {
    if (*(writer->cur_write_offset) + need > *(writer->cur_write_limit)) {
        *(writer->cur_write_limit) *= 2;
        *(writer->cur_write_buffer) = (char *)mem_sys_realloc(*(writer->cur_write_buffer),
            *(writer->cur_write_limit));
    }
}

/* Writing function for native integers. */
static void write_int_func(PARROT_INTERP, SerializationWriter *writer, INTVAL value) {
    expand_storage_if_needed(interp, writer, 8);
    write_int64(*(writer->cur_write_buffer), *(writer->cur_write_offset), value);
    *(writer->cur_write_offset) += 8;
}

/* Writing function for native numbers. */
static void write_num_func(PARROT_INTERP, SerializationWriter *writer, FLOATVAL value) {
    expand_storage_if_needed(interp, writer, 8);
    write_double(*(writer->cur_write_buffer), *(writer->cur_write_offset), value);
    *(writer->cur_write_offset) += 8;
}

/* Writing function for native strings. */
static void write_str_func(PARROT_INTERP, SerializationWriter *writer, STRING *value) {
    Parrot_Int4 heap_loc = add_string_to_heap(interp, writer, value);
    expand_storage_if_needed(interp, writer, 4);
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), heap_loc);
    *(writer->cur_write_offset) += 4;
}

/* Writes an object reference. */
static void write_obj_ref(PARROT_INTERP, SerializationWriter *writer, PMC *ref) {
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
    PMC         *code_sc = Parrot_pmc_getprop(interp, code, Parrot_str_new_constant(interp, "SC"));
    Parrot_Int4  sc_id   = get_sc_id(interp, writer, code_sc);
    Parrot_Int4  idx     = (Parrot_Int4)SC_find_code_idx(interp, code_sc, code);
    expand_storage_if_needed(interp, writer, 8);
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), sc_id);
    *(writer->cur_write_offset) += 4;
    write_int32(*(writer->cur_write_buffer), *(writer->cur_write_offset), idx);
    *(writer->cur_write_offset) += 4;
}

/* Given a closure, locate the static code reference it was originally cloned
 * from. */
static PMC * closure_to_static_code_ref(PARROT_INTERP, PMC *closure, INTVAL fatal) {
    /* Look up the static lexical info. */
    PMC *lexinfo = PARROT_SUB(closure)->lex_info;
    if (lexinfo == NULL) {
        if (fatal)
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Serialization Error: NULL lexical info for closure '%Ss'",
                VTABLE_get_string(interp, closure));
        else
            return PMCNULL;
    }
    if (lexinfo->vtable->base_type == nqp_lexpad_id || lexinfo->vtable->base_type == perl6_lexpad_id) {
        PMC *static_code = PARROT_NQPLEXINFO(lexinfo)->static_code;
        if (PMC_IS_NULL(static_code))
        {
            if (fatal)
                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "Serialization Error: missing static code ref for closure '%Ss'",
                    VTABLE_get_string(interp, closure));
            else
                return PMCNULL;
        }
        if (PMC_IS_NULL(Parrot_pmc_getprop(interp, static_code, Parrot_str_new_constant(interp, "STATIC_CODE_REF")))) {
            if (fatal)
                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "Serialization Error: could not locate static code ref for closure '%Ss'",
                    VTABLE_get_string(interp, static_code));
            else
                return PMCNULL;
        }
        return static_code;
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialization Error: unknown static lexical info type for '%Ss'",
            VTABLE_get_string(interp, closure));
    }
}

/* Takes an outer context that is potentially to be serialized. Checks if it
 * is of interest, and if so sets it up to be serialized. */
static Parrot_Int4 get_serialized_context_idx(PARROT_INTERP, SerializationWriter *writer, PMC *ctx) {
    PMC *ctx_sc = Parrot_pmc_getprop(interp, ctx, Parrot_str_new_constant(interp, "SC"));
    if (PMC_IS_NULL(ctx_sc)) {
        /* Make sure we should chase a level down. */
        if (PMC_IS_NULL(closure_to_static_code_ref(interp, PARROT_CALLCONTEXT(ctx)->current_sub, 0))) {
            return 0;
        }
        else {
            INTVAL idx = VTABLE_elements(interp, writer->contexts_list);
            VTABLE_set_pmc_keyed_int(interp, writer->contexts_list, idx, ctx);
            Parrot_pmc_setprop(interp, ctx, Parrot_str_new_constant(interp, "SC"), writer->root.sc);
            return (Parrot_Int4)idx + 1;
        }
    }
    else {
        INTVAL i, c;
        if (ctx_sc != writer->root.sc)
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Serialization Error: reference to context outside of SC");
        c = VTABLE_elements(interp, writer->contexts_list);
        for (i = 0; i < c; i++)
            if (VTABLE_get_pmc_keyed_int(interp, writer->contexts_list, i) == ctx)
                return (Parrot_Int4)i + 1;
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialization Error: could not locate outer context in current SC");
    }
}

/* Takes a closure, that is to be serialized. Checks if it has an outer that is
 * of interest, and if so sets it up to be serialized. */
static Parrot_Int4 get_serialized_outer_context_idx(PARROT_INTERP, SerializationWriter *writer, PMC *closure) {
    if (!PMC_IS_NULL(Parrot_pmc_getprop(interp, closure, Parrot_str_new_constant(interp, "COMPILER_STUB"))))
        return 0;
    if (PMC_IS_NULL(PARROT_SUB(closure)->outer_ctx))
        return 0;
    return get_serialized_context_idx(interp, writer, PARROT_SUB(closure)->outer_ctx);
}

/* Takes a closure that needs to be serialized. Makes an entry in the closures
 * table for it. Also adds it to this SC's code refs set and tags it with the
 * current SC. */
static void serialize_closure(PARROT_INTERP, SerializationWriter *writer, PMC *closure) {
    Parrot_Int4 static_sc_id, static_idx, context_idx;
    
    /* Locate the static code object. */
    PMC *static_code_ref = closure_to_static_code_ref(interp, closure, 1);
    PMC *static_code_sc  = Parrot_pmc_getprop(interp, static_code_ref, Parrot_str_new_constant(interp, "SC"));

    /* Ensure there's space in the closures table; grow if not. */
    Parrot_Int4 offset = writer->root.num_closures * CLOSURES_TABLE_ENTRY_SIZE;
    if (offset + CLOSURES_TABLE_ENTRY_SIZE > writer->closures_table_alloc) {
        writer->closures_table_alloc *= 2;
        writer->root.closures_table = (char *)mem_sys_realloc(writer->root.closures_table, writer->closures_table_alloc);
    }
    
    /* Get the index of the context (which will add it to the todo list if
     * needed). */
    context_idx = get_serialized_outer_context_idx(interp, writer, closure);
    
    /* Add an entry to the closures table. */
    static_sc_id = get_sc_id(interp, writer, static_code_sc);
    static_idx   = (Parrot_Int4)SC_find_code_idx(interp, static_code_sc, static_code_ref);
    write_int32(writer->root.closures_table, offset, static_sc_id);
    write_int32(writer->root.closures_table, offset + 4, static_idx);
    write_int32(writer->root.closures_table, offset + 8, context_idx);
    
    /* Check if it has a static code object. */
    if (!PMC_IS_NULL(PARROT_SUB(closure)->multi_signature)) {
        PMC *code_obj = PARROT_SUB(closure)->multi_signature;
        write_int32(writer->root.closures_table, offset + 12, 1);
        if (PMC_IS_NULL(SC_PMC(code_obj))) {
            SC_PMC(code_obj) = writer->root.sc;
            VTABLE_push_pmc(interp, writer->objects_list, code_obj);
        }
        write_int32(writer->root.closures_table, offset + 16,
            get_sc_id(interp, writer, SC_PMC(code_obj)));
        write_int32(writer->root.closures_table, offset + 20,
            (Parrot_Int4)SC_find_object_idx(interp, SC_PMC(code_obj), code_obj));
    }
    else {
        write_int32(writer->root.closures_table, offset + 12, 0);
    }
    
    /* Increment count of closures in the table. */
    writer->root.num_closures++;

    /* Add the closure to this SC, and mark it as as being in it. */
    VTABLE_push_pmc(interp, writer->codes_list, closure);
    Parrot_pmc_setprop(interp, closure, Parrot_str_new_constant(interp, "SC"), writer->root.sc);
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
    else if (ref->vtable->base_type == enum_class_Pointer) {
        /* This is really being used to hang caches off in Rakudo, at least. So
         * we just drop it. */
        discrim = REFVAR_VM_NULL;
    }
    else if (ref->vtable->base_type == ctmthunk_id) {
        /* Another example of a generated cache/thunk that we should not serialize. */
        discrim = REFVAR_VM_NULL;
    }
    else if (ref->vtable->base_type == enum_class_FileHandle) {
        /* Can't serialize handles. */
        discrim = REFVAR_VM_NULL;
    }
    else if (ref->vtable->base_type == enum_class_CallContext) {
        /* XXX This is a hack for Rakudo's sake; it keeps a CallContext around in
         * the lexpad, for no really good reason. */
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
    else if (ref->vtable->base_type == ownedrpa_id) {
        discrim = REFVAR_VM_ARR_VAR;
    }
    else if (ref->vtable->base_type == qrpa_id) {
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
    else if (ref->vtable->base_type == ownedhash_id) {
        discrim = REFVAR_VM_HASH_STR_VAR;
    }
    else if (ref->vtable->base_type == enum_class_Sub || ref->vtable->base_type == enum_class_Coroutine) {
        PMC *code_sc = Parrot_pmc_getprop(interp, ref, Parrot_str_new_constant(interp, "SC"));
        PMC *static_cr = Parrot_pmc_getprop(interp, ref, Parrot_str_new_constant(interp, "STATIC_CODE_REF"));
        if (!PMC_IS_NULL(code_sc) && !PMC_IS_NULL(static_cr)) {
            /* Static code reference. */
            discrim = REFVAR_STATIC_CODEREF;
        }
        else if (!PMC_IS_NULL(code_sc)) {
            /* Closure, but already seen and serialization already handled. */
            discrim = REFVAR_CLONED_CODEREF;
        }
        else {
            /* Closure but didn't see it yet. Take care of it serialization, which
             * gets it marked with this SC. Then it's just a normal code ref that
             * needs serializing. */
            serialize_closure(interp, writer, ref);
            discrim = REFVAR_CLONED_CODEREF;
        }
    }
    else if (ref->vtable->base_type == enum_class_Object) {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialization Error: Parrot object type '%Ss' passed to write_ref",
            VTABLE_name(interp, VTABLE_get_class(interp, ref)));
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialization Error: Unimplemented object type '%Ss' passed to write_ref",
            ref->vtable->whoami);
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
        case REFVAR_CLONED_CODEREF:
            write_code_ref(interp, writer, ref);
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Serialization Error: Unimplemented object type '%Ss' passed to write_ref",
                ref->vtable->whoami);
    }
}

/* Writing function for references to STables. */
static void write_stable_ref_func(PARROT_INTERP, SerializationWriter *writer, STable *st) {
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
    char        *output_b64  = NULL;
    Parrot_Int4  output_size = 0;
    Parrot_Int4  offset      = 0;
    Parrot_Int4  version     = writer->root.version;
    
    /* Calculate total size. */
    output_size += HEADER_SIZE;
    output_size += writer->root.num_dependencies * DEP_TABLE_ENTRY_SIZE;
    output_size += writer->root.num_stables * STABLES_TABLE_ENTRY_SIZE;
    output_size += writer->stables_data_offset;
    output_size += writer->root.num_objects * OBJECTS_TABLE_ENTRY_SIZE;
    output_size += writer->objects_data_offset;
    output_size += writer->root.num_closures * CLOSURES_TABLE_ENTRY_SIZE;
    output_size += writer->root.num_contexts * CONTEXTS_TABLE_ENTRY_SIZE;
    output_size += writer->contexts_data_offset;
    output_size += writer->root.num_repos * REPOS_TABLE_ENTRY_SIZE;
    
    /* Allocate a buffer that size. */
    output = (char *)mem_sys_allocate(output_size);
    
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
    
    /* Put closures table in place, and set location/rows in header. */
    write_int32(output, 36, offset);
    write_int32(output, 40, writer->root.num_closures);
    memcpy(output + offset, writer->root.closures_table, 
        writer->root.num_closures * CLOSURES_TABLE_ENTRY_SIZE);
    offset += writer->root.num_closures * CLOSURES_TABLE_ENTRY_SIZE;

    /* Put contexts table in place, and set location/rows in header. */
    write_int32(output, 44, offset);
    write_int32(output, 48, writer->root.num_contexts);
    memcpy(output + offset, writer->root.contexts_table, 
        writer->root.num_contexts * CONTEXTS_TABLE_ENTRY_SIZE);
    offset += writer->root.num_contexts * CONTEXTS_TABLE_ENTRY_SIZE;
    
    /* Put contexts data in place. */
    write_int32(output, 52, offset);
    memcpy(output + offset, writer->root.contexts_data,
        writer->contexts_data_offset);
    offset += writer->contexts_data_offset;
    
    /* Put repossessions table in place, and set location/rows in header. */
    write_int32(output, 56, offset);
    write_int32(output, 60, writer->root.num_repos);
    memcpy(output + offset, writer->root.repos_table, 
        writer->root.num_repos * REPOS_TABLE_ENTRY_SIZE);
    offset += writer->root.num_repos * REPOS_TABLE_ENTRY_SIZE;
    
    /* Sanity check. */
    if (offset != output_size)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialization sanity check failed: offset != output_size");
    
    /* Base 64 encode. */
    output_b64 = base64_encode(output, output_size);
    mem_sys_free(output);
    if (output_b64 == NULL)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialization error: failed to convert to base64");
    
    /* Make a Parrot binary string containing it (external flag means use
     * this buffer, not copy it to a new one). */
    return Parrot_str_new_init(interp, output_b64, strlen(output_b64),
        Parrot_binary_encoding_ptr, PObj_external_FLAG);
}

/* This handles the serialization of an STable, and calls off to serialize
 * its representation data also. */
static void serialize_stable(PARROT_INTERP, SerializationWriter *writer, PMC *st_pmc) {
    STable *st = STABLE_STRUCT(st_pmc);
    Parrot_Int4 version = writer->root.version;
    INTVAL  i;
    
    /* Ensure there's space in the STables table; grow if not. */
    Parrot_Int4 offset = writer->root.num_stables * STABLES_TABLE_ENTRY_SIZE;
    if (offset + STABLES_TABLE_ENTRY_SIZE > writer->stables_table_alloc) {
        writer->stables_table_alloc *= 2;
        writer->root.stables_table = (char *)mem_sys_realloc(writer->root.stables_table, writer->stables_table_alloc);
    }
    
    /* Make STables table entry. */
    write_int32(writer->root.stables_table, offset, add_string_to_heap(interp, writer, st->REPR->name));
    write_int32(writer->root.stables_table, offset + 4, writer->stables_data_offset);
    
    /* Increment count of stables in the table. */
    writer->root.num_stables++;
    
    /* Make sure we're going to write to the correct place. */
    writer->cur_write_buffer = &(writer->root.stables_data);
    writer->cur_write_offset = &(writer->stables_data_offset);
    writer->cur_write_limit  = &(writer->stables_data_alloc);
    
    /* Write HOW, WHAT and WHO. */
    write_obj_ref(interp, writer, st->HOW);
    write_obj_ref(interp, writer, st->WHAT);
    write_ref_func(interp, writer, st->WHO);

    /* Method cache and v-table. */
    write_ref_func(interp, writer, st->method_cache);
    write_int_func(interp, writer, st->vtable_length);
    for (i = 0; i < st->vtable_length; i++)
        write_ref_func(interp, writer, st->vtable[i]);
    
    /* Type check cache. */
    write_int_func(interp, writer, st->type_check_cache_length);
    for (i = 0; i < st->type_check_cache_length; i++)
        write_ref_func(interp, writer, st->type_check_cache[i]);
    
    /* Mode flags. */
    write_int_func(interp, writer, st->mode_flags);
    
    /* Boolification spec. */
    write_int_func(interp, writer, st->boolification_spec != NULL);
    if (st->boolification_spec) {
        write_int_func(interp, writer, st->boolification_spec->mode);
        write_ref_func(interp, writer, st->boolification_spec->method);
    }
    
    /* Container spec. */
    write_int_func(interp, writer, st->container_spec != NULL);
    if (st->container_spec) {
        /* Write container spec name. */
        write_str_func(interp, writer, st->container_spec->name);
        
        /* Give container spec a chance to serialize any data it wishes. */
        st->container_spec->serialize(interp, st, writer);
    }
    
    /* Invocation spec. */
    if (writer->root.version >= 5) {
        write_int_func(interp, writer, st->invocation_spec != NULL);
        if (st->invocation_spec) {
            write_ref_func(interp, writer, st->invocation_spec->value_slot.class_handle);
            write_str_func(interp, writer, st->invocation_spec->value_slot.attr_name);
            write_int_func(interp, writer, st->invocation_spec->value_slot.hint);
            write_ref_func(interp, writer, st->invocation_spec->invocation_handler);
        }
    }
    
    /* Store offset we save REPR data at. */
    write_int32(writer->root.stables_table, offset + 8, writer->stables_data_offset);
    
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
    if (obj->vtable->base_type != smo_id)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Non-6model object in object serialization list");
    get_stable_ref_info(interp, writer, STABLE_PMC(obj), &sc, &sc_idx);
    
    /* Ensure there's space in the objects table; grow if not. */
    offset = writer->root.num_objects * OBJECTS_TABLE_ENTRY_SIZE;
    if (offset + OBJECTS_TABLE_ENTRY_SIZE > writer->objects_table_alloc) {
        writer->objects_table_alloc *= 2;
        writer->root.objects_table = (char *)mem_sys_realloc(writer->root.objects_table, writer->objects_table_alloc);
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

/* This handles the serialization of a context, which means serializing
 * the stuff in its lexpad. */
static void serialize_context(PARROT_INTERP, SerializationWriter *writer, PMC *ctx) {
    Parrot_Int4 i, offset, static_sc_id, static_idx;
    
    /* Grab lexpad, which we'll serialize later on. */
    PMC *lexpad    = PARROT_CALLCONTEXT(ctx)->lex_pad;
    PMC *lexinfo   = PARROT_SUB(PARROT_CALLCONTEXT(ctx)->current_sub)->lex_info;
    PMC *lexiter   = VTABLE_get_iter(interp, lexpad);
    
    /* Locate the static code ref this context points to. */
    PMC *static_code_ref = closure_to_static_code_ref(interp, PARROT_CALLCONTEXT(ctx)->current_sub, 1);
    PMC *static_code_sc  = Parrot_pmc_getprop(interp, static_code_ref, Parrot_str_new_constant(interp, "SC"));
    if (PMC_IS_NULL(static_code_sc))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialization Error: closure outer is a code object not in an SC");
    static_sc_id = get_sc_id(interp, writer, static_code_sc);
    static_idx   = (Parrot_Int4)SC_find_code_idx(interp, static_code_sc, static_code_ref);

    /* Ensure there's space in the STables table; grow if not. */
    offset = writer->root.num_contexts * CONTEXTS_TABLE_ENTRY_SIZE;
    if (offset + CONTEXTS_TABLE_ENTRY_SIZE > writer->contexts_table_alloc) {
        writer->contexts_table_alloc *= 2;
        writer->root.contexts_table = (char *)mem_sys_realloc(writer->root.contexts_table, writer->contexts_table_alloc);
    }
    
    /* Make contexts table entry. */
    write_int32(writer->root.contexts_table, offset, static_sc_id);
    write_int32(writer->root.contexts_table, offset + 4, static_idx);
    write_int32(writer->root.contexts_table, offset + 8, writer->contexts_data_offset);
    
    /* See if there's any relevant outer context, and if so set it up to
     * be serialized. */
    if (!PMC_IS_NULL(PARROT_CALLCONTEXT(ctx)->outer_ctx))
        write_int32(writer->root.contexts_table, offset + 12,
            get_serialized_context_idx(interp, writer, PARROT_CALLCONTEXT(ctx)->outer_ctx));
    else
        write_int32(writer->root.contexts_table, offset + 12, 0);
    
    /* Increment count of stables in the table. */
    writer->root.num_contexts++;
    
    /* Set up writer. */
    writer->cur_write_buffer = &(writer->root.contexts_data);
    writer->cur_write_offset = &(writer->contexts_data_offset);
    writer->cur_write_limit  = &(writer->contexts_data_alloc);
    
    /* Serialize lexicals. */
    writer->write_int(interp, writer, VTABLE_elements(interp, lexpad));
    while (VTABLE_get_bool(interp, lexiter)) {
        STRING *sym = VTABLE_shift_string(interp, lexiter);
        writer->write_str(interp, writer, sym);
        switch (VTABLE_get_integer_keyed_str(interp, lexinfo, sym) & 3) {
            case REGNO_INT:
                writer->write_int(interp, writer,
                    VTABLE_get_integer_keyed_str(interp, lexpad, sym));
                break;
            case REGNO_NUM:
                writer->write_num(interp, writer,
                    VTABLE_get_number_keyed_str(interp, lexpad, sym));
                break;
            case REGNO_STR:
                writer->write_str(interp, writer,
                    VTABLE_get_string_keyed_str(interp, lexpad, sym));
                break;
            default:
                writer->write_ref(interp, writer,
                    VTABLE_get_pmc_keyed_str(interp, lexpad, sym));
        }
    }
}

/* Goes through the list of repossessions and serializes them all. */
static void serialize_repossessions(PARROT_INTERP, SerializationWriter *writer) {
    INTVAL i;
    
    /* Obtain list of repossession object indexes and original SCs. */
    PMC *rep_indexes, *rep_scs;
    GETATTR_SerializationContext_rep_indexes(interp, writer->root.sc, rep_indexes);
    GETATTR_SerializationContext_rep_scs(interp, writer->root.sc, rep_scs);
    
    /* Allocate table space, provided we've actually something to do. */
    writer->root.num_repos = (Parrot_Int4)VTABLE_elements(interp, rep_indexes);
    if (writer->root.num_repos == 0)
        return;
    writer->root.repos_table = (char *)mem_sys_allocate(writer->root.num_repos * REPOS_TABLE_ENTRY_SIZE);
    
    /* Make entries. */
    for (i = 0; i < writer->root.num_repos; i++) {
        Parrot_Int4  offset  = (Parrot_Int4)(i * REPOS_TABLE_ENTRY_SIZE);
        Parrot_Int4  obj_idx = (Parrot_Int4)(VTABLE_get_integer_keyed_int(interp, rep_indexes, i) >> 1);
        Parrot_Int4  is_st   = VTABLE_get_integer_keyed_int(interp, rep_indexes, i) & 1;
        PMC         *orig_sc = VTABLE_get_pmc_keyed_int(interp, rep_scs, i);

        /* Work out original object's SC location. */
        Parrot_Int4 orig_sc_id = get_sc_id(interp, writer, orig_sc);
        Parrot_Int4 orig_idx   = (Parrot_Int4)(is_st ?
            SC_find_stable_idx(interp, orig_sc, VTABLE_get_pmc_keyed_int(interp, writer->stables_list, obj_idx)) :
            SC_find_object_idx(interp, orig_sc, VTABLE_get_pmc_keyed_int(interp, writer->objects_list, obj_idx)));
        
        /* Write table row. */
        write_int32(writer->root.repos_table, offset, is_st);
        write_int32(writer->root.repos_table, offset + 4, obj_idx);
        write_int32(writer->root.repos_table, offset + 8, orig_sc_id);
        write_int32(writer->root.repos_table, offset + 12, orig_idx);
    }
}

/* This is the overall serialization loop. It keeps an index into the list of
 * STables and objects in the SC. As we discover new ones, they get added. We
 * finished when we've serialized everything. */
static void serialize(PARROT_INTERP, SerializationWriter *writer) {
    INTVAL work_todo = 1;
    while (work_todo) {
        /* Current work list sizes. */
        INTVAL stables_todo  = VTABLE_elements(interp, writer->stables_list);
        INTVAL objects_todo  = VTABLE_elements(interp, writer->objects_list);
        INTVAL contexts_todo = VTABLE_elements(interp, writer->contexts_list);
        
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
        
        /* Serialize any contexts on the todo list. */
        while (writer->contexts_list_pos < contexts_todo) {
            serialize_context(interp, writer, VTABLE_get_pmc_keyed_int(interp,
                writer->contexts_list, writer->contexts_list_pos));
            writer->contexts_list_pos++;
            work_todo = 1;
        }
    }
    
    /* Finally, serialize repossessions table (this can't make any more
     * work, so is done as a separate step here at the end). */
    serialize_repossessions(interp, writer);
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
    Parrot_Int4  version  = CURRENT_VERSION;
    
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
    writer->contexts_list       = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    writer->root.string_heap    = empty_string_heap;
    writer->root.dependent_scs  = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    writer->seen_strings        = Parrot_pmc_new(interp, enum_class_Hash);
    
    /* Allocate initial memory space for storing serialized tables and data. */
    writer->dependencies_table_alloc = DEP_TABLE_ENTRY_SIZE * 4;
    writer->root.dependencies_table  = (char *)mem_sys_allocate(writer->dependencies_table_alloc);
    writer->stables_table_alloc      = STABLES_TABLE_ENTRY_SIZE * STABLES_TABLE_ENTRIES_GUESS;
    writer->root.stables_table       = (char *)mem_sys_allocate(writer->stables_table_alloc);
    writer->objects_table_alloc      = OBJECTS_TABLE_ENTRY_SIZE * MAX(sc_elems, 1);
    writer->root.objects_table       = (char *)mem_sys_allocate(writer->objects_table_alloc);
    writer->stables_data_alloc       = DEFAULT_STABLE_DATA_SIZE;
    writer->root.stables_data        = (char *)mem_sys_allocate(writer->stables_data_alloc);
    writer->objects_data_alloc       = OBJECT_SIZE_GUESS * MAX(sc_elems, 1);
    writer->root.objects_data        = (char *)mem_sys_allocate(writer->objects_data_alloc);
    writer->closures_table_alloc     = CLOSURES_TABLE_ENTRY_SIZE * CLOSURES_TABLE_ENTRIES_GUESS;
    writer->root.closures_table      = (char *)mem_sys_allocate(writer->closures_table_alloc);
    writer->contexts_table_alloc     = CONTEXTS_TABLE_ENTRY_SIZE * CONTEXTS_TABLE_ENTRIES_GUESS;
    writer->root.contexts_table      = (char *)mem_sys_allocate(writer->contexts_table_alloc);
    writer->contexts_data_alloc      = DEFAULT_CONTEXTS_DATA_SIZE;
    writer->root.contexts_data       = (char *)mem_sys_allocate(writer->contexts_data_alloc);
    
    /* Populate write functions table. */
    writer->write_int        = write_int_func;
    writer->write_num        = write_num_func;
    writer->write_str        = write_str_func;
    writer->write_ref        = write_ref_func;
    writer->write_stable_ref = write_stable_ref_func;
    
    /* Disable GC at this stage; the stuff hanging off writer isn't anchored. */
     Parrot_block_GC_mark(interp);
    
    /* Other init. */
    smo_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "SixModelObject", 0));
    nqp_lexpad_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "NQPLexInfo", 0));
    perl6_lexpad_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "Perl6LexInfo", 0));
    ctmthunk_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "CTMThunk", 0));
    ownedhash_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "OwnedHash", 0));
    ownedrpa_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "OwnedResizablePMCArray", 0));
    qrpa_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "QRPA", 0));
    
    /* Initialize string heap so first entry is the NULL string. */
    VTABLE_push_string(interp, empty_string_heap, STRINGNULL);

    /* Start serializing. */
    serialize(interp, writer);

    /* Build a single result string out of the serialized data. */
    result = concatenate_outputs(interp, writer);
    
    /* Re-enable GC. */
    Parrot_unblock_GC_mark(interp);

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
#if PARROT_BIGENDIAN
    switch_endian(buffer + offset, 8);
#endif
    memcpy(&value, buffer + offset, 8);
    return value;
}

/* Reads an int32 from a buffer. */
static Parrot_Int4 read_int32(char *buffer, size_t offset) {
    Parrot_Int4 value;
#if PARROT_BIGENDIAN
    switch_endian(buffer + offset, 4);
#endif
    memcpy(&value, buffer + offset, 4);
    return value;
}

/* Reads an int16 from a buffer. */
static Parrot_Int2 read_int16(char *buffer, size_t offset) {
    Parrot_Int2 value;
#if PARROT_BIGENDIAN
    switch_endian(buffer + offset, 2);
#endif
    memcpy(&value, buffer + offset, 2);
    return value;
}

/* Reads double from a buffer. */
static double read_double(char *buffer, size_t offset) {
    double value;
#if PARROT_BIGENDIAN
    switch_endian(buffer + offset, 8);
#endif
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
static void assert_can_read(PARROT_INTERP, SerializationReader *reader, INTVAL amount) {
    char *read_end = *(reader->cur_read_buffer) + *(reader->cur_read_offset) + amount;
    if (read_end > *(reader->cur_read_end))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Read past end of serialization data buffer");
}

/* Reading function for native integers. */
static INTVAL read_int_func(PARROT_INTERP, SerializationReader *reader) {
    INTVAL result;
    assert_can_read(interp, reader, 8);
    result = read_int64(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 8;
    return result;
}

/* Reading function for native numbers. */
static FLOATVAL read_num_func(PARROT_INTERP, SerializationReader *reader) {
    FLOATVAL result;
    assert_can_read(interp, reader, 8);
    result = read_double(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 8;
    return result;
}

/* Reading function for native strings. */
static STRING * read_str_func(PARROT_INTERP, SerializationReader *reader) {
    STRING *result;
    assert_can_read(interp, reader, 4);
    result = read_string_from_heap(interp, reader,
        read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset)));
    *(reader->cur_read_offset) += 4;
    return result;
}

/* Reads in and resolves an object references. */
static PMC * read_obj_ref(PARROT_INTERP, SerializationReader *reader) {
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
    PMC *result = Parrot_pmc_new(interp, ownedrpa_id);
    Parrot_Int4 elems, i;

    /* Read the element count. */
    assert_can_read(interp, reader, 4);
    elems = read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 4;

    /* Read in the elements. */
    for (i = 0; i < elems; i++)
        VTABLE_set_pmc_keyed_int(interp, result, i, read_ref_func(interp, reader));

    /* Set the owner. */
    PARROT_OWNEDRESIZABLEPMCARRAY(result)->owner = reader->cur_object;

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
    PMC *result = Parrot_pmc_new(interp, ownedhash_id);
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
    
    /* Set the owner. */
    PARROT_OWNEDHASH(result)->owner = reader->cur_object;

    return result;
}

/* Reads in a code reference. */
static PMC * read_code_ref(PARROT_INTERP, SerializationReader *reader) {
    Parrot_Int4 sc_id, idx;

    assert_can_read(interp, reader, 8);
    sc_id = read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 4;
    idx = read_int32(*(reader->cur_read_buffer), *(reader->cur_read_offset));
    *(reader->cur_read_offset) += 4;

    return SC_get_code(interp, locate_sc(interp, reader, sc_id), idx);
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
        case REFVAR_STATIC_CODEREF:
        case REFVAR_CLONED_CODEREF:
            return read_code_ref(interp, reader);
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Serialization Error: Unimplemented case of read_ref");
    }
}

/* Reading function for STable references. */
static STable * read_stable_ref_func(PARROT_INTERP, SerializationReader *reader) {
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
    Parrot_Int4 version;
    size_t  data_len;
    char   *data_b64 = (char *)Parrot_str_to_cstring(interp, data_str);
    char   *data     = (char *)base64_decode(data_b64, &data_len);
    char   *prov_pos = data;
    char   *data_end = data + data_len;
    mem_sys_free(data_b64);
    
    /* Ensure we got the data. */
    if (data == NULL)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Failed to decode base64-encoded serialization data");
    reader->data = data;

    /* Ensure that we have enough space to read a version number and check it. */
    if (data_len < 4)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Serialized data too short to read a version number (< 4 bytes)");
    reader->root.version = version = read_int32(data, 0);
    if (reader->root.version < MIN_VERSION || reader->root.version > CURRENT_VERSION)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Unsupported serialization format version %d (current version is %d)",
            reader->root.version, CURRENT_VERSION);

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
    
    /* Get size and location of closures table. */
    reader->root.closures_table = data + read_int32(data, 36);
    reader->root.num_closures   = read_int32(data, 40);
    if (reader->root.closures_table < prov_pos)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (Closures table starts before objects data ends)");
    prov_pos = reader->root.closures_table + reader->root.num_closures * CLOSURES_TABLE_ENTRY_SIZE;
    if (prov_pos > data_end)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (Closures table overruns end of data)");
    
    /* Get size and location of contexts table. */
    reader->root.contexts_table = data + read_int32(data, 44);
    reader->root.num_contexts   = read_int32(data, 48);
    if (reader->root.contexts_table < prov_pos)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (contexts table starts before closures table ends)");
    prov_pos = reader->root.contexts_table + reader->root.num_contexts * CONTEXTS_TABLE_ENTRY_SIZE;
    if (prov_pos > data_end)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (contexts table overruns end of data)");
    
    /* Get location of contexts data. */
    reader->root.contexts_data = data + read_int32(data, 52);
    if (reader->root.contexts_data < prov_pos)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (contexts data starts before contexts table ends)");
    prov_pos = reader->root.contexts_data;
    if (prov_pos > data_end)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (contexts data starts after end of data)");

    /* Get size and location of repossessions table. */
    reader->root.repos_table = data + read_int32(data, 56);
    reader->root.num_repos   = read_int32(data, 60);
    if (reader->root.repos_table < prov_pos)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (repossessions table starts before contexts data ends)");
    prov_pos = reader->root.repos_table + reader->root.num_repos * REPOS_TABLE_ENTRY_SIZE;
    if (prov_pos > data_end)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Corruption detected (repossessions table overruns end of data)");
    
    /* Set reading limits for data chunks. */
    reader->stables_data_end = reader->root.objects_table;
    reader->objects_data_end = reader->root.closures_table;
    reader->contexts_data_end = reader->root.repos_table;
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

/* Deserializes a closure, though without attaching outer (that comes in a
 * later step). */
static void deserialize_closure(PARROT_INTERP, SerializationReader *reader, INTVAL i) {
    /* Calculate location of closure's table row. */
    char *table_row = reader->root.closures_table + i * CLOSURES_TABLE_ENTRY_SIZE;
    
    /* Resolve the reference to the static code object. */
    Parrot_Int4  static_sc_id = read_int32(table_row, 0);
    Parrot_Int4  static_idx   = read_int32(table_row, 4);
    PMC         *static_code  = SC_get_code(interp, locate_sc(interp, reader, static_sc_id), static_idx);
    
    /* Clone it and add it to the SC's code refs list. */
    PMC *closure = VTABLE_clone(interp, static_code);
    VTABLE_push_pmc(interp, reader->codes_list, closure);
    
    /* Tag it as being in this SC. */
    Parrot_pmc_setprop(interp, closure, Parrot_str_new_constant(interp, "SC"), reader->root.sc);
    
    /* See if there's a code object we need to attach. */
    if (read_int32(table_row, 12))
        PARROT_SUB(closure)->multi_signature = SC_get_object(interp,
            locate_sc(interp, reader, read_int32(table_row, 16)),
            read_int32(table_row, 20));
}

/* Deserializes a context. */
static void deserialize_context(PARROT_INTERP, SerializationReader *reader, INTVAL row) {
    PMC *ctx, *lexinfo, *lexpad;
    opcode_t *where;
    INTVAL syms, i;
    
    /* Calculate location of closure's table row. */
    char *table_row = reader->root.contexts_table + row * CONTEXTS_TABLE_ENTRY_SIZE;
    
    /* Resolve the reference to the static code object this context is for. */
    Parrot_Int4  static_sc_id = read_int32(table_row, 0);
    Parrot_Int4  static_idx   = read_int32(table_row, 4);
    PMC         *static_code  = SC_get_code(interp, locate_sc(interp, reader, static_sc_id), static_idx);
    
    /* Create a context; also grab the lexpad. */
    Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), NULL);
    Parrot_pcc_reuse_continuation(interp, CURRENT_CONTEXT(interp), NULL);
    where   = VTABLE_invoke(interp, static_code, NULL);
    ctx     = CURRENT_CONTEXT(interp);
    lexpad  = Parrot_pcc_get_lex_pad(interp, ctx);
    lexinfo = PARROT_SUB(static_code)->lex_info;
    VTABLE_invoke(interp, Parrot_pcc_get_continuation(interp, ctx), where);

    /* Set context data read position, and set current read buffer to the correct thing. */
    reader->contexts_data_offset = read_int32(table_row, 8);
    reader->cur_read_buffer      = &(reader->root.contexts_data);
    reader->cur_read_offset      = &(reader->contexts_data_offset);
    reader->cur_read_end         = &(reader->contexts_data_end);
    
    /* Deserialize lexicals. */
    syms = reader->read_int(interp, reader);
    for (i = 0; i < syms; i++) {
        STRING *sym = reader->read_str(interp, reader);
        switch (VTABLE_get_integer_keyed_str(interp, lexinfo, sym) & 3) {
            case REGNO_INT:
                VTABLE_set_integer_keyed_str(interp, lexpad, sym,
                    reader->read_int(interp, reader));
                break;
            case REGNO_NUM:
                VTABLE_set_number_keyed_str(interp, lexpad, sym,
                    reader->read_num(interp, reader));
                break;
            case REGNO_STR:
                VTABLE_set_string_keyed_str(interp, lexpad, sym,
                    reader->read_str(interp, reader));
                break;
            default:
                VTABLE_set_pmc_keyed_str(interp, lexpad, sym,
                    reader->read_ref(interp, reader));
        }
    }
    
    /* Put context in place. */
    VTABLE_set_pmc_keyed_int(interp, reader->contexts_list, row, ctx);
}

/* Attaches a closure's outer pointer. */
static void attach_closure_outer(PARROT_INTERP, SerializationReader *reader, INTVAL i, PMC *closure) {
    char        *row = reader->root.closures_table + i * CLOSURES_TABLE_ENTRY_SIZE;
    Parrot_Int4  idx = read_int32(row, 8);
    if (idx) {
        PMC *ctx = VTABLE_get_pmc_keyed_int(interp, reader->contexts_list, idx - 1);
        PARROT_SUB(closure)->outer_ctx = ctx;
    }
}

/* Attaches a context's outer pointer. */
static void attach_context_outer(PARROT_INTERP, SerializationReader *reader, INTVAL i, PMC *context) {
    char        *row = reader->root.contexts_table + i * CONTEXTS_TABLE_ENTRY_SIZE;
    Parrot_Int4  idx = read_int32(row, 12);
    if (idx) {
        PMC *ctx = VTABLE_get_pmc_keyed_int(interp, reader->contexts_list, idx - 1);
        PARROT_CALLCONTEXT(context)->outer_ctx = ctx;
    }
}

/* Deserializes a single STable, along with its REPR data. */
static void deserialize_stable(PARROT_INTERP, SerializationReader *reader, INTVAL i, PMC *st_pmc) {
    STable *st = STABLE_STRUCT(st_pmc);
    Parrot_Int4 version = reader->root.version;

    /* Calculate location of STable's table row. */
    char *st_table_row = reader->root.stables_table + i * STABLES_TABLE_ENTRY_SIZE;
    
    /* Read in and look up representation. */
    st->REPR = REPR_get_by_name(interp,
        read_string_from_heap(interp, reader, read_int32(st_table_row, 0)));
    
    /* Set STable read position, and set current read buffer to the correct thing. */
    reader->stables_data_offset = read_int32(st_table_row, 4);
    reader->cur_read_buffer     = &(reader->root.stables_data);
    reader->cur_read_offset     = &(reader->stables_data_offset);
    reader->cur_read_end        = &(reader->stables_data_end);
    
    /* Read the HOW, WHAT and WHO. */
    st->HOW  = read_obj_ref(interp, reader);
    st->WHAT = read_obj_ref(interp, reader);
    st->WHO = read_ref_func(interp, reader);
    
    /* Method cache and v-table. */
    st->method_cache = read_ref_func(interp, reader);
    st->vtable_length = read_int_func(interp, reader);
    if (st->vtable_length > 0)
        st->vtable = (PMC **)mem_sys_allocate(st->vtable_length * sizeof(PMC *));
    for (i = 0; i < st->vtable_length; i++)
        st->vtable[i] = read_ref_func(interp, reader);
    
    /* Type check cache. */
    st->type_check_cache_length = read_int_func(interp, reader);
    if (st->type_check_cache_length > 0) {
        st->type_check_cache = (PMC **)mem_sys_allocate(st->type_check_cache_length * sizeof(PMC *));
        for (i = 0; i < st->type_check_cache_length; i++)
            st->type_check_cache[i] = read_ref_func(interp, reader);
    }
    
    /* Mode flags. */
    st->mode_flags = read_int_func(interp, reader);
    
    /* Boolification spec. */
    if (read_int_func(interp, reader)) {
        st->boolification_spec = (BoolificationSpec *)mem_sys_allocate(sizeof(BoolificationSpec));
        st->boolification_spec->mode = read_int_func(interp, reader);
        st->boolification_spec->method = read_ref_func(interp, reader);
    }

    /* Container spec. */
    if (read_int_func(interp, reader)) {
        /* Depends on version. If before 5, we don't try to read it. */
        if (reader->root.version < 5) {
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Unable to deserialize old container spec format");
        }
        else {
            /* Otherwise, resolve the container spec by name and get it
             * set up. */
            ContainerConfigurer *cc = SixModelObject_get_container_config(interp,
                read_str_func(interp, reader));
            cc->set_container_spec(interp, st);
            st->container_spec->deserialize(interp, st, reader);
        }
    }

    /* Invocation spec. */
    if (reader->root.version >= 5) {
        if (read_int_func(interp, reader)) {
            st->invocation_spec = (InvocationSpec *)mem_sys_allocate(sizeof(InvocationSpec));
            st->invocation_spec->value_slot.class_handle = read_ref_func(interp, reader);
            st->invocation_spec->value_slot.attr_name = read_str_func(interp, reader);
            st->invocation_spec->value_slot.hint = read_int_func(interp, reader);
            st->invocation_spec->invocation_handler = read_ref_func(interp, reader);
        }
    }

    /* Mark it as being in the SC we're currently deserializing. */
    st->sc = reader->root.sc;

    /* If the REPR has a function to deserialize representation data, call it. */
    if (st->REPR->deserialize_repr_data)
        st->REPR->deserialize_repr_data(interp, st, reader);

    PARROT_GC_WRITE_BARRIER(interp, st->stable_pmc);
}

/* Does initial object deserialization tasks, so it gets an STable set at
 * least. */
static void pre_deserialize_object(PARROT_INTERP, SerializationReader *reader, INTVAL i, PMC *obj) {
    /* Calculate location of object's table row. */
    char *obj_table_row = reader->root.objects_table + i * OBJECTS_TABLE_ENTRY_SIZE;
    
    /* Resolve the STable. */
    PMC *stable = lookup_stable(interp, reader,
        read_int32(obj_table_row, 0),   /* The SC in the dependencies table, + 1 */
        read_int32(obj_table_row, 4));  /* The index in that SC */

    /* Is it a type object? */
    if ((read_int32(obj_table_row, 12) & 1) != 1) {
        /* Yes; allocate a bare object and set up the STable pointer; also mark
         * it as a type object. */
        SixModelObjectCommonalities *body = mem_allocate_zeroed_typed(SixModelObjectCommonalities);
        body->stable = stable;
        PMC_data(obj) = body;
        MARK_AS_TYPE_OBJECT(obj);
    }
}

/* Finish deserializing a single object. */
static void deserialize_object(PARROT_INTERP, SerializationReader *reader, INTVAL i, PMC *obj) {
    /* Calculate location of object's table row. */
    char *obj_table_row = reader->root.objects_table + i * OBJECTS_TABLE_ENTRY_SIZE;

    /* Resolve the STable. */
    PMC *stable = lookup_stable(interp, reader,
        read_int32(obj_table_row, 0),   /* The SC in the dependencies table, + 1 */
        read_int32(obj_table_row, 4));  /* The index in that SC */

    /* If it's a type object, we did all already; only need to the rest if it's an
     * instance. */
    if ((read_int32(obj_table_row, 12) & 1) == 1) {
        /* Allocate the object, fiddling things so that it gets wrapped
         * in the PMC we want it to. */
        set_wrapping_object(obj);
        STABLE_STRUCT(stable)->REPR->allocate(interp, STABLE_STRUCT(stable));
        
        /* Set current read buffer to the correct thing. */
        reader->cur_read_buffer = &(reader->root.objects_data);
        reader->cur_read_offset = &(reader->objects_data_offset);
        reader->cur_read_end    = &(reader->objects_data_end);
        
        /* Set current object, so any sub-objects get ownership right. */
        reader->cur_object = obj;
         
        /* Delegate to its deserialization REPR function. */
        reader->objects_data_offset = read_int32(obj_table_row, 8);        
        if (REPR(obj)->deserialize)
            REPR(obj)->deserialize(interp, STABLE(obj), OBJECT_BODY(obj), reader);
        else
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Missing deserialize REPR function");
                
        /* Clear current object. */
        reader->cur_object = PMCNULL;
    }
    
    /* Tag object with this SC, so any future referencing against it
     * works out. */
    SC_PMC(obj) = reader->root.sc;
    
    /* Write barrier it. */
    PARROT_GC_WRITE_BARRIER(interp, obj);
}

/* Repossess an object or STable. */
static void repossess(PARROT_INTERP, SerializationReader *reader, INTVAL i) {
    /* Calculate location of table row. */
    char *table_row = reader->root.repos_table + i * REPOS_TABLE_ENTRY_SIZE;
    
    /* Do appropriate type of repossession. */
    Parrot_Int4 repo_type = read_int32(table_row, 0);
    if (repo_type == 0) {
        /* Get object to repossess. */
        PMC *orig_sc  = locate_sc(interp, reader, read_int32(table_row, 8));
        PMC *orig_obj = SC_get_object(interp, orig_sc, read_int32(table_row, 12));
        
        /* Put it into objects root set at the apporpriate slot. */
        VTABLE_set_pmc_keyed_int(interp, reader->objects_list,
        read_int32(table_row, 4), orig_obj);
        
        /* Ensure we aren't already trying to repossess the object. */
        if (PMC_data(orig_obj)) {
            /* If we have a reposession conflict, make a copy of the original object
            * and reference it from the conflicts list. Push the original (about to
            * be overwritten) object reference too. */
            if (SC_PMC(orig_obj) != orig_sc) {
                PMC *backup = REPR(orig_obj)->allocate(interp, STABLE(orig_obj));
                if (IS_CONCRETE(orig_obj))
                    REPR(orig_obj)->copy_to(interp, STABLE(orig_obj), OBJECT_BODY(orig_obj), OBJECT_BODY(backup));
                else
                    MARK_AS_TYPE_OBJECT(backup);
                PARROT_GC_WRITE_BARRIER(interp, backup);
                VTABLE_push_pmc(interp, reader->repo_conflicts_list, backup);
                VTABLE_push_pmc(interp, reader->repo_conflicts_list, orig_obj);
            }
    
            /* Clear it up, since we'll re-allocate all the bits inside
            * it on deserialization. */
            STABLE(orig_obj)->REPR->gc_free(interp, orig_obj);
        }
    }
    else if (repo_type == 1) {
        /* Get STable to repossess. */
        PMC *orig_sc = locate_sc(interp, reader, read_int32(table_row, 8));
        PMC *orig_st = SC_get_stable(interp, orig_sc, read_int32(table_row, 12));
        
        /* Put it into STables root set at the apporpriate slot. */
        VTABLE_set_pmc_keyed_int(interp, reader->stables_list,
            read_int32(table_row, 4), orig_st);
        
        /* Ensure we aren't already trying to repossess the STable. */
        if (PMC_data(orig_st)) {
            /* Make sure we don't have a reposession conflict. */
            if (STABLE_STRUCT(orig_st)->sc != orig_sc)
                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "STable conflict detected during deserialization.\n"
                    "(Probable attempt to load two modules that cannot be loaded together).");
            
            /* Clear it up, since we'll re-allocate all the bits inside
            * it on deserialization. */
            if (STABLE_STRUCT(orig_st)->REPR->gc_free_repr_data) {
                STABLE_STRUCT(orig_st)->REPR->gc_free_repr_data(interp, STABLE_STRUCT(orig_st));
                STABLE_STRUCT(orig_st)->REPR_data = NULL;
            }
        }
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Unknown repossession type");
    }
}

/* Handles doing Parrot v-table publication (we don't serialize that data). */
static void do_parrot_vtable_fixup_if_needed(PARROT_INTERP, PMC *obj, STRING *meth_name) {
    PMC *meth = VTABLE_find_method(interp, STABLE(obj)->HOW, meth_name);
    if (!PMC_IS_NULL(meth)) {
        PMC *old_ctx = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
        PMC *cappy   = Parrot_pmc_new(interp, enum_class_CallContext);
        VTABLE_push_pmc(interp, cappy, STABLE(obj)->HOW);
        VTABLE_push_pmc(interp, cappy, obj);
        Parrot_pcc_invoke_from_sig_object(interp, meth, cappy);
        Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), old_ctx);
    }
}

/* Takes serialized data, an empty SerializationContext to deserialize it into,
 * a strings heap and the set of static code refs for the compilation unit.
 * Deserializes the data into the required objects and STables. */
void Serialization_deserialize(PARROT_INTERP, PMC *sc, PMC *string_heap, PMC *static_codes, PMC *repo_conflicts, STRING *data) {
    PMC    *stables   = PMCNULL;
    PMC    *objects   = PMCNULL;
    INTVAL  scodes    = VTABLE_elements(interp, static_codes);
    STRING *scr_str   = Parrot_str_new_constant(interp, "STATIC_CODE_REF");
    STRING *sc_str    = Parrot_str_new_constant(interp, "SC");
    Parrot_Int4 i;
    
    /* Create reader data structure and populate the basic bits. */
    SerializationReader *reader = mem_allocate_zeroed_typed(SerializationReader);
    GETATTR_SerializationContext_root_stables(interp, sc, stables);
    GETATTR_SerializationContext_root_objects(interp, sc, objects);
    reader->stables_list        = stables;
    reader->objects_list        = objects;
    reader->contexts_list       = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    reader->repo_conflicts_list = repo_conflicts;
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
    ownedhash_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "OwnedHash", 0));
    ownedrpa_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "OwnedResizablePMCArray", 0));
    
    /* Read header and disect the data into its parts. */
    check_and_disect_input(interp, reader, data);
    
    /* Resolve the SCs in the dependencies table. */
    resolve_dependencies(interp, reader);
    
    /* Disable GC at this stage; for one there's no point collecting when all
     * we're doing in here is allocating, but more importantly STable REPRData
     * may be in an inconsistent state during all of this and so we may not have
     * yet deserialized enough to know how to do marking/freeing. */
     Parrot_block_GC_mark(interp);
     
     /* If we're repossessing objects and STables from other SCs, then first
      * get those raw objects into our root set. */
     for (i = 0; i < reader->root.num_repos; i++)
        repossess(interp, reader, i);

    /* Stub-allocate PMCs for all STables and objects, so we know where
     * they will all end up. */
    for (i = 0; i < reader->root.num_stables; i++)
        if (PMC_IS_NULL(VTABLE_get_pmc_keyed_int(interp, stables, i)))
            VTABLE_set_pmc_keyed_int(interp, stables, i, create_stable(interp, NULL, PMCNULL));
    for (i = 0; i < reader->root.num_objects; i++)
        if (PMC_IS_NULL(VTABLE_get_pmc_keyed_int(interp, objects, i)))
            VTABLE_set_pmc_keyed_int(interp, objects, i, Parrot_pmc_new(interp, smo_id));

     /* Mark all the static code refs we've been provided with as static. */
     for (i = 0; i < scodes; i++) {
        PMC *scr = VTABLE_get_pmc_keyed_int(interp, reader->codes_list, i);
        Parrot_pmc_setprop(interp, scr, scr_str, scr);
        Parrot_pmc_setprop(interp, scr, sc_str, sc);
    }

    /* Deserialize closures, deserialize contexts, then attach outers. */
    for (i = 0; i < reader->root.num_closures; i++)
        deserialize_closure(interp, reader, i);

    for (i = 0; i < reader->root.num_contexts; i++)
        deserialize_context(interp, reader, i);

    for (i = 0; i < reader->root.num_closures; i++)
        attach_closure_outer(interp, reader, i,
            VTABLE_get_pmc_keyed_int(interp, reader->codes_list, scodes + i));

    for (i = 0; i < reader->root.num_contexts; i++)
        attach_context_outer(interp, reader, i,
            VTABLE_get_pmc_keyed_int(interp, reader->contexts_list, i));
    
    /* Do initial object deserialization, so they at least get an STable
     * pointer. */
    for (i = 0; i < reader->root.num_objects; i++)
        pre_deserialize_object(interp, reader, i,
            VTABLE_get_pmc_keyed_int(interp, objects, i));
    
     /* Deserialize STables, along with their representation data. */
     for (i = 0; i < reader->root.num_stables; i++)
        deserialize_stable(interp, reader, i,
            VTABLE_get_pmc_keyed_int(interp, stables, i));

     /* Finish deserializing objects. */
     for (i = 0; i < reader->root.num_objects; i++)
        deserialize_object(interp, reader, i,
            VTABLE_get_pmc_keyed_int(interp, objects, i));

     /* Do any Parrot v-table publication. */
     for (i = 0; i < reader->root.num_objects; i++) {
        PMC *obj = VTABLE_get_pmc_keyed_int(interp, objects, i);
        if (!IS_CONCRETE(obj)) {
            do_parrot_vtable_fixup_if_needed(interp, obj, Parrot_str_new_constant(interp, "publish_parrot_vtable_mapping"));
            do_parrot_vtable_fixup_if_needed(interp, obj, Parrot_str_new_constant(interp, "publish_parrot_vtablee_handler_mapping"));
            do_parrot_vtable_fixup_if_needed(interp, obj, Parrot_str_new_constant(interp, "publish_parrot_vtable_handler_mapping"));
        }
     }

     /* Re-enable GC. */
     Parrot_unblock_GC_mark(interp);
    
    /* Clear up afterwards. */
    mem_sys_free(reader->data);
    mem_sys_free(reader);
}
