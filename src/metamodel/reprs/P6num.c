/* This is the implementation of the P6num representation, which holds a native
 * floating point number. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../rakudoobject.h"
#include "P6num.h"

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC * type_object_for(PARROT_INTERP, PMC *self, PMC *HOW) {
    /* Create new object instance. */
    P6numInstance *obj = mem_allocate_zeroed_typed(P6numInstance);

    /* Build an STable. */
    PMC *st_pmc = create_stable(interp, self, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);

    /* Create type object and point it back at the STable. */
    st->WHAT = wrap_object(interp, obj);
    obj->common.stable = st_pmc;

    return st->WHAT;
}

/* Creates a new instance based on the type object. */
static PMC * instance_of(PARROT_INTERP, PMC *self, PMC *WHAT) {
    P6numInstance *obj = mem_allocate_zeroed_typed(P6numInstance);
    obj->common.stable = STABLE_PMC(WHAT);
    obj->value         = 0.0;
    return wrap_object(interp, obj);
}

/* Checks if a given object is defined (from the point of view of the
 * representation). */
static INTVAL defined(PARROT_INTERP, PMC *self, PMC *obj) {
    /* Native types cannot be undefined. */
    return 1;
}

/* Gets the current value for an attribute. */
static PMC * get_attribute(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num does not support attribute storage");
}

/* Gets the current value for an attribute, obtained using the given hint.*/
static PMC * get_attribute_with_hint(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name, INTVAL hint) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num does not support attribute storage");
}

/* Binds the given value to the specified attribute. */
static void bind_attribute(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name, PMC *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num does not support attribute storage");
}

/* Binds the given value to the specified attribute, using the given hint. */
static void bind_attribute_with_hint(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name, INTVAL hint, PMC *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num does not support attribute storage");
}

/* Gets the hint for the given attribute ID. */
static INTVAL hint_for(PARROT_INTERP, PMC *self, PMC *class_handle, STRING *name) {
    return NO_HINT;
}

/* Used with boxing. Sets an integer value, for representations that can hold
 * one. */
static void set_int(PARROT_INTERP, PMC *self, PMC *obj, INTVAL value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num cannot box a native int");
}

/* Used with boxing. Gets an integer value, for representations that can
 * hold one. */
static INTVAL get_int(PARROT_INTERP, PMC *self, PMC *obj) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num cannot unbox to a native int");
}

/* Used with boxing. Sets a floating point value, for representations that can
 * hold one. */
static void set_num(PARROT_INTERP, PMC *self, PMC *obj, FLOATVAL value) {
    ((P6numInstance *)PMC_data(obj))->value = value;
}

/* Used with boxing. Gets a floating point value, for representations that can
 * hold one. */
static FLOATVAL get_num(PARROT_INTERP, PMC *self, PMC *obj) {
    return ((P6numInstance *)PMC_data(obj))->value;
}

/* Used with boxing. Sets a string value, for representations that can hold
 * one. */
static void set_str(PARROT_INTERP, PMC *self, PMC *obj, STRING *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num cannot box a native string");
}

/* Used with boxing. Gets a string value, for representations that can hold
 * one. */
static STRING * get_str(PARROT_INTERP, PMC *self, PMC *obj) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num cannot unbox to a native string");
}

/* This Parrot-specific addition to the API is used to mark an object. */
static void gc_mark(PARROT_INTERP, PMC *self, PMC *obj) {
    P6numInstance *instance = (P6numInstance *)PMC_data(obj);
    if (!PMC_IS_NULL(instance->common.stable))
        Parrot_gc_mark_PMC_alive(interp, instance->common.stable);
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *self, PMC *obj) {
    mem_sys_free(PMC_data(obj));
    PMC_data(obj) = NULL;
}

/* Gets the storage specification for this representation. */
static storage_spec get_storage_spec(PARROT_INTERP, PMC *self) {
    storage_spec spec;
    spec.inlineable = STORAGE_SPEC_INLINED;
    spec.bits = sizeof(FLOATVAL) * 8;
    spec.boxed_primitive = STORAGE_SPEC_BP_NUM;
    return spec;
}

/* Initializes the P6num representation. */
PMC * P6num_initialize(PARROT_INTERP) {
    REPRCommonalities *repr;
    PMC *repr_pmc;

    /* Allocate and populate the representation function table. */
    repr = mem_allocate_typed(REPRCommonalities);
    repr->type_object_for = type_object_for;
    repr->instance_of = instance_of;
    repr->defined = defined;
    repr->get_attribute = get_attribute;
    repr->get_attribute_with_hint = get_attribute_with_hint;
    repr->bind_attribute = bind_attribute;
    repr->bind_attribute_with_hint = bind_attribute_with_hint;
    repr->hint_for = hint_for;
    repr->set_int = set_int;
    repr->get_int = get_int;
    repr->set_num = set_num;
    repr->get_num = get_num;
    repr->set_str = set_str;
    repr->get_str = get_str;
    repr->gc_mark = gc_mark;
    repr->gc_free = gc_free;
    repr->gc_mark_repr = NULL;
    repr->gc_free_repr = NULL;
    repr->get_storage_spec = get_storage_spec;

    /* Wrap it in a PMC. */
    return wrap_repr(interp, repr);
}
