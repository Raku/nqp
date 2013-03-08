#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "VMArray.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC * type_object_for(PARROT_INTERP, PMC *HOW) {
    /* Create new object instance. */
    VMArrayInstance *obj = mem_allocate_zeroed_typed(VMArrayInstance);

    /* Build an STable. */
    PMC *st_pmc = create_stable(interp, this_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);

    /* Create type object and point it back at the STable. */
    obj->common.stable = st_pmc;
    st->WHAT = wrap_object(interp, obj);
    st->REPR_data = mem_allocate_zeroed_typed(VMArrayREPRData);
    PARROT_GC_WRITE_BARRIER(interp, st_pmc);

    /* Flag it as a type object. */
    MARK_AS_TYPE_OBJECT(st->WHAT);

    return st->WHAT;
}

/* Composes the representation. */
static void compose(PARROT_INTERP, STable *st, PMC *repr_info) {
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;
    PMC *array = VTABLE_get_pmc_keyed_str(interp, repr_info,
        Parrot_str_new_constant(interp, "array"));

    if(!PMC_IS_NULL(array)) {
        PMC *type = VTABLE_get_pmc_keyed_str(interp, array,
            Parrot_str_new_constant(interp, "type"));
        storage_spec spec = REPR(type)->get_storage_spec(interp, STABLE(type));
        repr_data->elem_type = type;

        if(spec.inlineable == STORAGE_SPEC_INLINED &&
                (spec.boxed_primitive == STORAGE_SPEC_BP_INT ||
                 spec.boxed_primitive == STORAGE_SPEC_BP_NUM)) {
            repr_data->elem_size = spec.bits;
            repr_data->elem_kind = spec.boxed_primitive;
        }
    }
}

/* Creates a new instance based on the type object. */
static PMC * allocate(PARROT_INTERP, STable *st) {
    VMArrayInstance *obj = mem_allocate_zeroed_typed(VMArrayInstance);
    obj->common.stable = st->stable_pmc;
    return wrap_object(interp, obj);
}

/* Initialize a new instance. */
static void initialize(PARROT_INTERP, STable *st, void *data) {
    /* Nothing to do here. */
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    VMArrayBody *src_body = (VMArrayBody *)src;
    VMArrayBody *dest_body = (VMArrayBody *)dest;
    /* Nothing to do yet. */
}

static void serialize(PARROT_INTERP, STable *st, void *data, SerializationWriter *writer) {
    /* TODO */
}

static void deserialize(PARROT_INTERP, STable *st, void *data, SerializationReader *reader) {
    /* TODO */
}

static void serialize_repr_data(PARROT_INTERP, STable *st, SerializationWriter *writer) {
    /* TODO */
}

static void deserialize_repr_data(PARROT_INTERP, STable *st, SerializationReader *reader) {
    /* TODO */
}

static void gc_mark(PARROT_INTERP, STable *st, void *data) {
    /* TODO: If we contain PMC, mark all of them that are non-NULL. */
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    VMArrayInstance *instance = (VMArrayInstance *) PMC_data(obj);
    PMC_data(obj) = NULL;
    if(instance->body.slots)
        mem_sys_free(instance->body.slots);
    mem_sys_free(instance);
}

/* Gets the storage specification for this representation. */
static storage_spec get_storage_spec(PARROT_INTERP, STable *st) {
    storage_spec spec;
    spec.inlineable = STORAGE_SPEC_REFERENCE;
    spec.boxed_primitive = STORAGE_SPEC_BP_NONE;
    spec.can_box = 0;
    spec.bits = sizeof(void *) * 8;
    spec.align = ALIGNOF1(void *);
    return spec;
}

PARROT_DOES_NOT_RETURN static void die_no_native(PARROT_INTERP, const char *operation) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "VMArray: Can't perform native %s when containing boxed types", operation);
}

PARROT_DOES_NOT_RETURN static void die_no_boxed(PARROT_INTERP, const char *operation) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "VMArray: Can't perform boxed %s when containing native types", operation);
}

/* Wrapper functions to set and get an array offset to a value for the various
 * types we support. */
static void set_pos_int1(Parrot_Int1 *slots, INTVAL offset, Parrot_Int1 val) { slots[offset] = val; }
static void set_pos_int2(Parrot_Int2 *slots, INTVAL offset, Parrot_Int2 val) { slots[offset] = val; }
static void set_pos_int4(Parrot_Int4 *slots, INTVAL offset, Parrot_Int4 val) { slots[offset] = val; }
static void set_pos_int8(Parrot_Int8 *slots, INTVAL offset, Parrot_Int8 val) { slots[offset] = val; }
static void set_pos_float4(Parrot_Float4 *slots, INTVAL offset, Parrot_Float4 val) { slots[offset] = val; }
static void set_pos_float8(Parrot_Float8 *slots, INTVAL offset, Parrot_Float8 val) { slots[offset] = val; }
static void set_pos_pmc(PMC **slots, INTVAL offset, PMC *obj) { slots[offset] = obj; }

static INTVAL get_pos_int1(Parrot_Int1 *slots, INTVAL offset)       { return slots[offset]; }
static INTVAL get_pos_int2(Parrot_Int2 *slots, INTVAL offset)       { return slots[offset]; }
static INTVAL get_pos_int4(Parrot_Int4 *slots, INTVAL offset)       { return slots[offset]; }
static INTVAL get_pos_int8(Parrot_Int8 *slots, INTVAL offset)       { return slots[offset]; }
static FLOATVAL get_pos_float4(Parrot_Float4 *slots, INTVAL offset) { return slots[offset]; }
static FLOATVAL get_pos_float8(Parrot_Float8 *slots, INTVAL offset) { return slots[offset]; }
static PMC *get_pos_pmc(PMC **slots, INTVAL offset)                 { return slots[offset]; }

/* Convenience method to set a given offset to a sensible NULL value. */
static void null_pos(PARROT_INTERP, VMArrayREPRData *repr_data, void *slots, INTVAL offset) {
    if(!repr_data->elem_size) {
        set_pos_pmc((PMC **) slots, offset, PMCNULL);
    }
    else if(repr_data->elem_kind == STORAGE_SPEC_BP_INT) {
        switch(repr_data->elem_size) {
        case 8:
            set_pos_int1((Parrot_Int1 *) slots, offset, 0);
            break;
        case 16:
            set_pos_int2((Parrot_Int2 *) slots, offset, 0);
            break;
        case 32:
            set_pos_int4((Parrot_Int4 *) slots, offset, 0);
            break;
        case 64:
            set_pos_int8((Parrot_Int8 *) slots, offset, 0);
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "VMArray: Only supports 8, 16, 32 and 64 bit integers.");
        }
    }
    else if(repr_data->elem_kind == STORAGE_SPEC_BP_NUM) {
        switch(repr_data->elem_size) {
        case 32:
            set_pos_float4((Parrot_Float4 *) slots, offset, 0.0);
            break;
        case 64:
            set_pos_float8((Parrot_Float8 *) slots, offset, 0.0);
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "VMArray: Only supports 32 and 64 bit floats.");
        }
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "VMArray: unsupported elem_kind (%d) in null_pos", repr_data->elem_kind);
    }
}

/* Ensure that the array has enough size  */
static void ensure_size(PARROT_INTERP, VMArrayBody *body, VMArrayREPRData *repr_data, INTVAL n) {
    INTVAL elems = body->elems;
    INTVAL start = body->start;
    INTVAL ssize = body->ssize;
    void *slots  = body->slots;
    INTVAL elem_size = repr_data->elem_size/8;

    if(n < 0) {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "VMArray: Can't resize to negative size");
    }

    if(n == elems) { return; }

    /* If there aren't enough slots at the end, shift off empty slots
        * from the beginning first */
    if (start > 0 && n + start > ssize) {
        if (elems > 0) {
            void *src = ((char *) slots) + start*elem_size;
            memmove(slots, src, elems * elem_size);
        }
        body->start = 0;
        /* fill out any unused slots with PMCNULL pointers */
        while (elems < ssize) {
            null_pos(interp, repr_data, slots, elems);
            elems++;
        }
    }

    body->elems = n;
    if (n <= ssize) {
        /* We already have n slots available, we can just return */
        return;
    }

    /* We need more slots.  If the current slot size is less
     * than 8K, use the larger of twice the current slot size
     * or the actual number of elements needed.  Otherwise,
     * grow the slots to the next multiple of 4096 (0x1000). */
    if (ssize < 8192) {
        ssize *= 2;
        if (n > ssize) ssize = n;
        if (ssize < 8) ssize = 8;
    }
    else {
        ssize = (n + 0x1000) & ~0xfff;
    }

    /* Now allocate the new slot buffer */
    slots = (slots)
            ? mem_sys_realloc(slots, ssize*elem_size)
            : mem_sys_allocate(ssize*elem_size);

    /* Fill out any unused slots with PMCNULL pointers */
    while (elems < ssize) {
        null_pos(interp, repr_data, slots, elems);
        elems++;
    }

    body->ssize = ssize;
    body->slots = slots;
}

static void at_pos_native(PARROT_INTERP, STable *st, void *data, INTVAL index, NativeValue *value) {
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;

    if(!repr_data->elem_size)
        die_no_native(interp, "get");

    if(value->type == NATIVE_VALUE_STRING)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "VMArray: Can't get unboxed string value");

    if(repr_data->elem_kind == STORAGE_SPEC_BP_INT) {
        switch(repr_data->elem_size) {
        case 8:
            value->value.intval = get_pos_int1((Parrot_Int1 *) body->slots, body->start + index);
            break;
        case 16:
            value->value.intval = get_pos_int2((Parrot_Int2 *) body->slots, body->start + index);
            break;
        case 32:
            value->value.intval = get_pos_int4((Parrot_Int4 *) body->slots, body->start + index);
            break;
        case 64:
            value->value.intval = get_pos_int8((Parrot_Int8 *) body->slots, body->start + index);
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "VMArray: Only supports 8, 16, 32 and 64 bit integers.");
        }
    }
    else if(repr_data->elem_kind == STORAGE_SPEC_BP_NUM) {
        switch(repr_data->elem_size) {
        case 32:
            value->value.floatval = get_pos_float4((Parrot_Float4 *) body->slots, body->start + index);
            break;
        case 64:
            value->value.floatval = get_pos_float8((Parrot_Float8 *) body->slots, body->start + index);
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "VMArray: Only supports 32 and 64 bit floats.");
        }
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "VMArray: unsupported elem_kind (%d) in bind_pos_native", repr_data->elem_kind);
    }
}

static PMC *at_pos_boxed(PARROT_INTERP, STable *st, void *data, INTVAL index) {
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;

    if(repr_data->elem_size)
        die_no_boxed(interp, "set");

    if(index < 0) {
        index += body->elems;
        if(index < 0)
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_OUT_OF_BOUNDS,
                    "VMArray: index out of bounds");
    }
    else if(index >= body->elems) {
        return PMCNULL;
    }

    return get_pos_pmc((PMC **) body->slots, body->start + index);
}

static void bind_pos_native(PARROT_INTERP, STable *st, void *data, INTVAL index, NativeValue *value) {
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;

    if(!repr_data->elem_size)
        die_no_native(interp, "get");

    if(value->type == NATIVE_VALUE_STRING)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "VMArray: Can't bind unboxed string value");

    if(index < 0) {
        index += body->elems;
        if(index < 0)
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_OUT_OF_BOUNDS,
                    "VMArray: index out of bounds");
    }
    else if(index >= body->elems) {
        ensure_size(interp, body, repr_data, index+1);
    }

    if(repr_data->elem_kind == STORAGE_SPEC_BP_INT) {
        switch(repr_data->elem_size) {
        case 8:
            set_pos_int1((Parrot_Int1 *) body->slots, body->start + index, value->value.intval);
            break;
        case 16:
            set_pos_int2((Parrot_Int2 *) body->slots, body->start + index, value->value.intval);
            break;
        case 32:
            set_pos_int4((Parrot_Int4 *) body->slots, body->start + index, value->value.intval);
            break;
        case 64:
            set_pos_int8((Parrot_Int8 *) body->slots, body->start + index, value->value.intval);
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "VMArray: Only supports 8, 16, 32 and 64 bit integers.");
        }
    }
    else if(repr_data->elem_kind == STORAGE_SPEC_BP_NUM) {
        switch(repr_data->elem_size) {
        case 32:
            set_pos_float4((Parrot_Float4 *) body->slots, body->start + index, value->value.floatval);
            break;
        case 64:
            set_pos_float8((Parrot_Float8 *) body->slots, body->start + index, value->value.floatval);
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "VMArray: Only supports 32 and 64 bit floats.");
        }
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "VMArray: unsupported elem_kind (%d) in bind_pos_native", repr_data->elem_kind);
    }
}

static void bind_pos_boxed(PARROT_INTERP, STable *st, void *data, INTVAL index, PMC *obj) {
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;

    if(repr_data->elem_size)
        die_no_boxed(interp, "set");

    if(index < 0) {
        index += body->elems;
        if(index < 0)
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_OUT_OF_BOUNDS,
                    "VMArray: index out of bounds");
    }
    else if(index >= body->elems) {
        ensure_size(interp, body, repr_data, index+1);
    }

    set_pos_pmc((PMC **) body->slots, body->start + index, obj);
}

static void push_boxed(PARROT_INTERP, STable *st, void *data, PMC *obj) {
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;

    if(repr_data->elem_size)
        die_no_boxed(interp, "push");

    ensure_size(interp, body, repr_data, body->elems+1);
    set_pos_pmc((PMC **) body->slots, body->start + body->elems-1, obj);
}

static PMC *pop_boxed(PARROT_INTERP, STable *st, void *data) {
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;

    if(repr_data->elem_size)
        die_no_boxed(interp, "pop");

    if(body->elems < 1)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_OUT_OF_BOUNDS,
                "VMArray: Can't pop from an empty array!");

    body->elems--;
    return get_pos_pmc((PMC **) body->slots, body->start + body->elems);
}

static void unshift_boxed(PARROT_INTERP, STable *st, void *data, PMC *obj) {
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;

    if(repr_data->elem_size)
        die_no_boxed(interp, "unshift");

    /* If we don't have room at the beginning of the slots, make some room (8
     * slots) for unshifting */
    if (body->start < 1) {
        INTVAL n = 8;
        INTVAL elems = body->elems;
        INTVAL i;
        PMC **pmcslots = (PMC **) body->slots;

        /* Grow the array */
        ensure_size(interp, body, repr_data, elems + n);
        /* Move elements and set start */
        memmove(pmcslots + n, pmcslots, elems * sizeof (PMC *));
        body->start = n;
        body->elems = elems;
        /* Clear out beginning elements */
        for (i = 0; i < n; i++)
            set_pos_pmc(pmcslots, i, PMCNULL);
    }

    /* Now do the unshift */
    body->start--;
    set_pos_pmc((PMC **) body->slots, body->start, obj);
    body->elems++;
}

static PMC *shift_boxed(PARROT_INTERP, STable *st, void *data) {
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;
    PMC *value;

    if(repr_data->elem_size)
        die_no_boxed(interp, "shift");

    if(body->elems < 1)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_OUT_OF_BOUNDS,
                "VMArray: Can't shift from an empty array!");

    value = get_pos_pmc((PMC **) body->slots, body->start);
    body->start++;
    body->elems--;
    return value;
}

/* Initializes the VMArray representation. */
REPROps * VMArray_initialize(PARROT_INTERP) {
    /* Allocate and populate the representation function table. */
    this_repr = mem_allocate_zeroed_typed(REPROps);
    this_repr->type_object_for = type_object_for;
    this_repr->compose = compose;
    this_repr->allocate = allocate;
    this_repr->initialize = initialize;
    this_repr->copy_to = copy_to;
    this_repr->serialize = serialize;
    this_repr->deserialize = deserialize;
    this_repr->serialize_repr_data = serialize_repr_data;
    this_repr->deserialize_repr_data = deserialize_repr_data;
    this_repr->gc_free = gc_free;
    this_repr->get_storage_spec = get_storage_spec;
    this_repr->pos_funcs = mem_allocate_zeroed_typed(REPROps_Positional);
    this_repr->pos_funcs->at_pos_native = at_pos_native;
    this_repr->pos_funcs->at_pos_boxed = at_pos_boxed;
    this_repr->pos_funcs->bind_pos_native = bind_pos_native;
    this_repr->pos_funcs->bind_pos_boxed = bind_pos_boxed;
    this_repr->pos_funcs->push_boxed = push_boxed;
    this_repr->pos_funcs->pop_boxed = pop_boxed;
    this_repr->pos_funcs->unshift_boxed = unshift_boxed;
    this_repr->pos_funcs->shift_boxed = shift_boxed;
    return this_repr;
}
