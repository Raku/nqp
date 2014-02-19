#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "CStr.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Some functions we have to get references to. */
static wrap_object_t   wrap_object_func;
static create_stable_t create_stable_func;

/* This is what Parrot_str_new_from_cstring does but that isn't exported. */
static STRING *
new_from_cstring(PARROT_INTERP, const char *buffer, STRING *encodingname)
{
    STRING *result = STRINGNULL;
    if (buffer) {
        const STR_VTABLE *encoding = STRING_IS_NULL(encodingname) ?
                Parrot_platform_encoding_ptr :
                Parrot_find_encoding_by_string(interp, encodingname);
        if (encoding == NULL)
            Parrot_ex_throw_from_c_args(interp, NULL,
                    EXCEPTION_INVALID_ENCODING,
                    "Invalid encoding");
        else {
            int size = strlen(buffer);
            result = Parrot_str_new_init(interp, buffer, size, encoding, 0);
        }
    }
    return result;
}

static void set_str(PARROT_INTERP, STable *st, void *data, STRING *value) {
    CStrBody *body = (CStrBody *) data;
    PMC *old_ctx, *cappy, *meth, *enc_pmc;
    STRING *enc;
    STR_VTABLE *encoding;

    if(body->cstr)
        mem_sys_free(body->cstr);

    /* Look up "encoding" method. */
    meth = VTABLE_find_method(interp, st->WHAT,
        Parrot_str_new_constant(interp, "encoding"));
    if (PMC_IS_NULL(meth))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "CStr representation expects an 'encoding' method, specifying the encoding");

    old_ctx = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    cappy   = Parrot_pmc_new(interp, enum_class_CallContext);
    VTABLE_push_pmc(interp, cappy, st->WHAT);
    Parrot_pcc_invoke_from_sig_object(interp, meth, cappy);
    cappy = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), old_ctx);
    enc_pmc = decontainerize(interp, VTABLE_get_pmc_keyed_int(interp, cappy, 0));
    enc = REPR(enc_pmc)->box_funcs->get_str(interp, STABLE(enc_pmc), OBJECT_BODY(enc_pmc));

    if (STRING_equal(interp, enc, Parrot_str_new_constant(interp, "utf8")))
        encoding = Parrot_utf8_encoding_ptr;
    else if (STRING_equal(interp, enc, Parrot_str_new_constant(interp, "utf16")))
        encoding = Parrot_utf16_encoding_ptr;
    else if (STRING_equal(interp, enc, Parrot_str_new_constant(interp, "ascii")))
        encoding = Parrot_ascii_encoding_ptr;
    else
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Unknown encoding passed to CStr representation");

    body->cstr = Parrot_str_to_encoded_cstring(interp, value, encoding);
}

static STRING *get_str(PARROT_INTERP, STable *st, void *data) {
    CStrBody *body = (CStrBody *) data;
    PMC *old_ctx, *cappy, *meth, *enc_pmc;
    STRING *enc;
    STR_VTABLE *encoding;

    if (!body->cstr)
        return (STRING *) NULL;

    /* Look up "encoding" method. */
    meth = VTABLE_find_method(interp, st->WHAT,
        Parrot_str_new_constant(interp, "encoding"));
    if (PMC_IS_NULL(meth))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "CStr representation expects an 'encoding' method, specifying the encoding");

    old_ctx = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    cappy   = Parrot_pmc_new(interp, enum_class_CallContext);
    VTABLE_push_pmc(interp, cappy, st->WHAT);
    Parrot_pcc_invoke_from_sig_object(interp, meth, cappy);
    cappy = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), old_ctx);
    enc_pmc = decontainerize(interp, VTABLE_get_pmc_keyed_int(interp, cappy, 0));
    enc = REPR(enc_pmc)->box_funcs->get_str(interp, STABLE(enc_pmc), OBJECT_BODY(enc_pmc));

    return new_from_cstring(interp, body->cstr, enc);
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

/* Composes the representation. */
static void compose(PARROT_INTERP, STable *st, PMC *repr_info) {
    /* TODO: move encoding stuff into here */
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
    spec.can_box = STORAGE_SPEC_CAN_BOX_STR;
    spec.bits = sizeof(void *) * 8;;
    spec.align = ALIGNOF1(void *);
    return spec;
}

REPROps *CStr_initialize(PARROT_INTERP,
        wrap_object_t wrap_object_func_ptr,
        create_stable_t create_stable_func_ptr) {
    /* Stash away functions passed wrapping functions. */
    wrap_object_func = wrap_object_func_ptr;
    create_stable_func = create_stable_func_ptr;

    /* Allocate and populate the representation function table. */
    this_repr = mem_allocate_zeroed_typed(REPROps);
    this_repr->type_object_for  = type_object_for;
    this_repr->compose          = compose;
    this_repr->allocate         = allocate;
    this_repr->initialize       = initialize;
    this_repr->gc_free          = gc_free;
    this_repr->get_storage_spec = get_storage_spec;
    this_repr->box_funcs = mem_allocate_typed(REPROps_Boxing);
    this_repr->box_funcs->set_str = set_str;
    this_repr->box_funcs->get_str = get_str;

    return this_repr;
}
