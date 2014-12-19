/* This implements a little bit of support for serialization contexts.
 * At the moment, its main role is to just be a global lookup table for
 * serialization contexts; it'll need to get much smarter. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "serialization_context.h"
#include "pmc_serializationcontext.h"

/* Hash of serialization context objects */
static PMC *scs = NULL;

/* Initializes the store and register with the GC. */
static void setup_sc_stores(PARROT_INTERP) {
    scs = Parrot_pmc_new(interp, enum_class_Hash);
    Parrot_pmc_gc_register(interp, scs);
}

/* Gets the serialization context - if any - associated with the
 * specified handle. */
PMC * SC_get_sc(PARROT_INTERP, STRING *handle) {
    if (!scs)
        setup_sc_stores(interp);
    return VTABLE_get_pmc_keyed_str(interp, scs, handle);
}

/* Stashes a serialization context with the specified handle. */
void SC_set_sc(PARROT_INTERP, STRING *handle, PMC *sc) {
    if (!scs)
        setup_sc_stores(interp);
    VTABLE_set_pmc_keyed_str(interp, scs, handle, sc);
}

/* Given an SC, returns its unique handle. */
STRING * SC_get_handle(PARROT_INTERP, PMC *sc) {
    STRING *handle;
    GETATTR_SerializationContext_handle(interp, sc, handle);
    return handle;
}

/* Given an SC, returns its description. */
STRING * SC_get_description(PARROT_INTERP, PMC *sc) {
    STRING *description;
    GETATTR_SerializationContext_description(interp, sc, description);
    return description;
}

/* Given an SC, looks up the index of an STable that is in its root set. */
INTVAL SC_find_stable_idx(PARROT_INTERP, PMC *sc, PMC *st) {
    PMC *to_search;
    INTVAL i, count;
    GETATTR_SerializationContext_root_stables(interp, sc, to_search);
    count = VTABLE_elements(interp, to_search);
    for (i = 0; i < count; i++)
        if (VTABLE_get_pmc_keyed_int(interp, to_search, i) == st)
            return i;
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "STable does not exist in serialization context");
}

/* Given an SC, looks up the index of an object that is in its root set. */
INTVAL SC_find_object_idx(PARROT_INTERP, PMC *sc, PMC *obj) {
    PMC   *to_search;
    INTVAL i, count;
    GETATTR_SerializationContext_root_objects(interp, sc, to_search);
    count = VTABLE_elements(interp, to_search);
    for (i = 0; i < count; i++)
        if (VTABLE_get_pmc_keyed_int(interp, to_search, i) == obj)
            return i;
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "Object does not exist in serialization context");
}

/* Given an SC, looks up the index of a code ref that is in its root set. */
INTVAL SC_find_code_idx(PARROT_INTERP, PMC *sc, PMC *obj) {
    PMC   *to_search;
    INTVAL i, count;
    GETATTR_SerializationContext_root_codes(interp, sc, to_search);
    count = VTABLE_elements(interp, to_search);
    for (i = 0; i < count; i++)
        if (VTABLE_get_pmc_keyed_int(interp, to_search, i) == obj)
            return i;
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "Code ref '%Ss' does not exist in serialization context",
        VTABLE_get_string(interp, obj));
}

/* Given an SC and an index, fetch the STable stored there. */
PMC * SC_get_stable(PARROT_INTERP, PMC *sc, INTVAL idx) {
    PMC *stables;
    GETATTR_SerializationContext_root_stables(interp, sc, stables);
    if (idx >= VTABLE_elements(interp, stables))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "No STable at index %d", idx);
    return VTABLE_get_pmc_keyed_int(interp, stables, idx);
}

/* Given an SC and an index, fetch the object stored there. */
PMC * SC_get_object(PARROT_INTERP, PMC *sc, INTVAL idx) {
    PMC *objects;
    GETATTR_SerializationContext_root_objects(interp, sc, objects);
    if (idx >= VTABLE_elements(interp, objects))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "No object at index %d", idx);
    return VTABLE_get_pmc_keyed_int(interp, objects, idx);
}

/* Given an SC and an index, fetch the code ref stored there. */
PMC * SC_get_code(PARROT_INTERP, PMC *sc, INTVAL idx) {
    PMC *codes;
    GETATTR_SerializationContext_root_codes(interp, sc, codes);
    if (idx >= VTABLE_elements(interp, codes))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "No code ref at index %d", idx);
    return VTABLE_get_pmc_keyed_int(interp, codes, idx);
}

/* Adds a code ref to an SC. */
void SC_set_code(PARROT_INTERP, PMC *sc, INTVAL idx, PMC *code) {
    PMC *codes;
    GETATTR_SerializationContext_root_codes(interp, sc, codes);
    VTABLE_set_pmc_keyed_int(interp, codes, idx, code);
}

/* Takes an object and adds it to this SC's root set, and installs a
 * repossession entry. */
void SC_repossess_object(PARROT_INTERP, PMC *target_sc, PMC *orig_sc, PMC *object) {
    PMC *rep_indexes, *rep_scs;
    
    /* Add to root set. */
    PMC    *objects;
    INTVAL  new_slot;
    GETATTR_SerializationContext_root_objects(interp, target_sc, objects);
    new_slot = VTABLE_elements(interp, objects);
    VTABLE_set_pmc_keyed_int(interp, objects, new_slot, object);
    
    /* Add repossession entry. */
    GETATTR_SerializationContext_rep_indexes(interp, target_sc, rep_indexes);
    GETATTR_SerializationContext_rep_scs(interp, target_sc, rep_scs);
    VTABLE_push_integer(interp, rep_indexes, new_slot << 1);
    VTABLE_push_pmc(interp, rep_scs, orig_sc);
}

/* Takes an STable and adds it to this SC's root set, and installs a
 * reposession entry. */
void SC_repossess_stable(PARROT_INTERP, PMC *target_sc, PMC *orig_sc, PMC *st_pmc) {
    PMC *rep_indexes, *rep_scs;
    
    /* Add to root set. */
    PMC    *stables;
    INTVAL  new_slot;
    GETATTR_SerializationContext_root_stables(interp, target_sc, stables);
    new_slot = VTABLE_elements(interp, stables);
    VTABLE_set_pmc_keyed_int(interp, stables, new_slot, st_pmc);
    
    /* Add repossession entry. */
    GETATTR_SerializationContext_rep_indexes(interp, target_sc, rep_indexes);
    GETATTR_SerializationContext_rep_scs(interp, target_sc, rep_scs);
    VTABLE_push_integer(interp, rep_indexes, (new_slot << 1) | 1);
    VTABLE_push_pmc(interp, rep_scs, orig_sc);
}
