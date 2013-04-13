/* This is the implementation of the KnowHOWREPR representation, which is used
 * as part of the object model bootstrap. It stores the state of a KnowHOW
 * meta-object. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "KnowHOWREPR.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC * type_object_for(PARROT_INTERP, PMC *HOW) {
    /* Create new object instance. */
    KnowHOWREPRInstance *obj = mem_allocate_zeroed_typed(KnowHOWREPRInstance);

    /* Build an STable. */
    PMC *st_pmc = create_stable(interp, this_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);

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
    /* Nothing to do. */
}

/* Creates a new instance based on the type object. */
static PMC * allocate(PARROT_INTERP, STable *st) {
    KnowHOWREPRInstance *obj = mem_allocate_zeroed_typed(KnowHOWREPRInstance);
    if (st)
        obj->common.stable = st->stable_pmc;
    return wrap_object(interp, obj);
}

/* Initialize a new instance. */
static void initialize(PARROT_INTERP, STable *st, void *data) {
    KnowHOWREPRBody *body = (KnowHOWREPRBody *)data;
    body->methods        = Parrot_pmc_new(interp, enum_class_Hash);
    body->attributes     = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    KnowHOWREPRBody *src_body = (KnowHOWREPRBody *)src;
    KnowHOWREPRBody *dest_body = (KnowHOWREPRBody *)dest;
    dest_body->name = src_body->name;
    dest_body->methods = VTABLE_clone(interp, src_body->methods);
    dest_body->attributes = VTABLE_clone(interp, src_body->attributes);
}

/* This Parrot-specific addition to the API is used to mark an object. */
static void gc_mark(PARROT_INTERP, STable *st, void *data) {
    KnowHOWREPRBody *body = (KnowHOWREPRBody *)data;
    if (!STRING_IS_NULL(body->name))
        Parrot_gc_mark_STRING_alive(interp, body->name);
    if (!PMC_IS_NULL(body->methods))
        Parrot_gc_mark_PMC_alive(interp, body->methods);
    if (!PMC_IS_NULL(body->attributes))
        Parrot_gc_mark_PMC_alive(interp, body->attributes);
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    mem_sys_free(PMC_data(obj));
    PMC_data(obj) = NULL;
}

/* Gets the storage specification for this representation. */
static storage_spec get_storage_spec(PARROT_INTERP, STable *st) {
    storage_spec spec;
    spec.inlineable = STORAGE_SPEC_REFERENCE;
    spec.boxed_primitive = STORAGE_SPEC_BP_NONE;
    spec.can_box = 0;
    spec.bits = sizeof(void *);
    spec.align = ALIGNOF1(void *);
    return spec;
}

/* Serializes the data. */
static void serialize(PARROT_INTERP, STable *st, void *data, SerializationWriter *writer) {
    KnowHOWREPRBody *body = (KnowHOWREPRBody *)data;
    writer->write_str(interp, writer, body->name);
    writer->write_ref(interp, writer, body->attributes);
    writer->write_ref(interp, writer, body->methods);
}

/* Deserializes the data. */
static void deserialize(PARROT_INTERP, STable *st, void *data, SerializationReader *reader) {
    KnowHOWREPRBody *body = (KnowHOWREPRBody *)data;
    body->name       = reader->read_str(interp, reader);
    body->attributes = reader->read_ref(interp, reader);
    body->methods    = reader->read_ref(interp, reader);
}

/* Initializes the KnowHOWREPR representation. */
REPROps * KnowHOWREPR_initialize(PARROT_INTERP) {
    /* Allocate and populate the representation function table. */
    this_repr = mem_allocate_zeroed_typed(REPROps);
    this_repr->type_object_for = type_object_for;
    this_repr->compose = compose;
    this_repr->allocate = allocate;
    this_repr->initialize = initialize;
    this_repr->copy_to = copy_to;
    this_repr->gc_mark = gc_mark;
    this_repr->gc_free = gc_free;
    this_repr->get_storage_spec = get_storage_spec;
    this_repr->serialize = serialize;
    this_repr->deserialize = deserialize;
    return this_repr;
}
