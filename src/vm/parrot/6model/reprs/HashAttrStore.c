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

/* Composes the representation. */
static void compose(PARROT_INTERP, STable *st, PMC *repr_info) {
    UNUSED(interp);
    UNUSED(st);
    UNUSED(repr_info);
    /* Nothing to do. */
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
    UNUSED(st);
    ((HashAttrStoreBody *)data)->store = Parrot_pmc_new(interp, enum_class_Hash);
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    HashAttrStoreBody *src_body = (HashAttrStoreBody *)src;
    HashAttrStoreBody *dest_body = (HashAttrStoreBody *)dest;
    UNUSED(st);
    dest_body->store = VTABLE_clone(interp, src_body->store);
}

/* Gets the current value for an attribute. */
static PMC * get_attribute_boxed(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint) {
    HashAttrStoreBody *body = (HashAttrStoreBody *)data;
    UNUSED(st);
    UNUSED(class_handle);
    UNUSED(hint);
    return VTABLE_get_pmc_keyed_str(interp, body->store, name);
}
static void get_attribute_native(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, NativeValue *value) {
    UNUSED(st);
    UNUSED(data);
    UNUSED(class_handle);
    UNUSED(name);
    UNUSED(hint);
    UNUSED(value);
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "HashAttrStore representation does not support value type attributes");
}
static STable *get_attribute_stable(PARROT_INTERP, STable *st, PMC *class_handle, STRING *name, INTVAL hint) {
    UNUSED(st);
    UNUSED(class_handle);
    UNUSED(name);
    UNUSED(hint);
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "HashAttrStore representation does not support value type attributes");
}

/* Binds the given value to the specified attribute. */
static void bind_attribute_boxed(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, PMC *value) {
    HashAttrStoreBody *body = (HashAttrStoreBody *)data;
    UNUSED(st);
    UNUSED(class_handle);
    UNUSED(hint);
    VTABLE_set_pmc_keyed_str(interp, body->store, name, value);
}
static void bind_attribute_native(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, NativeValue *value) {
    UNUSED(st);
    UNUSED(data);
    UNUSED(class_handle);
    UNUSED(name);
    UNUSED(hint);
    UNUSED(value);
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "HashAttrStore representation does not support native attribute storage");
}

/* Checks if an attribute has been initialized. */
static INTVAL is_attribute_initialized(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint) {
    HashAttrStoreBody *body = (HashAttrStoreBody *)data;
    UNUSED(st);
    UNUSED(class_handle);
    UNUSED(hint);
    return VTABLE_exists_keyed_str(interp, body->store, name);
}

/* Gets the hint for the given attribute ID. */
static INTVAL hint_for(PARROT_INTERP, STable *st, PMC *class_handle, STRING *name) {
    UNUSED(interp);
    UNUSED(st);
    UNUSED(class_handle);
    UNUSED(name);
    return NO_HINT;
}

/* This Parrot-specific addition to the API is used to mark an object. */
static void gc_mark(PARROT_INTERP, STable *st, void *data) {
    HashAttrStoreBody *body = (HashAttrStoreBody *)data;
    UNUSED(st);
    if (!PMC_IS_NULL(body->store))
        Parrot_gc_mark_PMC_alive(interp, body->store);
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    Parrot_gc_free_fixed_size_storage(interp, sizeof(HashAttrStoreInstance), PMC_data(obj));
    PMC_data(obj) = NULL;
}

/* Gets the storage specification for this representation. */
static void get_storage_spec(PARROT_INTERP, STable *st, storage_spec *spec) {
    UNUSED(interp);
    UNUSED(st);
    spec->inlineable      = STORAGE_SPEC_REFERENCE;
    spec->boxed_primitive = STORAGE_SPEC_BP_NONE;
    spec->can_box         = 0;
    spec->bits            = sizeof(void *);
    spec->align           = ALIGNOF1(void *);
}

/* Initializes the HashAttrStore representation. */
REPROps * HashAttrStore_initialize(PARROT_INTERP) {
    UNUSED(interp);
    /* Allocate and populate the representation function table. */
    this_repr = mem_allocate_zeroed_typed(REPROps);
    this_repr->type_object_for = type_object_for;
    this_repr->compose = compose;
    this_repr->allocate = allocate;
    this_repr->initialize = initialize;
    this_repr->copy_to = copy_to;
    this_repr->attr_funcs = mem_allocate_typed(REPROps_Attribute);
    this_repr->attr_funcs->get_attribute_boxed = get_attribute_boxed;
    this_repr->attr_funcs->get_attribute_native = get_attribute_native;
    this_repr->attr_funcs->bind_attribute_boxed = bind_attribute_boxed;
    this_repr->attr_funcs->bind_attribute_native = bind_attribute_native;
    this_repr->attr_funcs->is_attribute_initialized = is_attribute_initialized;
    this_repr->attr_funcs->hint_for = hint_for;
    this_repr->gc_mark = gc_mark;
    this_repr->gc_free = gc_free;
    this_repr->get_storage_spec = get_storage_spec;
    return this_repr;
}
