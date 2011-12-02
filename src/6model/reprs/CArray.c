#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "CArray.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Some functions we have to get references to. */
static PMC * (* wrap_object_func) (PARROT_INTERP, void *obj);
static PMC * (* create_stable_func) (PARROT_INTERP, REPROps *REPR, PMC *HOW);

/* Gets size and type information to put it into the REPR data. */
static void fill_repr_data(PARROT_INTERP, STable *st) {
    /* XXX TODO. */
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
        src_body->storage = dest_body->storage;
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
    return this_repr;
}
