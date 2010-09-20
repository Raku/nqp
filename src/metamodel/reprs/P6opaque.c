/* This is a first cut implementation of the P6opaque representation.
 * Eventually it's going to need to handle native types too, but for now
 * this gets us started. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../rakudoobject.h"
#include "P6opaque.h"

/* Forward declaration of repr_instance ('cus if we don't, we have to
 * forward declare a bunch of other stuff). */
static PMC * repr_instance(PARROT_INTERP);

/* This computes the slot mapping for a type; that is, for single inheritance
 * classes it works out an allocation in an array for storing the attributes. */
static void compute_slot_mapping(PARROT_INTERP, PMC *WHAT) {
    /* XXX TODO. */
}

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC * type_object_for(PARROT_INTERP, PMC *self, PMC *HOW) {
    /* Create new object instance. */
    P6opaqueInstance *obj = mem_allocate_zeroed_typed(P6opaqueInstance);

    /* Create a new repr instance. */
    PMC *my_repr = repr_instance(interp);

    /* Build an STable. */
    PMC *st_pmc = create_stable(interp, my_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);

    /* Create type object and point it back at the STable. */
    st->WHAT = wrap_object(interp, obj);
    obj->common.stable = st_pmc;

    return st->WHAT;
}

/* Creates a new instance based on the type object. */
static PMC * instance_of(PARROT_INTERP, PMC *self, PMC *WHAT) {
    P6opaqueInstance *obj;

    /* Compute slot mapping if we've not already done so. */
    REPRP6opaque *repr = P6O_REPR_STRUCT(self);
    if (!repr->slot_mapping)
        compute_slot_mapping(interp, WHAT);

    /* Allocate and set up object instance. */
    obj = mem_allocate_zeroed_typed(P6opaqueInstance);
    obj->common.stable = STABLE_PMC(WHAT);
    obj->slots         = mem_sys_allocate(sizeof(PMC *) *
        repr->num_slots == 0 ? 1 : repr->num_slots);
    
    return wrap_object(interp, obj);
}

/* Checks if a given object is defined (from the point of view of the
 * representation). */
static INTVAL defined(PARROT_INTERP, PMC *self, PMC *obj) {
    P6opaqueInstance *instance = (P6opaqueInstance *)PMC_data(obj);
    return instance->slots != NULL;
}

/* Gets the current value for an attribute. */
static PMC * get_attribute(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque attributes NYI");
}

/* Gets the current value for an attribute, obtained using the given hint.*/
static PMC * get_attribute_with_hint(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name, INTVAL hint) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque attributes NYI");
}

/* Binds the given value to the specified attribute. */
static void bind_attribute(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name, PMC *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque attributes NYI");
}

/* Binds the given value to the specified attribute, using the given hint. */
static void bind_attribute_with_hint(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name, INTVAL hint, PMC *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque attributes NYI");
}

/* Gets the hint for the given attribute ID. */
static INTVAL hint_for(PARROT_INTERP, PMC *self, PMC *class_handle, STRING *name) {
    return NO_HINT;
}

/* Used with boxing. Sets an integer value, for representations that can hold
 * one. */
static void set_int(PARROT_INTERP, PMC *self, PMC *obj, INTVAL value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet box a native int");
}

/* Used with boxing. Gets an integer value, for representations that can
 * hold one. */
static INTVAL get_int(PARROT_INTERP, PMC *self, PMC *obj) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet unbox to a native int");
}

/* Used with boxing. Sets a floating point value, for representations that can
 * hold one. */
static void set_num(PARROT_INTERP, PMC *self, PMC *obj, FLOATVAL value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet box a native num");
}

/* Used with boxing. Gets a floating point value, for representations that can
 * hold one. */
static FLOATVAL get_num(PARROT_INTERP, PMC *self, PMC *obj) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet unbox to a native num");
}

/* Used with boxing. Sets a string value, for representations that can hold
 * one. */
static void set_str(PARROT_INTERP, PMC *self, PMC *obj, STRING *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet box a native string");
}

/* Used with boxing. Gets a string value, for representations that can hold
 * one. */
static STRING * get_str(PARROT_INTERP, PMC *self, PMC *obj) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet unbox to a native string");
}

/* This Parrot-specific addition to the API is used to mark an object. */
static void gc_mark(PARROT_INTERP, PMC *self, PMC *obj) {
    P6opaqueInstance *instance = (P6opaqueInstance *)PMC_data(obj);
    
    /* Mark STable. */
    if (!PMC_IS_NULL(instance->common.stable))
        Parrot_gc_mark_PMC_alive(interp, instance->common.stable);
    
    /* If we have slots... */
    if (instance->slots) {
        /* ...mark the things in those. */
        REPRP6opaque *repr = P6O_REPR_STRUCT(self);
        INTVAL i;
        for (i = 0; i < repr->num_slots; i++)
            if (!PMC_IS_NULL(instance->slots[i]))
                Parrot_gc_mark_PMC_alive(interp, instance->slots[i]);
    }

    /* If there's spill storage, mark that. */
    if (!PMC_IS_NULL(instance->spill))
        Parrot_gc_mark_PMC_alive(interp, instance->spill);
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *self, PMC *obj) {
    P6opaqueInstance *instance = (P6opaqueInstance *)PMC_data(obj);
    if (instance->slots)
        mem_sys_free(instance->slots);
    mem_sys_free(instance);
    PMC_data(obj) = NULL;
}

/* Sets up an instance of this representation with function pointers in place
 * and no allocated slot storage. */
static PMC * repr_instance(PARROT_INTERP) {
    REPRP6opaque *repr;
    PMC *repr_pmc;

    /* Allocate and populate the representation function table. */
    repr = mem_allocate_typed(REPRP6opaque);
    repr->common.type_object_for = type_object_for;
    repr->common.instance_of = instance_of;
    repr->common.defined = defined;
    repr->common.get_attribute = get_attribute;
    repr->common.get_attribute_with_hint = get_attribute_with_hint;
    repr->common.bind_attribute = bind_attribute;
    repr->common.bind_attribute_with_hint = bind_attribute_with_hint;
    repr->common.hint_for = hint_for;
    repr->common.set_int = set_int;
    repr->common.get_int = get_int;
    repr->common.set_num = set_num;
    repr->common.get_num = get_num;
    repr->common.set_str = set_str;
    repr->common.get_str = get_str;
    repr->common.gc_mark = gc_mark;
    repr->common.gc_free = gc_free;
    repr->slot_mapping = PMCNULL;
    repr->num_slots = 0;

    /* Wrap it in a PMC. */
    return wrap_repr(interp, repr);
}

/* Initializes the P6opaque representation. */
PMC * P6opaque_initialize(PARROT_INTERP) {
    return repr_instance(interp);
}
