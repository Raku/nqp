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

/* Given an SC and an index, fetch the STable stored there. */
PMC * SC_get_stable(PARROT_INTERP, PMC *sc, INTVAL idx) {
    PMC *stables;
    GETATTR_SerializationContext_root_stables(interp, sc, stables);
    if (idx >= VTABLE_elements(interp, stables))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "No STable at index %d", idx);
    return VTABLE_get_pmc_keyed_int(interp, stables, idx);
}
