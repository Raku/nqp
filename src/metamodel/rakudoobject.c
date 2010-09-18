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

/* Initializes the RakudoObject object model. */
void RakudoObject_initialize(PARROT_INTERP) {
    /* Look up and cache some type IDs. */
    stable_id = pmc_type(interp, Parrot_str_new(interp, "STable", 0));
    repr_id   = pmc_type(interp, Parrot_str_new(interp, "REPR", 0));
    ro_id     = pmc_type(interp, Parrot_str_new(interp, "RakudoObject", 0));

    /* Build representations and initializes the representation registry. */
    REPR_initialize_registry(interp);

    /* Bootstrap the KnowHOW. */
    RakudoObject_bootstrap_knowhow(interp);
}

/* Takes a representation and wraps it up in a REPR PMC. */
PMC * wrap_repr(PARROT_INTERP, void *REPR) {
    PMC *repr_pmc = pmc_new_noinit(interp, repr_id);
    PMC_data(repr_pmc) = REPR;
    return repr_pmc;
}

/* Takes an object and wraps it in a RakudoObject PMC. */
PMC * wrap_object(PARROT_INTERP, void *obj) {
    PMC *obj_pmc = pmc_new_noinit(interp, ro_id);
    PMC_data(obj_pmc) = obj;
    return obj_pmc;
}

/* Creates an STable that references the given REPR and HOW. */
PMC * create_stable(PARROT_INTERP, PMC *REPR, PMC *HOW) {
    PMC *st_pmc = pmc_new_init(interp, stable_id, HOW);
    STABLE_STRUCT(st_pmc)->REPR = REPR;
    return st_pmc;
}
