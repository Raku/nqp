#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "../storage_spec.h"
#include "dyncall_reprs.h"
#include "CArray.h"
#include "CStruct.h"
#include "CPointer.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Some functions we have to get references to. */
static wrap_object_t   wrap_object_func;
static create_stable_t create_stable_func;

/* Gets size and type information to put it into the REPR data. */
static void fill_repr_data(PARROT_INTERP, STable *st) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    PMC *old_ctx, *cappy;
    storage_spec ss;
    INTVAL type_id;

    /* Look up "of" method. */
    PMC *meth = VTABLE_find_method(interp, st->WHAT,
        Parrot_str_new_constant(interp, "of"));
    if (PMC_IS_NULL(meth))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "CArray representation expects an 'of' method, specifying the element type");

    /* Call it to get the type. */
    old_ctx = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    cappy   = Parrot_pmc_new(interp, enum_class_CallContext);
    VTABLE_push_pmc(interp, cappy, st->WHAT);
    Parrot_pcc_invoke_from_sig_object(interp, meth, cappy);
    cappy = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), old_ctx);
    repr_data->elem_type = VTABLE_get_pmc_keyed_int(interp, cappy, 0);
    
    /* Ensure we got a type. */
    if (PMC_IS_NULL(repr_data->elem_type))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "CArray representation expects an 'of' method, specifying the element type");

    /* What we do next depends on what kind of type we have. */
    REPR(repr_data->elem_type)->get_storage_spec(interp, STABLE(repr_data->elem_type), &ss);
    type_id = REPR(repr_data->elem_type)->ID;
    if (ss.boxed_primitive == STORAGE_SPEC_BP_INT) {
        if (ss.bits == 8 || ss.bits == 16 || ss.bits == 32 || ss.bits == 64)
            repr_data->elem_size = ss.bits / 8;
        else
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "CArray representation can only have 8, 16, 32 or 64 bit integer elements");
        repr_data->elem_kind = CARRAY_ELEM_KIND_NUMERIC;
    }
    else if (ss.boxed_primitive == STORAGE_SPEC_BP_NUM) {
        if (ss.bits == 32 || ss.bits == 64)
            repr_data->elem_size = ss.bits / 8;
        else
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "CArray representation can only have 32 or 64 bit floating point elements");
        repr_data->elem_kind = CARRAY_ELEM_KIND_NUMERIC;
    }
    else if (ss.can_box & STORAGE_SPEC_CAN_BOX_STR) {
        repr_data->elem_size = sizeof(PMC *);
        repr_data->elem_kind = CARRAY_ELEM_KIND_STRING;
    }
    else if (type_id == get_ca_repr_id()) {
        repr_data->elem_kind = CARRAY_ELEM_KIND_CARRAY;
        repr_data->elem_size = sizeof(void *);
    }
    else if (type_id == get_cs_repr_id()) {
        repr_data->elem_kind = CARRAY_ELEM_KIND_CSTRUCT;
        repr_data->elem_size = sizeof(void *);
    }
    else if (type_id == get_cp_repr_id()) {
        repr_data->elem_kind = CARRAY_ELEM_KIND_CPOINTER;
        repr_data->elem_size = sizeof(void *);
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "CArray may only contain native integers and numbers, strings, C Structs or C Pointers");
    }
}

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC * type_object_for(PARROT_INTERP, PMC *HOW) {
    /* Create new object instance. */
    CArrayInstance *obj = mem_allocate_zeroed_typed(CArrayInstance);

    /* Build an STable. */
    PMC *st_pmc = create_stable_func(interp, this_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);
    
    /* Create REPR data structure and hand it off the STable. */
    st->REPR_data = mem_allocate_zeroed_typed(CArrayREPRData);

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
    UNUSED(interp);
    UNUSED(st);
    UNUSED(repr_info);
    /* TODO */
}

/* Creates a new instance based on the type object. */
static PMC * allocate(PARROT_INTERP, STable *st) {
    CArrayInstance *obj       = mem_allocate_zeroed_typed(CArrayInstance);
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    obj->common.stable = st->stable_pmc;
    if (!repr_data->elem_size)
        fill_repr_data(interp, st);
    return wrap_object_func(interp, obj);
}

/* Initialize a new instance. */
static void initialize(PARROT_INTERP, STable *st, void *data) {
    /* If we're initialized, presumably we're going to be
     * managing the memory in this array ourself. */
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody *body = (CArrayBody *)data;
    UNUSED(interp);
    body->storage = mem_sys_allocate(4 * repr_data->elem_size);
    body->managed = 1;
    /* Don't need child_objs for numerics or strings. */
    if (repr_data->elem_kind == CARRAY_ELEM_KIND_NUMERIC)
        body->child_objs = NULL;
    else
        body->child_objs = (PMC **) mem_sys_allocate_zeroed(4*sizeof(PMC *));
    body->allocated = 4;
    body->elems = 0;
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *src_body  = (CArrayBody *)src;
    CArrayBody     *dest_body = (CArrayBody *)dest;
    UNUSED(interp);
    if (src_body->managed) {
        INTVAL alsize = src_body->allocated * repr_data->elem_size;
        dest_body->storage = mem_sys_allocate(alsize);
        memcpy(dest_body->storage, src_body->storage, alsize);
    }
    else {
        dest_body->storage = src_body->storage;
    }
    dest_body->managed = src_body->managed;
    dest_body->allocated = src_body->allocated;
    dest_body->elems = src_body->elems;
}

/* This is called to do any cleanup of resources when an object gets
 * embedded inside another one. Never called on a top-level object. */
static void gc_cleanup(PARROT_INTERP, STable *st, void *data) {
    CArrayBody *body = (CArrayBody *)data;
    UNUSED(interp);
    UNUSED(st);
    if (body->managed) {
        mem_sys_free(body->storage);
        if (body->child_objs)
            mem_sys_free(body->child_objs);
    }
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    gc_cleanup(interp, STABLE(obj), OBJECT_BODY(obj));
    mem_sys_free(PMC_data(obj));
    PMC_data(obj) = NULL;
}

static void gc_mark(PARROT_INTERP, STable *st, void *data) {
    CArrayREPRData *repr_data = (CArrayREPRData *) st->REPR_data;
    CArrayBody *body = (CArrayBody *)data;
    INTVAL i;

    /* Don't traverse child_objs list if there isn't one. */
    if (!body->child_objs) return;

    for (i = 0; i < body->elems; i++)
        if (body->child_objs[i])
            Parrot_gc_mark_PMC_alive(interp, body->child_objs[i]);
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

PARROT_DOES_NOT_RETURN
static void die_pos_nyi(PARROT_INTERP) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "CArray representation does not fully positional storage yet");
}
static void expand(PARROT_INTERP, CArrayREPRData *repr_data, CArrayBody *body, INTVAL min_size) {
    INTVAL is_complex = 0;
    INTVAL next_size = body->allocated? 2 * body->allocated: 4;
    UNUSED(interp);
    if (min_size > next_size)
        next_size = min_size;
    if (body->managed)
        body->storage = mem_sys_realloc(body->storage, next_size * repr_data->elem_size);

    is_complex = (repr_data->elem_kind == CARRAY_ELEM_KIND_CARRAY
               || repr_data->elem_kind == CARRAY_ELEM_KIND_CPOINTER
               || repr_data->elem_kind == CARRAY_ELEM_KIND_CSTRUCT
               || repr_data->elem_kind == CARRAY_ELEM_KIND_STRING);
    if (is_complex)
        body->child_objs = (PMC **) mem_sys_realloc_zeroed(body->child_objs, next_size * sizeof(PMC *), body->allocated * sizeof(PMC *));
    body->allocated = next_size;
}
static void at_pos_native(PARROT_INTERP, STable *st, void *data, INTVAL index, NativeValue *value) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    STable         *type_st   = STABLE(repr_data->elem_type);
    void           *ptr       = ((char *)body->storage) + index * repr_data->elem_size;
    if (body->managed && index >= body->elems) {
        switch (value->type) {
        case NATIVE_VALUE_INT:
            value->value.intval = 0;
            return;
        case NATIVE_VALUE_FLOAT: {
            double x = 0.0;
            value->value.floatval = 0.0/x;
            return;
        }
        case NATIVE_VALUE_STRING:
            value->value.stringval = STRINGNULL;
            return;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Bad value of NativeValue.type: %d", value->type);
        }
    }
    switch (repr_data->elem_kind) {
        case CARRAY_ELEM_KIND_NUMERIC:
            switch (value->type) {
            case NATIVE_VALUE_INT:
                value->value.intval = type_st->REPR->box_funcs->get_int(interp, type_st, ptr);
                break;
            case NATIVE_VALUE_FLOAT:
                value->value.floatval = type_st->REPR->box_funcs->get_num(interp, type_st, ptr);
                break;
            case NATIVE_VALUE_STRING:
                value->value.stringval = type_st->REPR->box_funcs->get_str(interp, type_st, ptr);
                break;
            default:
                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "Bad value of NativeValue.type: %d", value->type);
            }
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "at_pos_native on CArray REPR only usable with numeric element types");
    }
}
static PMC * make_object(PARROT_INTERP, STable *st, void *data) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    PMC            *retval;

    switch (repr_data->elem_kind) {
        case CARRAY_ELEM_KIND_STRING:
        {
            char   *elem = (char *) data;
            STRING *str  = Parrot_str_new_init(interp, elem, strlen(elem), Parrot_utf8_encoding_ptr, 0);
            PMC    *obj  = REPR(repr_data->elem_type)->allocate(interp, STABLE(repr_data->elem_type));
            REPR(obj)->initialize(interp, STABLE(obj), OBJECT_BODY(obj));
            REPR(obj)->box_funcs->set_str(interp, STABLE(obj), OBJECT_BODY(obj), str);
            PARROT_GC_WRITE_BARRIER(interp, obj);
            retval = obj;
            break;
        }
        case CARRAY_ELEM_KIND_CARRAY:
            retval = make_carray_result(interp, repr_data->elem_type, data);
            break;
        case CARRAY_ELEM_KIND_CPOINTER:
            retval = make_cpointer_result(interp, repr_data->elem_type, data);
            break;
        case CARRAY_ELEM_KIND_CSTRUCT:
            retval = make_cstruct_result(interp, repr_data->elem_type, data);
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Fatal error: unknown CArray elem_kind (%d) in make_object", repr_data->elem_kind);
    }

    return retval;
}
static PMC * at_pos_boxed(PARROT_INTERP, STable *st, void *data, INTVAL index) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    void **storage            = (void **) body->storage;
    PMC *obj;

    switch (repr_data->elem_kind) {
        case CARRAY_ELEM_KIND_STRING:
        case CARRAY_ELEM_KIND_CARRAY:
        case CARRAY_ELEM_KIND_CPOINTER:
        case CARRAY_ELEM_KIND_CSTRUCT:
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "at_pos_boxed on CArray REPR not usable with this element type");
    }

    if (body->managed && index >= body->elems)
        return repr_data->elem_type;

    if (body->managed) {
        /* We manage this array. */
        if (index < body->elems && body->child_objs[index])
            return body->child_objs[index];
        else if (index < body->elems) {
            /* Someone's changed the array since the cached object was
             * created. Recreate it. */
            obj = make_object(interp, st, storage[index]);
            body->child_objs[index] = obj;
            return obj;
        }
        else
            return repr_data->elem_type;
    }
    else {
        /* Array comes from C. */
        /* Enlarge child_objs if needed. */
        if (index >= body->allocated)
            expand(interp, repr_data, body, index+1);
        if (index >= body->elems)
            body->elems = index + 1;

        /* We've already fetched this object. Return that. */
        if (storage[index] && body->child_objs[index]) {
            return body->child_objs[index];
        }
        /* No cached object, but non-NULL pointer in array. Construct object,
         * put it in the cache and return it. */
        else if (storage[index]) {
            obj = make_object(interp, st, storage[index]);
            body->child_objs[index] = obj;
            return obj;
        }
        /* NULL pointer in the array, just return the type object. */
        else {
            return repr_data->elem_type;
        }
    }
}
static void bind_pos_native(PARROT_INTERP, STable *st, void *data, INTVAL index, NativeValue *value) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    STable         *type_st   = STABLE(repr_data->elem_type);
    void           *ptr;
    if (body->managed && index >= body->allocated)
        expand(interp, repr_data, body, index + 1);
    if (index >= body->elems)
        body->elems = index + 1;
    ptr = ((char *)body->storage) + index * repr_data->elem_size;
    switch (repr_data->elem_kind) {
        case CARRAY_ELEM_KIND_NUMERIC:
            switch (value->type) {
            case NATIVE_VALUE_INT:
                type_st->REPR->box_funcs->set_int(interp, type_st, ptr, value->value.intval);
                break;
            case NATIVE_VALUE_FLOAT:
                type_st->REPR->box_funcs->set_num(interp, type_st, ptr, value->value.floatval);
                break;
            case NATIVE_VALUE_STRING:
                type_st->REPR->box_funcs->set_str(interp, type_st, ptr, value->value.stringval);
                break;
            default:
                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "Bad value of NativeValue.type: %d", value->type);
            }
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "bind_pos_native on CArray REPR only usable with numeric element types");
    }
}
static void bind_pos_boxed(PARROT_INTERP, STable *st, void *data, INTVAL index, PMC *obj) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    void **storage;
    void *cptr; /* Pointer to C data. */

    /* Enlarge child_objs if needed. */
    if (index >= body->allocated)
        expand(interp, repr_data, body, index+1);
    if (index >= body->elems)
        body->elems = index + 1;

    storage = (void **) body->storage;

    /* Make sure the type isn't something we can't handle. */
    switch (repr_data->elem_kind) {
        case CARRAY_ELEM_KIND_STRING:
        case CARRAY_ELEM_KIND_CARRAY:
        case CARRAY_ELEM_KIND_CSTRUCT:
        case CARRAY_ELEM_KIND_CPOINTER:
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "bind_pos_boxed on CArray REPR not usable with this element type");
    }

    if (IS_CONCRETE(obj)) {
        switch (repr_data->elem_kind) {
            case CARRAY_ELEM_KIND_STRING:
            {
                STRING *str  = REPR(obj)->box_funcs->get_str(interp, STABLE(obj), OBJECT_BODY(obj));
                cptr = Parrot_str_to_encoded_cstring(interp, str, Parrot_utf8_encoding_ptr);
                break;
            }
            case CARRAY_ELEM_KIND_CARRAY:
                cptr = ((CArrayBody *) OBJECT_BODY(obj))->storage;
                break;
            case CARRAY_ELEM_KIND_CSTRUCT:
                cptr = ((CStructBody *) OBJECT_BODY(obj))->cstruct;
                break;
            case CARRAY_ELEM_KIND_CPOINTER:
                cptr = ((CPointerBody *) OBJECT_BODY(obj))->ptr;
                break;
            default:
                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "Fatal error: unknown CArray elem_kind (%d) in bind_pos_boxed", repr_data->elem_kind);
        }
    }
    else {
        cptr = NULL;
    }

    body->child_objs[index] = obj;
    storage[index] = cptr;
}
static STable * get_elem_stable(PARROT_INTERP, STable *st) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    UNUSED(interp);
    return STABLE(repr_data->elem_type);
}
static void push_boxed(PARROT_INTERP, STable *st, void *data, PMC *obj) {
    UNUSED(st);
    UNUSED(data);
    UNUSED(obj);
    die_pos_nyi(interp);
}
static PMC * pop_boxed(PARROT_INTERP, STable *st, void *data) {
    UNUSED(st);
    UNUSED(data);
    die_pos_nyi(interp);
}
static void unshift_boxed(PARROT_INTERP, STable *st, void *data, PMC *obj) {
    UNUSED(st);
    UNUSED(data);
    UNUSED(obj);
    die_pos_nyi(interp);
}
static PMC * shift_boxed(PARROT_INTERP, STable *st, void *data) {
    UNUSED(st);
    UNUSED(data);
    die_pos_nyi(interp);
}
static INTVAL elems(PARROT_INTERP, STable *st, void *data) {
    CArrayBody     *body      = (CArrayBody *)data;
    UNUSED(st);
    if (body->managed)
        return body->elems;
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "Don't know how many elements a C array returned from a library has");
}

/* Serializes the REPR data. */
static void serialize_repr_data(PARROT_INTERP, STable *st, SerializationWriter *writer) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    UNUSED(interp);
    writer->write_int(interp, writer, repr_data->elem_size);
    writer->write_ref(interp, writer, repr_data->elem_type);
    writer->write_int(interp, writer, repr_data->elem_kind);
}

/* Deserializes the REPR data. */
static void deserialize_repr_data(PARROT_INTERP, STable *st, SerializationReader *reader) {
    CArrayREPRData *repr_data = (CArrayREPRData *) mem_sys_allocate_zeroed(sizeof(CArrayREPRData));
    UNUSED(interp);
    st->REPR_data = (CArrayREPRData *) repr_data;
    repr_data->elem_size = reader->read_int(interp, reader);
    repr_data->elem_type = reader->read_ref(interp, reader);
    repr_data->elem_kind = reader->read_int(interp, reader);
}

/* Initializes the CArray representation. */
REPROps * CArray_initialize(PARROT_INTERP,
        wrap_object_t wrap_object_func_ptr,
        create_stable_t create_stable_func_ptr) {
    UNUSED(interp);
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
    this_repr->gc_cleanup = gc_cleanup;
    this_repr->gc_free = gc_free;
    this_repr->gc_mark = gc_mark;
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
    this_repr->serialize_repr_data = serialize_repr_data;
    this_repr->deserialize_repr_data = deserialize_repr_data;
    
    return this_repr;
}
