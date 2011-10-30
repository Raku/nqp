/* This REPR stores named attributes in a hash. It doesn't key by the
 * class at all - it's just a completely flat view. It also doesn't know
 * about allowing index-optimized access (at least, not yet). */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "HashAttrStore.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC * type_object_for(PARROT_INTERP, PMC *HOW) {
    /* Create new object instance. */
    HashAttrStoreInstance *obj = mem_allocate_zeroed_typed(HashAttrStoreInstance);

    /* Build an STable. */
    PMC *st_pmc = create_stable(interp, this_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);

    /* Create type object and point it back at the STable. We leave the
     * hash store pointer null to flag it's the type object. */
    obj->common.stable = st_pmc;
    st->WHAT = wrap_object(interp, obj);
    PARROT_GC_WRITE_BARRIER(interp, st_pmc);
    
    /* Flag it as a type object. */
    MARK_AS_TYPE_OBJECT(st->WHAT);

    return st->WHAT;
}

/* Creates a new instance based on the type object. */
static PMC * allocate(PARROT_INTERP, STable *st) {
    HashAttrStoreInstance *obj;
    obj = (HashAttrStoreInstance *) Parrot_gc_allocate_fixed_size_storage(interp, sizeof(HashAttrStoreInstance));
    obj->common.stable = st->stable_pmc;
    return wrap_object(interp, obj);
}

/* Initialize a new instance. */
static void initialize(PARROT_INTERP, STable *st, void *data) {
    ((HashAttrStoreBody *)data)->store = pmc_new(interp, enum_class_Hash);
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    HashAttrStoreBody *src_body = (HashAttrStoreBody *)src;
    HashAttrStoreBody *dest_body = (HashAttrStoreBody *)dest;
    dest_body->store = VTABLE_clone(interp, src_body->store);
}

/* Gets the current value for an attribute. */
static PMC * get_attribute_boxed(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint) {
    HashAttrStoreBody *body = (HashAttrStoreBody *)data;
    return VTABLE_get_pmc_keyed_str(interp, body->store, name);
}
static void * get_attribute_ref(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "HashAttrStore representation does not support value type attributes");
}

/* Binds the given value to the specified attribute. */
static void bind_attribute_boxed(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, PMC *value) {
    HashAttrStoreBody *body = (HashAttrStoreBody *)data;
    VTABLE_set_pmc_keyed_str(interp, body->store, name, value);
}
static void bind_attribute_ref(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, void *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "HashAttrStore representation does not support native attribute storage");
}

/* Gets the hint for the given attribute ID. */
static INTVAL hint_for(PARROT_INTERP, STable *st, PMC *class_handle, STRING *name) {
    return NO_HINT;
}

/* Clone. Clone object body and the attribute storage hash. */
static PMC * repr_clone(PARROT_INTERP, PMC *to_clone) {
    HashAttrStoreInstance *obj;

    /* Allocate and set up object instance. */
    obj = (HashAttrStoreInstance *) Parrot_gc_allocate_fixed_size_storage(interp, sizeof(HashAttrStoreInstance));
    obj->common.stable = STABLE_PMC(to_clone);
    obj->body.store = VTABLE_clone(interp, ((HashAttrStoreInstance *)PMC_data(to_clone))->body.store);

    return wrap_object(interp, obj);
}

/* Used with boxing. Sets an integer value, for representations that can hold
 * one. */
static void set_int(PARROT_INTERP, STable *st, void *data, INTVAL value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "HashAttrStore cannot box a native int");
}

/* Used with boxing. Gets an integer value, for representations that can
 * hold one. */
static INTVAL get_int(PARROT_INTERP, STable *st, void *data) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "HashAttrStore cannot unbox to a native int");
}

/* Used with boxing. Sets a floating point value, for representations that can
 * hold one. */
static void set_num(PARROT_INTERP, STable *st, void *data, FLOATVAL value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "HashAttrStore cannot box a native num");
}

/* Used with boxing. Gets a floating point value, for representations that can
 * hold one. */
static FLOATVAL get_num(PARROT_INTERP, STable *st, void *data) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "HashAttrStore cannot unbox to a native num");
}

/* Used with boxing. Sets a string value, for representations that can hold
 * one. */
static void set_str(PARROT_INTERP, STable *st, void *data, STRING *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "HashAttrStore cannot box a native string");
}

/* Used with boxing. Gets a string value, for representations that can hold
 * one. */
static STRING * get_str(PARROT_INTERP, STable *st, void *data) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "HashAttrStore cannot unbox to a native string");
}

/* This Parrot-specific addition to the API is used to mark an object. */
static void gc_mark(PARROT_INTERP, STable *st, void *data) {
    HashAttrStoreBody *body = (HashAttrStoreBody *)data;
    if (!PMC_IS_NULL(body->store))
        Parrot_gc_mark_PMC_alive(interp, body->store);
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    Parrot_gc_free_fixed_size_storage(interp, sizeof(HashAttrStoreInstance), PMC_data(obj));
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

/* Checks if an attribute has been initialized. */
static INTVAL is_attribute_initialized(PARROT_INTERP, PMC *obj, PMC *class_handle, STRING *name, INTVAL hint) {
    HashAttrStoreInstance *instance = (HashAttrStoreInstance *)PMC_data(obj);
    if (!instance->body.store)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Cannot access attributes in a type object");
    return VTABLE_exists_keyed_str(interp, instance->body.store, name);
}

/* Initializes the HashAttrStore representation. */
REPROps * HashAttrStore_initialize(PARROT_INTERP) {
    /* Allocate and populate the representation function table. */
    this_repr = mem_allocate_zeroed_typed(REPROps);
    this_repr->type_object_for = type_object_for;
    this_repr->allocate = allocate;
    this_repr->initialize = initialize;
    this_repr->copy_to = copy_to;
    this_repr->get_attribute_boxed = get_attribute_boxed;
    this_repr->get_attribute_ref = get_attribute_ref;
    this_repr->bind_attribute_boxed = bind_attribute_boxed;
    this_repr->bind_attribute_ref = bind_attribute_ref;
    this_repr->hint_for = hint_for;
    this_repr->clone = repr_clone;
    this_repr->set_int = set_int;
    this_repr->get_int = get_int;
    this_repr->set_num = set_num;
    this_repr->get_num = get_num;
    this_repr->set_str = set_str;
    this_repr->get_str = get_str;
    this_repr->gc_mark = gc_mark;
    this_repr->gc_free = gc_free;
    this_repr->gc_mark_repr_data = NULL;
    this_repr->gc_free_repr_data = NULL;
    this_repr->get_storage_spec = get_storage_spec;
    this_repr->is_attribute_initialized = is_attribute_initialized;
    return this_repr;
}
