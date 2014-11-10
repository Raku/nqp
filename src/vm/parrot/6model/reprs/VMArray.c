#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "VMArray.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Wrapper functions to set and get an array offset to a value for the various
 * types we support. */
static void set_pos_int(PARROT_INTERP, VMArrayBody *body, VMArrayREPRData *repr_data, INTVAL offset, INTVAL val) {
    if (repr_data->elem_is_unsigned) {
        switch(repr_data->elem_size) {
        case 8:
            ((Parrot_UInt1 *) body->slots)[offset] = (Parrot_UInt1) val;
            break;
        case 16:
            ((Parrot_UInt2 *) body->slots)[offset] = (Parrot_UInt2) val;
            break;
        case 32:
            ((Parrot_UInt4 *) body->slots)[offset] = (Parrot_UInt4) val;
            break;
        case 64:
            ((Parrot_UInt8 *) body->slots)[offset] = (Parrot_UInt8) val;
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "VMArray: Only supports 8, 16, 32 and 64 bit integers.");
        }
    }
    else {
        switch(repr_data->elem_size) {
        case 8:
            ((Parrot_Int1 *) body->slots)[offset] = (Parrot_Int1) val;
            break;
        case 16:
            ((Parrot_Int2 *) body->slots)[offset] = (Parrot_Int2) val;
            break;
        case 32:
            ((Parrot_Int4 *) body->slots)[offset] = (Parrot_Int4) val;
            break;
        case 64:
            ((Parrot_Int8 *) body->slots)[offset] = (Parrot_Int8) val;
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "VMArray: Only supports 8, 16, 32 and 64 bit integers.");
        }
    }
}

static void set_pos_float(PARROT_INTERP, VMArrayBody *body, VMArrayREPRData *repr_data, INTVAL offset, FLOATVAL val) {
    switch(repr_data->elem_size) {
    case 32:
        ((Parrot_Float4 *) body->slots)[offset] = (Parrot_Float4) val;
        break;
    case 64:
        ((Parrot_Float8 *) body->slots)[offset] = (Parrot_Float8) val;
        break;
    default:
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "VMArray: Only supports 32 and 64 bit floats.");
    }
}

static void set_pos_pmc(PMC **slots, INTVAL offset, PMC *obj) { slots[offset] = obj; }

/* Convenience method to set a given offset to a sensible NULL value. */
static void null_pos(PARROT_INTERP, VMArrayBody *body, VMArrayREPRData *repr_data, INTVAL offset) {
    if(!repr_data->elem_size) {
        set_pos_pmc((PMC **) body->slots, offset, PMCNULL);
    }
    else if(repr_data->elem_kind == STORAGE_SPEC_BP_INT) {
        set_pos_int(interp, body, repr_data, offset, 0);
    }
    else if(repr_data->elem_kind == STORAGE_SPEC_BP_NUM) {
        set_pos_float(interp, body, repr_data, offset, 0.0);
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
            null_pos(interp, body, repr_data, elems);
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
    body->ssize = ssize;
    body->slots = slots;

    /* Fill out any unused slots with PMCNULL pointers */
    while (elems < ssize) {
        null_pos(interp, body, repr_data, elems);
        elems++;
    }
}

static INTVAL get_pos_int(PARROT_INTERP, VMArrayBody *body, VMArrayREPRData *repr_data, INTVAL offset) {
    if (repr_data->elem_is_unsigned) {
        switch(repr_data->elem_size) {
        case 8:
            return ((Parrot_UInt1 *) body->slots)[offset];
        case 16:
            return ((Parrot_UInt2 *) body->slots)[offset];
        case 32:
            return ((Parrot_UInt4 *) body->slots)[offset];
        case 64:
            return ((Parrot_UInt8 *) body->slots)[offset];
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "VMArray: Only supports 8, 16, 32 and 64 bit integers.");
        }
    }
    else {
        switch(repr_data->elem_size) {
        case 8:
            return ((Parrot_Int1 *) body->slots)[offset];
        case 16:
            return ((Parrot_Int2 *) body->slots)[offset];
        case 32:
            return ((Parrot_Int4 *) body->slots)[offset];
        case 64:
            return ((Parrot_Int8 *) body->slots)[offset];
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "VMArray: Only supports 8, 16, 32 and 64 bit integers.");
        }
    }
}

static FLOATVAL get_pos_float(PARROT_INTERP, VMArrayBody *body, VMArrayREPRData *repr_data, INTVAL offset) {
    switch(repr_data->elem_size) {
    case 32:
        return ((Parrot_Float4 *) body->slots)[offset];
    case 64:
        return ((Parrot_Float8 *) body->slots)[offset];
    default:
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "VMArray: Only supports 32 and 64 bit floats.");
    }
}

static PMC *get_pos_pmc(PMC **slots, INTVAL offset) { return slots[offset]; }

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
        storage_spec spec;
        REPR(type)->get_storage_spec(interp, STABLE(type), &spec);
        repr_data->elem_type = type;

        if(spec.inlineable == STORAGE_SPEC_INLINED &&
                (spec.boxed_primitive == STORAGE_SPEC_BP_INT ||
                 spec.boxed_primitive == STORAGE_SPEC_BP_NUM)) {
            repr_data->elem_size = spec.bits;
            repr_data->elem_kind = spec.boxed_primitive;
            if (spec.boxed_primitive == STORAGE_SPEC_BP_INT)
                repr_data->elem_is_unsigned = spec.is_unsigned;
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
    UNUSED(interp);
    UNUSED(st);
    UNUSED(data);
    /* Nothing to do here. */
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    VMArrayBody *src_body = (VMArrayBody *)src;
    VMArrayBody *dest_body = (VMArrayBody *)dest;
    UNUSED(interp);
    UNUSED(st);
    /* Nothing to do yet. */
}

static void serialize(PARROT_INTERP, STable *st, void *data, SerializationWriter *writer) {
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;
    INTVAL i;

    writer->write_int(interp, writer, body->elems);
    for(i = 0; i < body->elems; i++) {
        INTVAL offset = body->start + i;
        if(repr_data->elem_size && repr_data->elem_kind == STORAGE_SPEC_BP_INT) {
            writer->write_int(interp, writer, get_pos_int(interp, body, repr_data, offset));
        }
        else if(repr_data->elem_size && repr_data->elem_kind == STORAGE_SPEC_BP_NUM) {
            writer->write_num(interp, writer, get_pos_float(interp, body, repr_data, offset));
        }
        else {
            writer->write_ref(interp, writer, get_pos_pmc((PMC **) body->slots, offset));
        }
    }
}

static void deserialize(PARROT_INTERP, STable *st, void *data, SerializationReader *reader) {
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;
    INTVAL elems = reader->read_int(interp, reader);
    INTVAL i;

    ensure_size(interp, body, repr_data, elems);
    body->elems = elems;

    for(i = 0; i < body->elems; i++) {
        INTVAL offset = body->start + i;
        if(repr_data->elem_size && repr_data->elem_kind == STORAGE_SPEC_BP_INT) {
            set_pos_int(interp, body, repr_data, offset, reader->read_int(interp, reader));
        }
        else if(repr_data->elem_size && repr_data->elem_kind == STORAGE_SPEC_BP_NUM) {
            set_pos_float(interp, body, repr_data, offset, reader->read_num(interp, reader));
        }
        else {
            set_pos_pmc((PMC **) body->slots, offset, reader->read_ref(interp, reader));
        }
    }
}

static void serialize_repr_data(PARROT_INTERP, STable *st, SerializationWriter *writer) {
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;
    writer->write_ref(interp, writer, repr_data->elem_type);
}

static void deserialize_repr_data(PARROT_INTERP, STable *st, SerializationReader *reader) {
    VMArrayREPRData *repr_data = mem_allocate_zeroed_typed(VMArrayREPRData);
    PMC *type = reader->read_ref(interp, reader);

    repr_data->elem_type = type;
    if(!PMC_IS_NULL(type)) {
        storage_spec spec;
        REPR(type)->get_storage_spec(interp, STABLE(type), &spec);
        if(spec.inlineable == STORAGE_SPEC_INLINED &&
                (spec.boxed_primitive == STORAGE_SPEC_BP_INT ||
                 spec.boxed_primitive == STORAGE_SPEC_BP_NUM)) {
            repr_data->elem_size = spec.bits;
            repr_data->elem_kind = spec.boxed_primitive;
            if (spec.boxed_primitive == STORAGE_SPEC_BP_INT)
                repr_data->elem_is_unsigned = spec.is_unsigned;
        }
    }

    st->REPR_data = repr_data;
}

/* Gets the storage specification for this representation. */
static void get_storage_spec(PARROT_INTERP, STable *st, storage_spec *spec) {
    UNUSED(interp);
    UNUSED(st);
    spec->inlineable      = STORAGE_SPEC_REFERENCE;
    spec->boxed_primitive = STORAGE_SPEC_BP_NONE;
    spec->can_box         = 0;
    spec->bits            = sizeof(void *) * 8;
    spec->align           = ALIGNOF1(void *);
}

PARROT_DOES_NOT_RETURN static void die_no_native(PARROT_INTERP, const char *operation) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "VMArray: Can't perform native %s when containing boxed types", operation);
}

PARROT_DOES_NOT_RETURN static void die_no_boxed(PARROT_INTERP, const char *operation) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "VMArray: Can't perform boxed %s when containing native types", operation);
}

static void gc_mark(PARROT_INTERP, STable *st, void *data) {
    /* TODO: If we contain PMC, mark all of them that are non-NULL. */
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;
    INTVAL i;

    /* No need to do anything if we contain native types. */
    if(repr_data->elem_size)
        return;

    /* Mark all non-null objects in the array. */
    for(i = body->start; i < body->start + body->elems ; i++) {
        PMC *obj = get_pos_pmc((PMC **) body->slots, i);
        if(!PMC_IS_NULL(obj))
            Parrot_gc_mark_PMC_alive(interp, obj);
    }
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    VMArrayInstance *instance = (VMArrayInstance *) PMC_data(obj);
    PMC_data(obj) = NULL;
    UNUSED(interp);
    if(instance->body.slots)
        mem_sys_free(instance->body.slots);
    mem_sys_free(instance);
}

/* This Parrot-specific addition to the API is used to mark a repr's
 * per-type data. */
static void gc_mark_repr_data(PARROT_INTERP, STable *st) {
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;
    if (repr_data)
        Parrot_gc_mark_PMC_alive(interp, repr_data->elem_type);
}

/* This Parrot-specific addition to the API is used to free a repr instance. */
static void gc_free_repr_data(PARROT_INTERP, STable *st) {
    UNUSED(interp);
    if (st->REPR_data) {
        free(st->REPR_data);
        st->REPR_data = NULL;
    }
}


static void at_pos_native(PARROT_INTERP, STable *st, void *data, INTVAL index, NativeValue *value) {
    VMArrayBody *body = (VMArrayBody *) data;
    VMArrayREPRData *repr_data = (VMArrayREPRData *) st->REPR_data;

    if(!repr_data->elem_size)
        die_no_native(interp, "get");

    if(value->type == NATIVE_VALUE_STRING)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "VMArray: Can't get unboxed string value");

    if (index >= body->elems) {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_OUT_OF_BOUNDS,
            "VMArray: index out of bounds");
    }

    if(repr_data->elem_kind == STORAGE_SPEC_BP_INT) {
        value->value.intval = get_pos_int(interp, body, repr_data, body->start + index);
    }
    else if(repr_data->elem_kind == STORAGE_SPEC_BP_NUM) {
        value->value.floatval = get_pos_float(interp, body, repr_data, body->start + index);
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
        set_pos_int(interp, body, repr_data, body->start + index, value->value.intval);
    }
    else if(repr_data->elem_kind == STORAGE_SPEC_BP_NUM) {
        set_pos_float(interp, body, repr_data, body->start + index, value->value.floatval);
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

static STable * get_elem_stable(PARROT_INTERP, STable *st) {
    VMArrayREPRData *repr_data = (VMArrayREPRData *)st->REPR_data;
    UNUSED(interp);
    return STABLE(repr_data->elem_type);
}

static INTVAL elems(PARROT_INTERP, STable *st, void *data) {
    VMArrayBody *body = (VMArrayBody *) data;
    UNUSED(interp);
    UNUSED(st);
    return body->elems;
}

/* Initializes the VMArray representation. */
REPROps * VMArray_initialize(PARROT_INTERP) {
    UNUSED(interp);
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
    this_repr->gc_mark_repr_data = gc_mark_repr_data;
    this_repr->gc_free_repr_data = gc_free_repr_data;
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
    this_repr->pos_funcs->get_elem_stable = get_elem_stable;
    this_repr->elems = elems;
    return this_repr;
}
