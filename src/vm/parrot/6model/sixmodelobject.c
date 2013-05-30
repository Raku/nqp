#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "sixmodelobject.h"
#include "repr_registry.h"
#include "knowhow_bootstrapper.h"
#include "serialization_context.h"

/* Cached type IDs. */
static INTVAL stable_id    = 0;
static INTVAL smo_id       = 0;
static INTVAL sc_id        = 0;
static INTVAL ownedrpa_id  = 0;
static INTVAL qrpa_id      = 0;
static INTVAL ownedhash_id = 0;

/* Cached strings. */
static STRING *find_method_str = NULL;
static STRING *type_check_str = NULL;
static STRING *accepts_type_str = NULL;

/* Initializes 6model and produces the KnowHOW core meta-object. */
void SixModelObject_initialize(PARROT_INTERP, PMC **knowhow, PMC **knowhow_attribute) {
    PMC    *initial_sc;
    STRING *initial_sc_name;
    
    /* Look up and cache some type IDs and strings. */
    stable_id        = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "STable", 0));
    smo_id           = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "SixModelObject", 0));
    sc_id            = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "SerializationContext", 0));
    find_method_str  = Parrot_str_new_constant(interp, "find_method");
    type_check_str   = Parrot_str_new_constant(interp, "type_check");
    accepts_type_str = Parrot_str_new_constant(interp, "accepts_type");

    /* Create initial core serialization context. */
    initial_sc = Parrot_pmc_new(interp, sc_id);
    initial_sc_name = Parrot_str_new(interp, "__6MODEL_CORE__", 0);
    VTABLE_set_string_native(interp, initial_sc, initial_sc_name);
    SC_set_sc(interp, initial_sc_name, initial_sc);
    
    /* Build representations and initializes the representation registry. */
    REPR_initialize_registry(interp);

    /* Bootstrap the KnowHOW. */
    *knowhow = SixModelObject_bootstrap_knowhow(interp, initial_sc);
    
    /* Set up the simple KnowHOWAttribute. */
    *knowhow_attribute = SixModelObject_setup_knowhow_attribute(interp, initial_sc, *knowhow);
}

/* Sets the object that we'll wrap the next allocation in. */
static PMC *next_wrapper = NULL;
void set_wrapping_object(PMC *wrapper) {
    next_wrapper = wrapper;
}

/* Takes an object and wraps it in a SixModelObject PMC. */
PMC * wrap_object(PARROT_INTERP, void *obj) {
    PMC *obj_pmc;
    if (next_wrapper) {
        obj_pmc = next_wrapper;
        next_wrapper = NULL;
    }
    else {
        obj_pmc = Parrot_pmc_new_noinit(interp, smo_id);
    }
    PObj_custom_mark_SET(obj_pmc);
    PObj_custom_destroy_SET(obj_pmc);
    PMC_data(obj_pmc) = obj;
    return obj_pmc;
}

/* This is the default method dispatch code. It tries to use the
 * v-table first, then falls back to a lookup. */
static PMC * default_find_method(PARROT_INTERP, PMC *obj, STRING *name, INTVAL hint) {
    PMC *HOW, *meth, *result;
    
    /* See if we can find it by hint. */
    STable *st = STABLE(obj);
    if (st->vtable && hint != NO_HINT && hint < st->vtable_length) {
        /* Yes, just grab it from the v-table. */
        return st->vtable[hint];
    }

    /* Try the by-name method cache, if the HOW published one. */
    if (st->method_cache) {
        PMC *cached_method = VTABLE_get_pmc_keyed_str(interp, st->method_cache, name);
        if (!PMC_IS_NULL(cached_method))
            return cached_method;
        else if (st->mode_flags & METHOD_CACHE_AUTHORITATIVE)
            return PMCNULL;
    }

    /* Otherwise delegate to the HOW. */
    HOW = st->HOW;
    meth = STABLE(HOW)->find_method(interp, HOW, find_method_str, NO_HINT);
        
    /* Call it to get the method to call. */
    if (PMC_IS_NULL(meth)) {
        Parrot_ex_throw_from_c_args(interp, NULL, 1,
            "No method cache and no find_method method in meta-object");
    }
    else {
        PMC *old_ctx = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
        PMC *cappy   = Parrot_pmc_new(interp, enum_class_CallContext);
        VTABLE_push_pmc(interp, cappy, HOW);
        VTABLE_push_pmc(interp, cappy, obj);
        VTABLE_push_string(interp, cappy, name);
        Parrot_pcc_invoke_from_sig_object(interp, meth, cappy);
        cappy = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
        Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), old_ctx);
        result = VTABLE_get_pmc_keyed_int(interp, cappy, 0);
    }
    
    return result;
}

/* This is the default type checking implementation. Note: it may also
 * be the only one we end up with since the HOW is the authority here.
 * So we may end up not calling this through the S-Table in the end. */
static INTVAL default_type_check (PARROT_INTERP, PMC *to_check, PMC *wanted) {
    PMC *HOW, *meth, *result;
    
    STable *st = STABLE(to_check);
    INTVAL type_check_mode = STABLE(wanted)->mode_flags & TYPE_CHECK_CACHE_FLAG_MASK;
    if (st->type_check_cache) {
        /* We have the cache, so just look for the type object we
         * want to be in there. */
        INTVAL i;
        for (i = 0; i < st->type_check_cache_length; i++)
            if (st->type_check_cache[i] == wanted)
                return 1;
                
        /* If the type check cache is definitive, we're done. */
        if ((type_check_mode & TYPE_CHECK_CACHE_THEN_METHOD) == 0 &&
                (type_check_mode & TYPE_CHECK_NEEDS_ACCEPTS) == 0)
            return 0;
    }
    
    /* If we get here, need to call .^type_check on the value we're
     * checking. */
    if (!st->type_check_cache || (type_check_mode & TYPE_CHECK_CACHE_THEN_METHOD))
    {
        PMC    *HOW = st->HOW;
        PMC    *meth = STABLE(HOW)->find_method(interp, HOW, type_check_str, NO_HINT);
        PMC    *result_pmc;
        INTVAL  result;
        if (PMC_IS_NULL(meth)) {
            Parrot_ex_throw_from_c_args(interp, NULL, 1,
                "No type check cache and no type_check method in meta-object");
        }
        Parrot_ext_call(interp, meth, "PiPP->P", HOW, to_check, wanted, &result_pmc);
        result = VTABLE_get_bool(interp, result_pmc);
        if (result)
            return result;
    }
    
    /* If the flag to call .accepts_type on the target value is set, do so. */
    if (type_check_mode & TYPE_CHECK_NEEDS_ACCEPTS) {
        PMC    *HOW = STABLE(wanted)->HOW;
        PMC    *meth = STABLE(HOW)->find_method(interp, HOW, accepts_type_str, NO_HINT);
        PMC    *result_pmc;
        if (PMC_IS_NULL(meth)) {
            Parrot_ex_throw_from_c_args(interp, NULL, 1,
                "Expected accepts_type method, but none found in meta-object");
        }
        Parrot_ext_call(interp, meth, "PiPP->P", HOW, wanted, to_check, &result_pmc);
        return VTABLE_get_bool(interp, result_pmc);
    }
    
    /* If we get here, type check failed. */
    return 0;
}

/* Gets configuration hash for a HLL. */
PMC * get_hll_config(PARROT_INTERP, STRING *hll) {
    PMC *global_context = VTABLE_get_pmc_keyed_str(interp, interp->root_namespace,
        Parrot_str_new_constant(interp, "_GLOBAL_CONTEXT"));
    PMC *config = VTABLE_get_pmc_keyed_str(interp,
        VTABLE_get_pmc_keyed_str(interp, global_context, Parrot_str_new_constant(interp, "hllConfig")),
        hll);

    if (PMC_IS_NULL(config)) {
        config = Parrot_pmc_new(interp, enum_class_Hash);
        /* TODO: Populate with initial values. */

        VTABLE_set_pmc_keyed_str(interp,
            VTABLE_get_pmc_keyed_str(interp, global_context, Parrot_str_new_constant(interp, "hllConfig")),
            hll,
            config);
    }

    return config;
}

/* Does a HLL interop transformation as needed. */
PMC * hllize(PARROT_INTERP, PMC *obj, INTVAL hll_id) {
    /* Look up HLL mapping information. */
    PMC *config = get_hll_config(interp, Parrot_hll_get_HLL_name(interp, hll_id));
    
    /* Is the input type a 6model type? */
    if (obj->vtable->base_type == smo_id) {
        /* Go by what role it plays. */
        switch (STABLE(obj)->hll_role) {
            case HLL_ROLE_INT:
                if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_int"))) {
                    PMC *type = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_int"));
                    PMC *result = REPR(type)->allocate(interp, STABLE(type));
                    REPR(result)->initialize(interp, STABLE(result), OBJECT_BODY(result));
                    REPR(result)->box_funcs->set_int(interp, STABLE(result), OBJECT_BODY(result),
                        REPR(obj)->box_funcs->get_int(interp, STABLE(obj), OBJECT_BODY(obj)));
                    return result;
                }
                else if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_int"))) {
                    PMC *result;
                    PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_int"));
                    Parrot_ext_call(interp, code, "I->P",
                        REPR(obj)->box_funcs->get_int(interp, STABLE(obj), OBJECT_BODY(obj)),
                        &result);
                    return result;
                }
                else {
                    return obj;
                }
            case HLL_ROLE_NUM:
                if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_num"))) {
                    PMC *type = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_num"));
                    PMC *result = REPR(type)->allocate(interp, STABLE(type));
                    REPR(result)->initialize(interp, STABLE(result), OBJECT_BODY(result));
                    REPR(result)->box_funcs->set_num(interp, STABLE(result), OBJECT_BODY(result),
                        REPR(obj)->box_funcs->get_num(interp, STABLE(obj), OBJECT_BODY(obj)));
                    return result;
                }
                else if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_num"))) {
                    PMC *result;
                    PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_num"));
                    Parrot_ext_call(interp, code, "N->P",
                        REPR(obj)->box_funcs->get_num(interp, STABLE(obj), OBJECT_BODY(obj)),
                        &result);
                    return result;
                }
                else {
                    return obj;
                }
            case HLL_ROLE_STR:
                if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_str"))) {
                    PMC *type = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_str"));
                    PMC *result = REPR(type)->allocate(interp, STABLE(type));
                    REPR(result)->initialize(interp, STABLE(result), OBJECT_BODY(result));
                    REPR(result)->box_funcs->set_str(interp, STABLE(result), OBJECT_BODY(result),
                        REPR(obj)->box_funcs->get_str(interp, STABLE(obj), OBJECT_BODY(obj)));
                    PARROT_GC_WRITE_BARRIER(interp, result);
                    return result;
                }
                else if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_str"))) {
                    PMC *result;
                    PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_str"));
                    Parrot_ext_call(interp, code, "S->P",
                        REPR(obj)->box_funcs->get_str(interp, STABLE(obj), OBJECT_BODY(obj)),
                        &result);
                    return result;
                }
                else {
                    return obj;
                }
            case HLL_ROLE_ARRAY:
                if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_array"))) {
                    PMC *result;
                    PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_array"));
                    Parrot_ext_call(interp, code, "P->P", obj, &result);
                    return result;
                }
                else {
                    return obj;
                }
            case HLL_ROLE_HASH:
                if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_hash"))) {
                    PMC *result;
                    PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_hash"));
                    Parrot_ext_call(interp, code, "P->P", obj, &result);
                    return result;
                }
                else {
                    return obj;
                }
            case HLL_ROLE_CODE:
                if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_code"))) {
                    PMC *result;
                    PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_code"));
                    Parrot_ext_call(interp, code, "P->P", obj, &result);
                    return result;
                }
                else {
                    return obj;
                }
            default:
                if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_any"))) {
                    PMC *result;
                    PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_any"));
                    Parrot_ext_call(interp, code, "P->P", obj, &result);
                    return result;
                }
                else {
                    return obj;
                }
        }
    }
    
    /* Otherwise, it's a Parrot type. */
    if (ownedrpa_id == 0)
        ownedrpa_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "OwnedResizablePMCArray", 0));
    if (qrpa_id == 0)
        qrpa_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "QRPA", 0));
    if (ownedhash_id == 0)
        ownedhash_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "OwnedHash", 0));
    if (obj->vtable->base_type == enum_class_String) {
        if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_str"))) {
            PMC *type = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_str"));
            PMC *result = REPR(type)->allocate(interp, STABLE(type));
            REPR(result)->initialize(interp, STABLE(result), OBJECT_BODY(result));
            REPR(result)->box_funcs->set_str(interp, STABLE(result), OBJECT_BODY(result), VTABLE_get_string(interp, obj));
            PARROT_GC_WRITE_BARRIER(interp, result);
            return result;
        }
        else if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_str"))) {
            PMC *result;
            PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_str"));
            Parrot_ext_call(interp, code, "S->P", VTABLE_get_string(interp, obj), &result);
            return result;
        }
        else {
            return obj;
        }
    }
    else if (obj->vtable->base_type == enum_class_Integer) {
        if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_int"))) {
            PMC *type = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_int"));
            PMC *result = REPR(type)->allocate(interp, STABLE(type));
            REPR(result)->initialize(interp, STABLE(result), OBJECT_BODY(result));
            REPR(result)->box_funcs->set_int(interp, STABLE(result), OBJECT_BODY(result), VTABLE_get_integer(interp, obj));
            return result;
        }
        else if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_int"))) {
            PMC *result;
            PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_int"));
            Parrot_ext_call(interp, code, "I->P", VTABLE_get_integer(interp, obj), &result);
            return result;
        }
        else {
            return obj;
        }
    }
    else if (obj->vtable->base_type == enum_class_Float) {
        if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_num"))) {
            PMC *type = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_type_num"));
            PMC *result = REPR(type)->allocate(interp, STABLE(type));
            REPR(result)->initialize(interp, STABLE(result), OBJECT_BODY(result));
            REPR(result)->box_funcs->set_num(interp, STABLE(result), OBJECT_BODY(result), VTABLE_get_number(interp, obj));
            return result;
        }
        else if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_num"))) {
            PMC *result;
            PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_num"));
            Parrot_ext_call(interp, code, "N->P", VTABLE_get_number(interp, obj), &result);
            return result;
        }
        else {
            return obj;
        }
    }
    else if (obj->vtable->base_type == enum_class_ResizablePMCArray
         ||  obj->vtable->base_type == ownedrpa_id
         ||  obj->vtable->base_type == qrpa_id) {
        if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_array"))) {
            PMC *result;
            PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_array"));
            Parrot_ext_call(interp, code, "P->P", obj, &result);
            return result;
        }
        else {
            return obj;
        }
    }
    else if (obj->vtable->base_type == enum_class_Hash
         ||  obj->vtable->base_type == ownedhash_id) {
        if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_hash"))) {
            PMC *result;
            PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_hash"));
            Parrot_ext_call(interp, code, "P->P", obj, &result);
            return result;
        }
        else {
            return obj;
        }
    }
    else if (obj->vtable->base_type == enum_class_Sub || obj->vtable->base_type == enum_class_Coroutine) {
        if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_code")))  {
            PMC *result;
            PMC *code = VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "foreign_transform_code"));
            Parrot_ext_call(interp, code, "P->P", obj, &result);
            return result;
        }
        else {
            return obj;
        }
    }
    else if (obj->vtable->base_type == enum_class_Null) {
        if (VTABLE_exists_keyed_str(interp, config, Parrot_str_new_constant(interp, "null_value")))
            return VTABLE_get_pmc_keyed_str(interp, config, Parrot_str_new_constant(interp, "null_value"));
        else
            return obj;
    }
    else {
        return obj;
    }
}

/* Creates an STable that references the given REPR and HOW. */
PMC * create_stable(PARROT_INTERP, REPROps *REPR, PMC *HOW) {
    PMC *st_pmc = Parrot_pmc_new_init(interp, stable_id, HOW);
    STABLE_STRUCT(st_pmc)->REPR = REPR;
    STABLE_STRUCT(st_pmc)->WHO = PMCNULL;
    STABLE_STRUCT(st_pmc)->find_method = default_find_method;
    STABLE_STRUCT(st_pmc)->type_check = default_type_check;
    STABLE_STRUCT(st_pmc)->stable_pmc = st_pmc;
    return st_pmc;
}

/* Performs a decontainerizing operation on the passed variable, using
 * the 6model container API. */
PMC * decontainerize(PARROT_INTERP, PMC *var) {
    if (var->vtable->base_type == smo_id)
        var = DECONT(interp, var);
    return var;
}
