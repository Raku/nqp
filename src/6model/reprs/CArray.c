#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "../storage_spec.h"
#include "CArray.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Some functions we have to get references to. */
static PMC * (* wrap_object_func) (PARROT_INTERP, void *obj);
static PMC * (* create_stable_func) (PARROT_INTERP, REPROps *REPR, PMC *HOW);

/* Gets size and type information to put it into the REPR data. */
static void fill_repr_data(PARROT_INTERP, STable *st) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    PMC *old_ctx, *cappy;
    storage_spec ss;

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
    ss = REPR(repr_data->elem_type)->get_storage_spec(interp, STABLE(repr_data->elem_type));
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
    /* XXX TODO: structs, pointers, other arrays */
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
    body->storage = mem_sys_allocate(4 * repr_data->elem_size);
    body->allocated = 4;
    body->elems = 0;
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *src_body  = (CArrayBody *)src;
    CArrayBody     *dest_body = (CArrayBody *)dest;
    if (src_body->allocated) {
        INTVAL alsize = src_body->allocated * repr_data->elem_size;
        dest_body->storage = mem_sys_allocate(alsize);
        memcpy(dest_body->storage, src_body->storage, alsize);
    }
    else {
        dest_body->storage = src_body->storage;
    }
    dest_body->allocated = src_body->allocated;
    dest_body->elems = src_body->elems;
}

/* This is called to do any cleanup of resources when an object gets
 * embedded inside another one. Never called on a top-level object. */
static void gc_cleanup(PARROT_INTERP, STable *st, void *data) {
    CArrayBody *body = (CArrayBody *)data;
    if (body->allocated)
        mem_sys_free(body->storage);
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    gc_cleanup(interp, STABLE(obj), OBJECT_BODY(obj));
    mem_sys_free(PMC_data(obj));
    PMC_data(obj) = NULL;
}

/* Gets the storage specification for this representation. */
static storage_spec get_storage_spec(PARROT_INTERP, STable *st) {
    storage_spec spec;
    spec.inlineable = STORAGE_SPEC_REFERENCE;
    spec.boxed_primitive = STORAGE_SPEC_BP_NONE;
    spec.can_box = 0;
    return spec;
}

PARROT_DOES_NOT_RETURN
static void die_idx_nyi(PARROT_INTERP) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "CArray representation does not fully indexed storage yet");
}
static void expand(PARROT_INTERP, CArrayREPRData *repr_data, CArrayBody *body, INTVAL min_size) {
    INTVAL next_size = 2 * body->allocated;
    if (min_size > next_size)
        next_size = min_size;
    body->storage = mem_sys_realloc(body->storage, next_size * repr_data->elem_size);
    body->allocated = next_size;
}
static void * at_pos_ref(PARROT_INTERP, STable *st, void *data, INTVAL index) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    if (body->allocated && index >= body->elems)
        return NULL;
    switch (repr_data->elem_kind) {
        case CARRAY_ELEM_KIND_NUMERIC:
            return ((char *)body->storage) + index * repr_data->elem_size;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "at_pos_ref on CArray REPR only usable with numeric element types");
    }
}
static PMC * at_pos_boxed(PARROT_INTERP, STable *st, void *data, INTVAL index) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    if (body->allocated && index >= body->elems)
        return repr_data->elem_type;
    switch (repr_data->elem_kind) {
        case CARRAY_ELEM_KIND_STRING:
        {
            char *elem = *((char **)(((char *)body->storage) + index * repr_data->elem_size));
            if (elem) {
                STRING *str = Parrot_str_new_init(interp, elem, strlen(elem), Parrot_utf8_encoding_ptr, 0);
                PMC    *res = REPR(repr_data->elem_type)->allocate(interp, STABLE(repr_data->elem_type));
                REPR(res)->initialize(interp, STABLE(res), OBJECT_BODY(res));
                REPR(res)->box_funcs->set_str(interp, STABLE(res), OBJECT_BODY(res), str);
                PARROT_GC_WRITE_BARRIER(interp, res);
                return res;
            }
            else
                return repr_data->elem_type;
            break;
        }
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "at_pos_boxed on CArray REPR not usable with this element type");
    }
}
static void bind_pos_ref(PARROT_INTERP, STable *st, void *data, INTVAL index, void *value) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    STable         *type_st   = STABLE(repr_data->elem_type);
    if (body->allocated && index >= body->allocated)
        expand(interp, repr_data, body, index + 1);
    if (index >= body->elems)
        body->elems = index + 1;
    switch (repr_data->elem_kind) {
        case CARRAY_ELEM_KIND_NUMERIC:
            type_st->REPR->copy_to(interp, type_st, value, ((char *)body->storage) + index * repr_data->elem_size);
            break;
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "bind_pos_ref on CArray REPR only usable with numeric element types");
    }
}
static void bind_pos_boxed(PARROT_INTERP, STable *st, void *data, INTVAL index, PMC *obj) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    if (body->allocated && index >= body->allocated)
        expand(interp, repr_data, body, index + 1);
    if (index >= body->elems)
        body->elems = index + 1;
    switch (repr_data->elem_kind) {
        case CARRAY_ELEM_KIND_STRING:
        {
            STRING *str  = REPR(obj)->box_funcs->get_str(interp, STABLE(obj), OBJECT_BODY(obj));
            char   *elem = Parrot_str_to_encoded_cstring(interp, str, Parrot_utf8_encoding_ptr);
            *((char **)(((char *)body->storage) + index * repr_data->elem_size)) = elem;
            break;
        }
        default:
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "bind_pos_boxed on CArray REPR not usable with this element type");
    }
}
static INTVAL elems(PARROT_INTERP, STable *st, void *data) {
    CArrayBody     *body      = (CArrayBody *)data;
    if (body->allocated)
        return body->elems;
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "Don't know how many elements a C array returned from a library has");
}
static void preallocate(PARROT_INTERP, STable *st, void *data, INTVAL count) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    die_idx_nyi(interp);
}
static void trim_to(PARROT_INTERP, STable *st, void *data, INTVAL count) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    die_idx_nyi(interp);
}
static void make_hole(PARROT_INTERP, STable *st, void *data, INTVAL at_index, INTVAL count) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    die_idx_nyi(interp);
}
static void delete_elems(PARROT_INTERP, STable *st, void *data, INTVAL at_index, INTVAL count) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    CArrayBody     *body      = (CArrayBody *)data;
    die_idx_nyi(interp);
}
static STable * get_elem_stable(PARROT_INTERP, STable *st) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    return STABLE(repr_data->elem_type);
}

/* Serializes the REPR data. */
static void serialize_repr_data(PARROT_INTERP, STable *st, SerializationWriter *writer) {
    CArrayREPRData *repr_data = (CArrayREPRData *)st->REPR_data;
    if (!repr_data->elem_size)
        fill_repr_data(interp, st);
    writer->write_int(interp, writer, repr_data->elem_size);
    writer->write_ref(interp, writer, repr_data->elem_type);
    writer->write_int(interp, writer, repr_data->elem_kind);
}

/* Deserializes the REPR data. */
static void deserialize_repr_data(PARROT_INTERP, STable *st, SerializationReader *reader) {
    CArrayREPRData *repr_data = st->REPR_data = mem_sys_allocate_zeroed(sizeof(CArrayREPRData));
    repr_data->elem_size = reader->read_int(interp, reader);
    repr_data->elem_type = reader->read_ref(interp, reader);
    repr_data->elem_kind = reader->read_int(interp, reader);
}

/* Initializes the CArray representation. */
REPROps * CArray_initialize(PARROT_INTERP,
        PMC * (* wrap_object_func_ptr) (PARROT_INTERP, void *obj),
        PMC * (* create_stable_func_ptr) (PARROT_INTERP, REPROps *REPR, PMC *HOW)) {
    /* Stash away functions passed wrapping functions. */
    wrap_object_func = wrap_object_func_ptr;
    create_stable_func = create_stable_func_ptr;

    /* Allocate and populate the representation function table. */
    this_repr = mem_allocate_zeroed_typed(REPROps);
    this_repr->type_object_for = type_object_for;
    this_repr->allocate = allocate;
    this_repr->initialize = initialize;
    this_repr->copy_to = copy_to;
    this_repr->gc_cleanup = gc_cleanup;
    this_repr->gc_free = gc_free;
    this_repr->get_storage_spec = get_storage_spec;
    this_repr->idx_funcs = mem_allocate_zeroed_typed(REPROps_Indexing);
    this_repr->idx_funcs->at_pos_ref = at_pos_ref;
    this_repr->idx_funcs->at_pos_boxed = at_pos_boxed;
    this_repr->idx_funcs->bind_pos_ref = bind_pos_ref;
    this_repr->idx_funcs->bind_pos_boxed = bind_pos_boxed;
    this_repr->idx_funcs->elems = elems;
    this_repr->idx_funcs->preallocate = preallocate;
    this_repr->idx_funcs->trim_to = trim_to;
    this_repr->idx_funcs->make_hole = make_hole;
    this_repr->idx_funcs->delete_elems = delete_elems;
    this_repr->idx_funcs->get_elem_stable = get_elem_stable;
    this_repr->serialize_repr_data = serialize_repr_data;
    this_repr->deserialize_repr_data = deserialize_repr_data;
    
    return this_repr;
}
