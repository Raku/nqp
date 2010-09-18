/* Contains the logic that bootstraps KnowHOW, the foundation for implementing
 * the various other bits of the object model. Works in conjunction with
 * KnowHOWREPR. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "rakudoobject.h"
#include "repr_registry.h"
#include "reprs/KnowHOWREPR.h"

/* Bootstraps the KnowHOW. This is were things "bottom out" in the meta-model
 * so it's a tad loopy. Basically, we create a KnowHOW type object. We then
 * create an instance from that and add a bunch of methods to it. */
void RakudoObject_bootstrap_knowhow(PARROT_INTERP) {
    /* Create our KnowHOW type object. Note we don't have a HOW just yet, so
     * pass in null. */
    PMC *REPR        = REPR_get_by_name(interp, Parrot_str_new_constant(interp, "KnowHOWREPR"));
    PMC *knowhow_pmc = REPR_STRUCT(REPR)->type_object_for(interp, REPR, PMCNULL);

    /* We create a KnowHOW instance that can describe itself. This means
     * .HOW.HOW.HOW.HOW etc will always return that, which closes the model
     * up. Also pull out its underlying struct. */
    PMC *knowhow_how_pmc = REPR_STRUCT(REPR)->instance_of(interp, REPR, knowhow_pmc);
    KnowHOWREPRInstance *knowhow_how = (KnowHOWREPRInstance *)PMC_data(knowhow_how_pmc);

    /* Set this as the KnowHOW's HOW. */
    STABLE(knowhow_pmc)->HOW = knowhow_how_pmc;

    /* Add various methods to the KnowHOW. */
    /* XXX TODO */


    /* Install it into the root Parrot namespace, since that's where NQP lives.
     * XXX We'll maybe want to change this in the future. */
    Parrot_ns_set_global(interp, Parrot_get_ctx_HLL_namespace(interp),
        Parrot_str_new_constant(interp, "KnowHOW"),
        knowhow_pmc);
}
