/* This implements a little bit of support for serialization contexts.
 * At the moment, its main role is to let us have a PMC array of objects
 * per Parrot bytecode segment. This gives fast access to them. Note
 * that if this ever made it into core Parrot, we'd hang it off the
 * packfile data structure, or maybe consider whether there's a kind of
 * unification with the "constants" segment. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"

/* Array of root object arrays, one per SC. */
static PMC *sc_root_objects = NULL;

/* Array of bytecode segment locations. Related to the above array.
 * Just an array of integers. Can be array of bytecode PMCs later. */
static PMC *sc_index_lookup = NULL;

/* Initializes the stores and register them with the GC. */
static void setup_sc_stores(PARROT_INTERP) {
    sc_root_objects = pmc_new(interp, enum_class_ResizablePMCArray);
    sc_index_lookup = pmc_new(interp, enum_class_ResizableIntegerArray);
    Parrot_pmc_gc_register(interp, sc_root_objects);
    Parrot_pmc_gc_register(interp, sc_index_lookup);
}

/* Gets an object from the serialization context associated with the
 * current bytecode segment. */
PMC * SC_get_sc_object(PARROT_INTERP, INTVAL idx) {
    /* Locate the SC root list for this bytecode segment. */
    INTVAL addr = (INTVAL)interp->code;
    INTVAL scs, i;
    if (!sc_index_lookup)
        setup_sc_stores(interp);
    scs = VTABLE_elements(interp, sc_index_lookup);
    for (i = 0; i < scs; i++) {
        if (VTABLE_get_integer_keyed_int(interp, sc_index_lookup, i) == addr) {
            /* Found it; grab object we're looking for. */
            PMC *sc_root = VTABLE_get_pmc_keyed_int(interp, sc_root_objects, i);
            return VTABLE_get_pmc_keyed_int(interp, sc_root, idx);
        }
    }
    
    /* None found, just return PMCNULL. */
    return PMCNULL;
}

/* Puts an object into the serialization context associated with the
 * current bytecode segment. */
void SC_set_sc_object(PARROT_INTERP, INTVAL idx, PMC *object) {
    /* Locate the SC root list for this bytecode segment. */
    INTVAL addr    = (INTVAL)interp->code;
    PMC *  sc_root = PMCNULL;
    INTVAL scs, i;
    if (!sc_index_lookup)
        setup_sc_stores(interp);
    scs = VTABLE_elements(interp, sc_index_lookup);
    for (i = 0; i < scs; i++) {
        if (VTABLE_get_integer_keyed_int(interp, sc_index_lookup, i) == addr) {
            sc_root = VTABLE_get_pmc_keyed_int(interp, sc_root_objects, i);
            break;
        }
    }
    
    /* If we found none, add it. */
    if (PMC_IS_NULL(sc_root)) {
        sc_root = pmc_new(interp, enum_class_ResizablePMCArray);
        VTABLE_set_pmc_keyed_int(interp, sc_root_objects, scs, sc_root);
        VTABLE_set_integer_keyed_int(interp, sc_index_lookup, scs, addr);
    }

    /* Stash the value in the the SC. */
    VTABLE_set_pmc_keyed_int(interp, sc_root, idx, object);
}
