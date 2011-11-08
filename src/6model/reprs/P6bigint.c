/* This is the implementation of the P6bigint representation, which holds a
 * libtommath big integer. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "P6bigint.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Some functions we have to get references to. */
static PMC * (* wrap_object_func) (PARROT_INTERP, void *obj);
static PMC * (* create_stable_func) (PARROT_INTERP, REPROps *REPR, PMC *HOW);

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC * type_object_for(PARROT_INTERP, PMC *HOW) {
    /* Create new object instance. */
    P6bigintInstance *obj = mem_allocate_zeroed_typed(P6bigintInstance);

    /* Build an STable. */
    PMC *st_pmc = create_stable_func(interp, this_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);

    /* Create type object and point it back at the STable. */
    obj->common.stable = st_pmc;
    st->WHAT = wrap_object_func(interp, obj);
    PARROT_GC_WRITE_BARRIER(interp, st_pmc);

    /* Flag it as a type object. */
    MARK_AS_TYPE_OBJECT(st->WHAT);

    return st->WHAT;
}

/* Creates a new instance based on the type object. */
static PMC * allocate(PARROT_INTERP, STable *st) {
    P6bigintInstance *obj = mem_allocate_zeroed_typed(P6bigintInstance);
    obj->common.stable = st->stable_pmc;
    return wrap_object_func(interp, obj);
}

/* Initialize a new instance. */
static void initialize(PARROT_INTERP, STable *st, void *data) {
    P6bigintBody *body = (P6bigintBody *)data;
    mp_init(&body->i);
    mp_zero(&body->i);
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    P6bigintBody *src_body = (P6bigintBody *)src;
    P6bigintBody *dest_body = (P6bigintBody *)dest;
    mp_init_copy(&src_body->i, &dest_body->i);
}

/* Helper to die because this type doesn't support attributes. */
PARROT_DOES_NOT_RETURN
static void die_no_attrs(PARROT_INTERP) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6bigint representation does not support attribute storage");
}

/* Gets the current value for an attribute. */
static PMC * get_attribute_boxed(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint) {
    die_no_attrs(interp);
}
static void * get_attribute_ref(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint) {
    die_no_attrs(interp);
}

/* Binds the given value to the specified attribute. */
static void bind_attribute_boxed(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, PMC *value) {
    die_no_attrs(interp);
}
static void bind_attribute_ref(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, void *value) {
    die_no_attrs(interp);
}

/* Gets the hint for the given attribute ID. */
static INTVAL hint_for(PARROT_INTERP, STable *st, PMC *class_handle, STRING *name) {
    return NO_HINT;
}

/* Used with boxing. Sets an integer value, for representations that can hold
 * one. */
static void set_int(PARROT_INTERP, STable *st, void *data, INTVAL value) {
    mp_int *i = &((P6bigintBody *)data)->i;
    if (value >= 0) {
        mp_set_int(i, value);
    }
    else {
        mp_set_int(i, -value);
        mp_neg(i, i);
    }
}

/* Used with boxing. Gets an integer value, for representations that can
 * hold one. */
static INTVAL get_int(PARROT_INTERP, STable *st, void *data) {
    INTVAL ret;
    mp_int *i = &((P6bigintBody *)data)->i;
    if (MP_LT == mp_cmp_d(i, 0)) {
        mp_neg(i, i);
        ret = mp_get_int(i);
        mp_neg(i, i);
        return -ret;
    }
    else {
        return mp_get_int(i);
    }
}

/* Used with boxing. Sets a floating point value, for representations that can
 * hold one. */
static void set_num(PARROT_INTERP, STable *st, void *data, FLOATVAL value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6bigint cannot box a native num");
}

/* Used with boxing. Gets a floating point value, for representations that can
 * hold one. */
static FLOATVAL get_num(PARROT_INTERP, STable *st, void *data) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6bigint cannot unbox to a native num");
}

/* Used with boxing. Sets a string value, for representations that can hold
 * one. */
static void set_str(PARROT_INTERP, STable *st, void *data, STRING *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6bigint cannot box a native string");
}

/* Used with boxing. Gets a string value, for representations that can hold
 * one. */
static STRING * get_str(PARROT_INTERP, STable *st, void *data) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6bigint cannot unbox to a native string");
}

/* Some objects serve primarily as boxes of others, inlining them. This gets
 * gets the reference to such things, using the representation ID to distinguish
 * them. */
static void * get_boxed_ref(PARROT_INTERP, STable *st, void *data, INTVAL repr_id) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6bigint cannot box other types");
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    mp_clear(&((P6bigintInstance *)PMC_data(obj))->body.i);
    mem_sys_free(PMC_data(obj));
    PMC_data(obj) = NULL;
}

/* This is called to do any cleanup of resources when an object gets
 * embedded inside another one. Never called on a top-level object. */
static void gc_cleanup(PARROT_INTERP, STable *st, void *data) {
    mp_clear(&((P6bigintBody *)data)->i);
}

/* Gets the storage specification for this representation. */
static storage_spec get_storage_spec(PARROT_INTERP, STable *st) {
    storage_spec spec;
    spec.inlineable = STORAGE_SPEC_INLINED;
    spec.bits = sizeof(mp_int) * 8;
    spec.boxed_primitive = STORAGE_SPEC_BP_INT;
    spec.can_box = STORAGE_SPEC_CAN_BOX_INT;
    return spec;
}

/* Checks if an attribute has been initialized. */
static INTVAL is_attribute_initialized(PARROT_INTERP, STable *st, void *data, PMC *ClassHandle, STRING *Name, INTVAL Hint) {
    die_no_attrs(interp);
}

/* Initializes the P6bigint representation. */
REPROps * P6bigint_initialize(PARROT_INTERP,
        PMC * (* wrap_object_func_ptr) (PARROT_INTERP, void *obj),
        PMC * (* create_stable_func_ptr) (PARROT_INTERP, REPROps *REPR, PMC *HOW)) {
    /* Stash away functions passed wrapping functions. */
    wrap_object_func = wrap_object_func_ptr;
    create_stable_func = create_stable_func_ptr;

    /* Allocate and populate the representation function table. */
    this_repr = mem_allocate_typed(REPROps);
    this_repr->type_object_for = type_object_for;
    this_repr->allocate = allocate;
    this_repr->initialize = initialize;
    this_repr->copy_to = copy_to;
    this_repr->get_attribute_boxed = get_attribute_boxed;
    this_repr->get_attribute_boxed = get_attribute_boxed;
    this_repr->bind_attribute_boxed = bind_attribute_boxed;
    this_repr->bind_attribute_ref = bind_attribute_ref;
    this_repr->hint_for = hint_for;
    this_repr->set_int = set_int;
    this_repr->get_int = get_int;
    this_repr->set_num = set_num;
    this_repr->get_num = get_num;
    this_repr->set_str = set_str;
    this_repr->get_str = get_str;
    this_repr->get_boxed_ref = get_boxed_ref;
    this_repr->gc_mark = NULL;
    this_repr->gc_free = gc_free;
    this_repr->gc_cleanup = gc_cleanup;
    this_repr->gc_mark_repr_data = NULL;
    this_repr->gc_free_repr_data = NULL;
    this_repr->get_storage_spec = get_storage_spec;
    this_repr->is_attribute_initialized = is_attribute_initialized;
    return this_repr;
}
