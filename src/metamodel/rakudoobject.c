#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "rakudoobject.h"
#include "repr_registry.h"
#include "knowhow_bootstrapper.h"

/* Cached type IDs. */
static INTVAL stable_id = 0;
static INTVAL repr_id   = 0;
static INTVAL ro_id     = 0;

/* Cached find_method string. */
static STRING *find_method_str = NULL;

/* Initializes the RakudoObject object model. */
void RakudoObject_initialize(PARROT_INTERP) {
    /* Look up and cache some type IDs and strings. */
    stable_id       = pmc_type(interp, Parrot_str_new(interp, "STable", 0));
    repr_id         = pmc_type(interp, Parrot_str_new(interp, "REPR", 0));
    ro_id           = pmc_type(interp, Parrot_str_new(interp, "RakudoObject", 0));
    find_method_str = Parrot_str_new_constant(interp, "find_method");

    /* Build representations and initializes the representation registry. */
    REPR_initialize_registry(interp);

    /* Bootstrap the KnowHOW. */
    RakudoObject_bootstrap_knowhow(interp);
}

/* Takes a representation and wraps it up in a REPR PMC. */
PMC * wrap_repr(PARROT_INTERP, void *REPR) {
    PMC *repr_pmc = pmc_new_noinit(interp, repr_id);
    PObj_custom_mark_SET(repr_pmc);
    PObj_custom_destroy_SET(repr_pmc);
    PMC_data(repr_pmc) = REPR;
    return repr_pmc;
}

/* Takes an object and wraps it in a RakudoObject PMC. */
PMC * wrap_object(PARROT_INTERP, void *obj) {
    PMC *obj_pmc = pmc_new_noinit(interp, ro_id);
    PObj_custom_mark_SET(obj_pmc);
    PObj_custom_destroy_SET(obj_pmc);
    PMC_data(obj_pmc) = obj;
    return obj_pmc;
}

/* This is the default method dispatch code. It tries to use the
 * v-table first, then falls back to a lookup. */
static PMC * default_find_method(PARROT_INTERP, PMC *obj, STRING *name, INTVAL hint) {
    /* See if we can find it by hint. */
    STable *st = STABLE(obj);
    if (hint != NO_HINT && st->vtable && hint < st->vtable_length) {
        /* Yes, just grab it from the v-table. */
        return st->vtable[hint];
    }
    else
    {
        /* Find the finder - the find_method method. */
        /* XXX Cache here, like in 6model. */
        PMC *HOW = st->HOW;
        PMC *meth = STABLE(HOW)->find_method(interp, HOW, find_method_str, NO_HINT);
        
        /* Call it to get the method to call. */
        PMC *result;
        Parrot_ext_call(interp, meth, "PiPS->P", HOW, obj, name, &result);
        return result;
    }
}

/* Creates an STable that references the given REPR and HOW. */
PMC * create_stable(PARROT_INTERP, PMC *REPR, PMC *HOW) {
    PMC *st_pmc = pmc_new_init(interp, stable_id, HOW);
    STABLE_STRUCT(st_pmc)->REPR = REPR;
    STABLE_STRUCT(st_pmc)->find_method = default_find_method;
    return st_pmc;
}
