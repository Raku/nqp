/* This is the implementation of the P6num representation, which holds a native
 * floating point number. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "P6num.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

static void set_num(PARROT_INTERP, STable *st, void *data, FLOATVAL value);
static FLOATVAL get_num(PARROT_INTERP, STable *st, void *data);

PARROT_DOES_NOT_RETURN static void die_bad_bits(PARROT_INTERP) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num can only handle 32 or 64 bit wide floats.");
}

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC * type_object_for(PARROT_INTERP, PMC *HOW) {
    /* Create new object instance. */
    P6numInstance *obj = mem_allocate_zeroed_typed(P6numInstance);
    P6numREPRData *repr_data = mem_allocate_zeroed_typed(P6numREPRData);

    /* Build an STable. */
    PMC *st_pmc = create_stable(interp, this_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);

    /* Set default bit width value in the REPR data and attach it to the
     * STable. */
    repr_data->bits = sizeof(FLOATVAL)*8;
    st->REPR_data = repr_data;

    /* Create type object and point it back at the STable. */
    obj->common.stable = st_pmc;
    st->WHAT = wrap_object(interp, obj);
    PARROT_GC_WRITE_BARRIER(interp, st_pmc);

    /* Flag it as a type object. */
    MARK_AS_TYPE_OBJECT(st->WHAT);

    return st->WHAT;
}

/* Composes the representation. */
static void compose(PARROT_INTERP, STable *st, PMC *repr_info) {
    /* Nothing to do yet (but later, size). */
    P6numREPRData *repr_data = (P6numREPRData *) st->REPR_data;
    PMC *info = VTABLE_get_pmc_keyed_str(interp, repr_info,
        Parrot_str_new_constant(interp, "float"));

    repr_data->bits = sizeof(FLOATVAL)*8;
    if(!PMC_IS_NULL(info)) {
        repr_data->bits = VTABLE_get_integer_keyed_str(interp, info,
            Parrot_str_new_constant(interp, "bits"));
        if (!repr_data->bits) repr_data->bits = sizeof(FLOATVAL)*8;

        if(repr_data->bits != 32 && repr_data->bits != 64) {
            die_bad_bits(interp);
        }
    }
}

/* Creates a new instance based on the type object. */
static PMC * allocate(PARROT_INTERP, STable *st) {
    P6numInstance *obj = mem_allocate_zeroed_typed(P6numInstance);
    obj->common.stable = st->stable_pmc;
    return wrap_object(interp, obj);
}

/* Initialize a new instance. */
static void initialize(PARROT_INTERP, STable *st, void *data) {
    P6numREPRData *repr_data = (P6numREPRData *)st->REPR_data;

    double x = 0.0;
    if (repr_data->bits == 32) {
        set_num(interp, st, data, 0.0/x);
    }
    else if (repr_data->bits == 64) {
        set_num(interp, st, data, 0.0/x);
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "P6num can only handle 32 or 64 bit floats.");
    }
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    set_num(interp, st, dest, get_num(interp, st, src));
}

/* Used with boxing. Sets an integer value, for representations that can hold
 * one. */
static void set_int(PARROT_INTERP, STable *st, void *data, INTVAL value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num cannot box a native int");
}

/* Used with boxing. Gets an integer value, for representations that can
 * hold one. */
static INTVAL get_int(PARROT_INTERP, STable *st, void *data) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num cannot unbox to a native int");
}

/* Used with boxing. Sets a floating point value, for representations that can
 * hold one. */
static void set_num(PARROT_INTERP, STable *st, void *data, FLOATVAL value) {
    P6numREPRData *repr_data = (P6numREPRData *)st->REPR_data;

    switch (repr_data->bits) {
    case 32:
        *(Parrot_Float4 *)data = (Parrot_Float4) value;
        break;
    case 64:
        *(Parrot_Float8 *)data = (Parrot_Float8) value;
        break;
    default:
        die_bad_bits(interp);
    }
}

/* Used with boxing. Gets a floating point value, for representations that can
 * hold one. */
static FLOATVAL get_num(PARROT_INTERP, STable *st, void *data) {
    P6numREPRData *repr_data = (P6numREPRData *)st->REPR_data;

    switch (repr_data->bits) {
    case 32:
        return *(Parrot_Float4 *)data;
    case 64:
        return *(Parrot_Float8 *)data;
    default:
        die_bad_bits(interp);
    }
}

/* Used with boxing. Sets a string value, for representations that can hold
 * one. */
static void set_str(PARROT_INTERP, STable *st, void *data, STRING *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num cannot box a native string");
}

/* Used with boxing. Gets a string value, for representations that can hold
 * one. */
static STRING * get_str(PARROT_INTERP, STable *st, void *data) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num cannot unbox to a native string");
}

/* Some objects serve primarily as boxes of others, inlining them. This gets
 * gets the reference to such things, using the representation ID to distinguish
 * them. */
static void * get_boxed_ref(PARROT_INTERP, STable *st, void *data, INTVAL repr_id) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6num cannot box other types");
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    mem_sys_free(PMC_data(obj));
    PMC_data(obj) = NULL;
}

/* Gets the storage specification for this representation. */
static storage_spec get_storage_spec(PARROT_INTERP, STable *st) {
    storage_spec spec;
    P6numREPRData *repr_data = (P6numREPRData *) st->REPR_data;
    spec.inlineable = STORAGE_SPEC_INLINED;
    spec.boxed_primitive = STORAGE_SPEC_BP_NUM;
    spec.can_box = STORAGE_SPEC_CAN_BOX_NUM;

    if (repr_data && repr_data->bits) {
        spec.bits = repr_data->bits;
    }
    else {
        spec.bits = sizeof(FLOATVAL)*8;
    }

    switch (spec.bits) {
    case 32:
        spec.align = ALIGNOF1(Parrot_Float4);
        break;
    case 64:
        spec.align = ALIGNOF1(Parrot_Float8);
        break;
    default:
        die_bad_bits(interp);
        break;
    }

    return spec;
}

/* Serializes the data. */
static void serialize(PARROT_INTERP, STable *st, void *data, SerializationWriter *writer) {
    writer->write_num(interp, writer, ((P6numBody *)data)->value);
}

/* Deserializes the data. */
static void deserialize(PARROT_INTERP, STable *st, void *data, SerializationReader *reader) {
    ((P6numBody *)data)->value = reader->read_num(interp, reader);
}

/* Serializes the REPR data. */
static void serialize_repr_data(PARROT_INTERP, STable *st, SerializationWriter *writer) {
    P6numREPRData *repr_data = (P6numREPRData *) st->REPR_data;

    /* Don't serialize any REPR data in version 1. */
    if (writer->root.version >= 2) {
        writer->write_int(interp, writer, repr_data->bits);
    }
}

/* Serializes the REPR data. */
static void deserialize_repr_data(PARROT_INTERP, STable *st, SerializationReader *reader) {
    P6numREPRData *repr_data = (P6numREPRData *) (st->REPR_data = mem_allocate_zeroed_typed(P6numREPRData));

    /* Only read in REPR data for serialization format greater than version 1.
     * In version 1, just set default values. */
    if (reader->root.version >= 2) {
        repr_data->bits = reader->read_int(interp, reader);
    }
    else {
        repr_data->bits = sizeof(INTVAL)*8;
    }
}

/* Initializes the P6num representation. */
REPROps * P6num_initialize(PARROT_INTERP) {
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
    this_repr->get_storage_spec = get_storage_spec;
    this_repr->serialize = serialize;
    this_repr->deserialize = deserialize;
    this_repr->serialize_repr_data = serialize_repr_data;
    this_repr->deserialize_repr_data = deserialize_repr_data;
    return this_repr;
}
