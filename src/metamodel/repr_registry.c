/* This is an implementation of a representation registry. It keeps track of
 * all of the available representations, and is responsible for building them
 * at startup. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "rakudoobject.h"
#include "reprs/KnowHOWREPR.h"
#include "reprs/P6opaque.h"

/* An array of representations. */
static PMC *repr_registry       = NULL;

/* Hash mapping representation names to IDs. */
static PMC *repr_name_to_id_map = NULL;

/* Registers a representation. It this is ever made public, it should first be
 * made thread-safe. */
static void register_repr(PARROT_INTERP, STRING *name, PMC *repr) {
    INTVAL ID = VTABLE_elements(interp, repr_registry);
    VTABLE_push_pmc(interp, repr_registry, repr);
    VTABLE_set_integer_keyed_str(interp, repr_name_to_id_map, name, ID);
}

/* Initializes the representations registry, building up all of the various
 * representations. */
void REPR_initialize_registry(PARROT_INTERP) {
    /* Allocate registry and name to ID map, and anchor them so they won't
     * get nommed by the GC. */
    repr_registry = pmc_new(interp, enum_class_ResizablePMCArray);
    Parrot_pmc_gc_register(interp, repr_registry);
    repr_name_to_id_map = pmc_new(interp, enum_class_Hash);
    Parrot_pmc_gc_register(interp, repr_name_to_id_map);

    /* Add all representations. */
    register_repr(interp, Parrot_str_new_constant(interp, "KnowHOWREPR"), 
        KnowHOWREPR_initialize(interp));
    register_repr(interp, Parrot_str_new_constant(interp, "P6opaque"), 
        P6opaque_initialize(interp));
}

/* Get a representation's ID from its name. Note that the IDs may change so
 * it's best not to store references to them in e.g. the bytecode stream. */
INTVAL REPR_name_to_id(PARROT_INTERP, STRING *name) {
    return VTABLE_get_integer_keyed_str(interp, repr_name_to_id_map, name);
}

/* Gets a representation by ID. */
PMC * REPR_get_by_id(PARROT_INTERP, INTVAL id) {
    return VTABLE_get_pmc_keyed_int(interp, repr_registry, id);
}

/* Gets a representation by name. */
PMC * REPR_get_by_name(PARROT_INTERP, STRING *name) {
    return VTABLE_get_pmc_keyed_int(interp, repr_registry,
        VTABLE_get_integer_keyed_str(interp, repr_name_to_id_map, name));
}
