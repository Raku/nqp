#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "CStr.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Some functions we have to get references to. */
static PMC * (* wrap_object_func) (PARROT_INTERP, void *obj);
static PMC * (* create_stable_func) (PARROT_INTERP, REPROps *REPR, PMC *HOW);

static void set_str(PARROT_INTERP, STable *st, void *data, STRING *value) {
    CStrBody *body = (CStrBody *) data;

    if(body->cstr)
        mem_sys_free(body->cstr);

    /* TODO: Encodings. */
    body->cstr = Parrot_str_to_encoded_cstring(interp, value, Parrot_utf8_encoding_ptr);
}

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC *type_object_for(PARROT_INTERP, PMC *HOW) {
    /* Create new object instance. */
    CStrInstance *obj = mem_allocate_zeroed_typed(CStrInstance);

    /* Build an STable. */
    PMC *st_pmc = create_stable_func(interp, this_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);
    
    /* Create REPR data structure and hang it off the STable. */
    /* Don't need any REPR data yet. */
    /*st->REPR_data = mem_allocate_zeroed_typed(CStrREPRData);*/

    /* Create type object and point it back at the STable. */
    obj->common.stable = st_pmc;
    st->WHAT = wrap_object_func(interp, obj);
    PARROT_GC_WRITE_BARRIER(interp, st_pmc);

    /* Flag it as a type object. */
    MARK_AS_TYPE_OBJECT(st->WHAT);

    return st->WHAT;
}

static PMC *allocate(PARROT_INTERP, STable *st) {
    CStrInstance *obj = (CStrInstance *) Parrot_gc_allocate_fixed_size_storage(interp, sizeof(CStrInstance));

    obj->common.stable = st->stable_pmc;
    obj->common.sc = NULL;
    obj->body.cstr = NULL;

    return wrap_object_func(interp, obj);
}

static void initialize(PARROT_INTERP, STable *st, void *data) { }

static void gc_free(PARROT_INTERP, PMC *obj) {
    CStrBody *body = (CStrBody *) OBJECT_BODY(obj);

    if(IS_CONCRETE(obj) && body->cstr)
        mem_sys_free(body->cstr);
}

/* Gets the storage specification for this representation. */
static storage_spec get_storage_spec(PARROT_INTERP, STable *st) {
    storage_spec spec;
    spec.inlineable = STORAGE_SPEC_REFERENCE;
    spec.boxed_primitive = STORAGE_SPEC_BP_STR;
    spec.can_box = 0;
    return spec;
}

REPROps *CStr_initialize(PARROT_INTERP,
        PMC * (* wrap_object_func_ptr) (PARROT_INTERP, void *obj),
        PMC * (* create_stable_func_ptr) (PARROT_INTERP, REPROps *REPR, PMC *HOW)) {
    /* Stash away functions passed wrapping functions. */
    wrap_object_func = wrap_object_func_ptr;
    create_stable_func = create_stable_func_ptr;

    /* Allocate and populate the representation function table. */
    this_repr = mem_allocate_zeroed_typed(REPROps);
    this_repr->type_object_for  = type_object_for;
    this_repr->allocate         = allocate;
    this_repr->initialize       = initialize;
    this_repr->gc_free          = gc_free;
    this_repr->get_storage_spec = get_storage_spec;
    this_repr->box_funcs = mem_allocate_typed(REPROps_Boxing);
    this_repr->box_funcs->set_str = set_str;

    return this_repr;
}
