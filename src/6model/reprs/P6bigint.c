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
static wrap_object_t   wrap_object_func;
static create_stable_t create_stable_func;

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

/* Composes the representation. */
static void compose(PARROT_INTERP, STable *st, PMC *repr_info) {
    /* Nothing to do. */
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
    mp_init_copy(&dest_body->i, &src_body->i);
}

/* Used with boxing. Sets an integer value, for representations that can hold
 * one. */
static void set_int(PARROT_INTERP, STable *st, void *data, INTVAL value) {
    mp_int *i = &((P6bigintBody *)data)->i;
    if (value >= 0) {
        mp_set_long(i, value);
    }
    else {
        mp_set_long(i, -value);
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
        ret = mp_get_long(i);
        mp_neg(i, i);
        return -ret;
    }
    else {
        return mp_get_long(i);
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
    spec.align = ALIGNOF1(mp_int);
    spec.boxed_primitive = STORAGE_SPEC_BP_INT;
    spec.can_box = STORAGE_SPEC_CAN_BOX_INT;
    return spec;
}

/* Serializes the data. */
static void serialize(PARROT_INTERP, STable *st, void *data, SerializationWriter *writer) {
    mp_int *i = &((P6bigintBody *)data)->i;
    int len;
    char *buf;
    mp_radix_size(i, 10, &len);
    buf = (char *) mem_sys_allocate(len);
    mp_toradix_n(i, buf, 10, len);
    /* len - 1 because buf is \0-terminated */
    writer->write_str(interp, writer, Parrot_str_new(interp, buf, len - 1));
    mem_sys_free(buf);
}

/* Deserializes the data. */
static void deserialize(PARROT_INTERP, STable *st, void *data, SerializationReader *reader) {
    P6bigintBody *body = (P6bigintBody *)data;
    const char *buf = Parrot_str_cstring(interp, reader->read_str(interp, reader));
    mp_init(&body->i);
    mp_read_radix(&body->i, buf, 10);
}

/* Initializes the P6bigint representation. */
REPROps * P6bigint_initialize(PARROT_INTERP,
        wrap_object_t wrap_object_func_ptr,
        create_stable_t create_stable_func_ptr) {
    /* Stash away functions passed wrapping functions. */
    wrap_object_func = wrap_object_func_ptr;
    create_stable_func = create_stable_func_ptr;

    /* Allocate and populate the representation function table. */
    this_repr = mem_allocate_zeroed_typed(REPROps);
    this_repr->type_object_for = type_object_for;
    this_repr->compose = compose;
    this_repr->allocate = allocate;
    this_repr->initialize = initialize;
    this_repr->copy_to = copy_to;
    this_repr->box_funcs = mem_allocate_typed(REPROps_Boxing);
    this_repr->box_funcs->set_int = set_int;
    this_repr->box_funcs->get_int = get_int;
    this_repr->box_funcs->set_num = set_num;
    this_repr->box_funcs->get_num = get_num;
    this_repr->box_funcs->set_str = set_str;
    this_repr->box_funcs->get_str = get_str;
    this_repr->box_funcs->get_boxed_ref = get_boxed_ref;
    this_repr->gc_free = gc_free;
    this_repr->gc_cleanup = gc_cleanup;
    this_repr->get_storage_spec = get_storage_spec;
    this_repr->serialize = serialize;
    this_repr->deserialize = deserialize;
    return this_repr;
}
