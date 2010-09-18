/* Contains the logic that bootstraps KnowHOW, the foundation for implementing
 * the various other bits of the object model. Works in conjunction with
 * KnowHOWREPR. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "rakudoobject.h"
#include "repr_registry.h"
#include "reprs/KnowHOWREPR.h"

/* Cached string constants. */
static STRING *repr_str     = NULL;
static STRING *p6opaque_str = NULL;

/* Creates a new type with this HOW as its meta-object. */
static void new_type(PARROT_INTERP, PMC *nci) {
    /* We first create a new HOW instance. */
    PMC *capture = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    PMC *self    = VTABLE_get_pmc_keyed_int(interp, capture, 0);
    PMC *HOW     = REPR(self)->instance_of(interp, REPR_PMC(self), STABLE(self)->WHAT);
    
    /* See if we have a representation name; if not default to P6opaque. */
    STRING *repr_name = VTABLE_exists_keyed_str(interp, capture, repr_str) ?
        VTABLE_get_string_keyed_str(interp, capture, repr_str) :
        p6opaque_str;
        
    /* Create a new type object of the desired REPR. (Note that we can't
     * default to KnowHOWREPR here, since it doesn't know how to actually
     * store attributes, it's just for bootstrapping knowhow's. */
    PMC *repr_to_use = REPR_get_by_name(interp, repr_name);
    PMC *type_object = REPR_STRUCT(repr_to_use)->type_object_for(interp, repr_to_use, HOW);
    
    /* Put it into capture to act as return value. */
    Parrot_pcc_build_call_from_c_args(interp, capture, "P", type_object);
}

/* Adds a method. */
static void add_method(PARROT_INTERP, PMC *nci) {
    /* Get methods table out of meta-object. */
    PMC    *capture = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    PMC    *self    = VTABLE_get_pmc_keyed_int(interp, capture, 0);
    PMC    *methods = ((KnowHOWREPRInstance *)PMC_data(self))->methods;

    /* Get name and method to add. */
    STRING *name   = VTABLE_get_string_keyed_int(interp, capture, 2);
    PMC    *method = VTABLE_get_pmc_keyed_int(interp, capture, 3);

    /* Add it, and return added method as result. */
    VTABLE_set_pmc_keyed_str(interp, methods, name, method);
    Parrot_pcc_build_call_from_c_args(interp, capture, "P", method);
}

/* Finds a method. */
static void find_method(PARROT_INTERP, PMC *nci) {
    /* Get methods table out of meta-object and look up method. */
    PMC    *capture = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    PMC    *self    = VTABLE_get_pmc_keyed_int(interp, capture, 0);
    PMC    *methods = ((KnowHOWREPRInstance *)PMC_data(self))->methods;
    STRING *name    = VTABLE_get_string_keyed_int(interp, capture, 2);
    PMC    *method  = VTABLE_get_pmc_keyed_str(interp, methods, name);
    if (PMC_IS_NULL(method))
        /* XXX Awesomeize. */
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Could not find method '%Ss'", name);

    /* Put into capture to act as return value. */
    Parrot_pcc_build_call_from_c_args(interp, capture, "P", method);
}

/* Wraps up a C function as a raw NCI method. */
static PMC * wrap_c(PARROT_INTERP, void *func) {
    PMC * const wrapped = Parrot_pmc_new(interp, enum_class_NCI);
    VTABLE_set_pointer(interp, wrapped, func);
    return wrapped;
}

/* This is the find_method where things eventually bottom out. */
static PMC * bottom_find_method(PARROT_INTERP, PMC *obj, STRING *name, INTVAL hint) {
    PMC *methods = ((KnowHOWREPRInstance *)PMC_data(obj))->methods;
    PMC *method  = VTABLE_get_pmc_keyed_str(interp, methods, name);
    if (PMC_IS_NULL(method))
        /* XXX Awesomeize. */
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Could not find method '%Ss'", name);
    return method;
}

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

    /* Need to give the knowhow_how a twiddled STable with a different
     * dispatcher, so things bottom out. */
    PMC *st_copy = create_stable(interp, REPR, knowhow_how_pmc);
    STABLE_STRUCT(st_copy)->WHAT = knowhow_pmc;
    STABLE_STRUCT(st_copy)->find_method = bottom_find_method;
    knowhow_how->common.stable = st_copy;

    /* Add various methods to the KnowHOW's HOW. */
    VTABLE_set_pmc_keyed_str(interp, knowhow_how->methods,
        Parrot_str_new_constant(interp, "new_type"),
        wrap_c(interp, F2DPTR(new_type)));
    VTABLE_set_pmc_keyed_str(interp, knowhow_how->methods,
        Parrot_str_new_constant(interp, "find_method"),
        wrap_c(interp, F2DPTR(find_method)));
    VTABLE_set_pmc_keyed_str(interp, knowhow_how->methods,
        Parrot_str_new_constant(interp, "add_method"),
        wrap_c(interp, F2DPTR(add_method)));

    /* Set this built up HOW as the KnowHOW's HOW. */
    STABLE(knowhow_pmc)->HOW = knowhow_how_pmc;

    /* Set up some string constants that the methods here use. */
    repr_str     = Parrot_str_new_constant(interp, "repr");
    p6opaque_str = Parrot_str_new_constant(interp, "P6opaque");

    /* Install KnowHOW into the root Parrot namespace, since that's where NQP
     * lives.
     * XXX We'll likely want to change this in the future. */
    Parrot_ns_set_global(interp, Parrot_get_ctx_HLL_namespace(interp),
        Parrot_str_new_constant(interp, "KnowHOW"),
        knowhow_pmc);
}
