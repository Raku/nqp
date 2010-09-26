/* This is a first cut implementation of the P6opaque representation.
 * Eventually it's going to need to handle native types too, but for now
 * this gets us started. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../rakudoobject.h"
#include "P6opaque.h"

/* Forward declaration of repr_instance ('cus if we don't, we have to
 * forward declare a bunch of other stuff). */
static PMC * repr_instance(PARROT_INTERP);

/* How do we go from type-object to a hash value? For now, we make an integer
 * that is the address of the STable struct, which not being subject to GC will
 * never move, and is unique per type object too. */
#define CLASS_KEY(c) ((INTVAL)PMC_data(STABLE_PMC(c)))

/* Helper to make a :local introspection call. */
static PMC * introspection_call(PARROT_INTERP, PMC *WHAT, PMC *HOW, STRING *name) {
    /* Look up method. */
    PMC *meth = VTABLE_find_method(interp, HOW, name);

    /* Set up call capture. */
    PMC *old_ctx = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    PMC *cappy   = Parrot_pmc_new(interp, enum_class_CallContext);
    VTABLE_push_pmc(interp, cappy, HOW);
    VTABLE_push_pmc(interp, cappy, WHAT);
    VTABLE_set_integer_keyed_str(interp, cappy, Parrot_str_new_constant(interp, "local"), 1);

    /* Call. */
    Parrot_pcc_invoke_from_sig_object(interp, meth, cappy);

    /* Grab result. */
    cappy = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), old_ctx);
    return VTABLE_get_pmc_keyed_int(interp, cappy, 0);
}

/* Helper to make an accessor call. */
static PMC * accessor_call(PARROT_INTERP, PMC *obj, STRING *name) {
    /* Look up method. */
    PMC *meth = VTABLE_find_method(interp, obj, name);

    /* Set up call capture. */
    PMC *old_ctx = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    PMC *cappy   = Parrot_pmc_new(interp, enum_class_CallContext);
    VTABLE_push_pmc(interp, cappy, obj);

    /* Call. */
    Parrot_pcc_invoke_from_sig_object(interp, meth, cappy);

    /* Grab result. */
    cappy = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), old_ctx);
    return VTABLE_get_pmc_keyed_int(interp, cappy, 0);
}

/* This computes the slot mapping for a type; that is, for single inheritance
 * classes it works out an allocation in an array for storing the attributes. */
static void compute_slot_mapping(PARROT_INTERP, PMC *WHAT, REPRP6opaque *repr) {
    PMC    *HOW            = STABLE(WHAT)->HOW;
    PMC    *current_class  = WHAT;
    INTVAL  current_slot   = 0;
    STRING *attributes_str = Parrot_str_new_constant(interp, "attributes");
    STRING *parents_str    = Parrot_str_new_constant(interp, "parents");
    STRING *name_str       = Parrot_str_new_constant(interp, "name");

    /* Allocate slot mapping table. */
    repr->slot_mapping = pmc_new(interp, enum_class_Hash);

    /* Walk through the parents list. */
    while (!PMC_IS_NULL(current_class))
    {
        PMC    *parents;
        INTVAL  num_parents;

        /* Get attributes and iterate over them. */
        PMC *attributes = introspection_call(interp, WHAT, HOW, attributes_str);
        PMC *attr_iter  = VTABLE_get_iter(interp, attributes);
        while (VTABLE_get_bool(interp, attr_iter)) {
            /* Get attribute. */
            PMC *attr = VTABLE_shift_pmc(interp, attr_iter);

            /* Get its name. */
            PMC    *name_pmc = accessor_call(interp, attr, name_str);
            STRING *name     = VTABLE_get_string(interp, name_pmc);

            /* Allocate a slot. */
            INTVAL key = CLASS_KEY(current_class);
            if (!VTABLE_exists_keyed_int(interp, repr->slot_mapping, key))
                VTABLE_set_pmc_keyed_int(interp, repr->slot_mapping, key,
                        pmc_new(interp, enum_class_Hash));
            VTABLE_set_integer_keyed_str(interp,
                VTABLE_get_pmc_keyed_int(interp, repr->slot_mapping, key),
                name, current_slot);
            current_slot++;
        }

        /* Find the next parent(s). */
        parents = introspection_call(interp, WHAT, HOW, parents_str);

        // Check how many parents we have.
        num_parents = VTABLE_elements(interp, parents);
        if (num_parents == 0)
        {
            /* We're done. \o/ */
            repr->num_slots = current_slot;
            break;
        }
        else if (num_parents > 1)
        {
            /* Multiple inheritnace, so we can't compute this hierarchy. */
            repr->slot_mapping = pmc_new(interp, enum_class_Hash);
            return;
        }
        else
        {
            /* Just one. Get next parent and work through its attributes. */
            current_class = VTABLE_get_pmc_keyed_int(interp, parents, 0);
        }
    }
    printf("Computed slot mapping; %d slots\n", repr->num_slots);
}

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC * type_object_for(PARROT_INTERP, PMC *self, PMC *HOW) {
    /* Create new object instance. */
    P6opaqueInstance *obj = mem_allocate_zeroed_typed(P6opaqueInstance);

    /* Create a new repr instance. */
    PMC *my_repr = repr_instance(interp);

    /* Build an STable. */
    PMC *st_pmc = create_stable(interp, my_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);

    /* Create type object and point it back at the STable. */
    st->WHAT = wrap_object(interp, obj);
    obj->common.stable = st_pmc;

    return st->WHAT;
}

/* Creates a new instance based on the type object. */
static PMC * instance_of(PARROT_INTERP, PMC *self, PMC *WHAT) {
    P6opaqueInstance *obj;

    /* Compute slot mapping if we've not already done so. */
    REPRP6opaque *repr = P6O_REPR_STRUCT(self);
    if (!repr->slot_mapping)
        compute_slot_mapping(interp, WHAT, repr);

    /* Allocate and set up object instance. */
    obj = mem_allocate_zeroed_typed(P6opaqueInstance);
    obj->common.stable = STABLE_PMC(WHAT);
    obj->slots         = mem_sys_allocate(sizeof(PMC *) *
        repr->num_slots == 0 ? 1 : repr->num_slots);
    
    return wrap_object(interp, obj);
}

/* Checks if a given object is defined (from the point of view of the
 * representation). */
static INTVAL defined(PARROT_INTERP, PMC *self, PMC *obj) {
    P6opaqueInstance *instance = (P6opaqueInstance *)PMC_data(obj);
    return instance->slots != NULL;
}

/* Gets the current value for an attribute. */
static PMC * get_attribute(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name) {
    P6opaqueInstance *instance = (P6opaqueInstance *)PMC_data(obj);
    REPRP6opaque     *repr     = P6O_REPR_STRUCT(self);

    /* Try the slot allocation first. */
    if (repr->slot_mapping) {
        PMC *class_mapping = VTABLE_get_pmc_keyed_int(interp,
                repr->slot_mapping, CLASS_KEY(class_handle));
        if (!PMC_IS_NULL(class_mapping)) {
            if (VTABLE_exists_keyed_str(interp, class_mapping, name))
            {
                INTVAL position = VTABLE_get_integer_keyed_str(interp, class_mapping, name);
                return instance->slots[position];
            }
        }
    }
    
    /* Fall back to the spill storage. */
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque attributes NYFI");
}

/* Gets the current value for an attribute, obtained using the given hint.*/
static PMC * get_attribute_with_hint(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name, INTVAL hint) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque attributes NYFI");
}

/* Binds the given value to the specified attribute. */
static void bind_attribute(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name, PMC *value) {
    P6opaqueInstance *instance = (P6opaqueInstance *)PMC_data(obj);
    REPRP6opaque     *repr     = P6O_REPR_STRUCT(self);

    /* Try the slot allocation first. */
    if (repr->slot_mapping) {
        PMC *class_mapping = VTABLE_get_pmc_keyed_int(interp,
                repr->slot_mapping, CLASS_KEY(class_handle));
        if (!PMC_IS_NULL(class_mapping)) {
            if (VTABLE_exists_keyed_str(interp, class_mapping, name))
            {
                INTVAL position = VTABLE_get_integer_keyed_str(interp, class_mapping, name);
                instance->slots[position] = value;
                return;
            }
        }
    }

    /* Fall back to the spill storage. */
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque attributes NYFI");
}

/* Binds the given value to the specified attribute, using the given hint. */
static void bind_attribute_with_hint(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name, INTVAL hint, PMC *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque attributes NYFI");
}

/* Gets the hint for the given attribute ID. */
static INTVAL hint_for(PARROT_INTERP, PMC *self, PMC *class_handle, STRING *name) {
    return NO_HINT;
}

/* Used with boxing. Sets an integer value, for representations that can hold
 * one. */
static void set_int(PARROT_INTERP, PMC *self, PMC *obj, INTVAL value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet box a native int");
}

/* Used with boxing. Gets an integer value, for representations that can
 * hold one. */
static INTVAL get_int(PARROT_INTERP, PMC *self, PMC *obj) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet unbox to a native int");
}

/* Used with boxing. Sets a floating point value, for representations that can
 * hold one. */
static void set_num(PARROT_INTERP, PMC *self, PMC *obj, FLOATVAL value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet box a native num");
}

/* Used with boxing. Gets a floating point value, for representations that can
 * hold one. */
static FLOATVAL get_num(PARROT_INTERP, PMC *self, PMC *obj) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet unbox to a native num");
}

/* Used with boxing. Sets a string value, for representations that can hold
 * one. */
static void set_str(PARROT_INTERP, PMC *self, PMC *obj, STRING *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet box a native string");
}

/* Used with boxing. Gets a string value, for representations that can hold
 * one. */
static STRING * get_str(PARROT_INTERP, PMC *self, PMC *obj) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque cannot yet unbox to a native string");
}

/* This Parrot-specific addition to the API is used to mark an object. */
static void gc_mark(PARROT_INTERP, PMC *self, PMC *obj) {
    P6opaqueInstance *instance = (P6opaqueInstance *)PMC_data(obj);
    
    /* Mark STable. */
    if (!PMC_IS_NULL(instance->common.stable))
        Parrot_gc_mark_PMC_alive(interp, instance->common.stable);
    
    /* If we have slots... */
    if (instance->slots) {
        /* ...mark the things in those. */
        REPRP6opaque *repr = P6O_REPR_STRUCT(self);
        INTVAL i;
        for (i = 0; i < repr->num_slots; i++)
            if (!PMC_IS_NULL(instance->slots[i]))
                Parrot_gc_mark_PMC_alive(interp, instance->slots[i]);
    }

    /* If there's spill storage, mark that. */
    if (!PMC_IS_NULL(instance->spill))
        Parrot_gc_mark_PMC_alive(interp, instance->spill);
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *self, PMC *obj) {
    P6opaqueInstance *instance = (P6opaqueInstance *)PMC_data(obj);
    if (instance->slots)
        mem_sys_free(instance->slots);
    mem_sys_free(instance);
    PMC_data(obj) = NULL;
}

/* Sets up an instance of this representation with function pointers in place
 * and no allocated slot storage. */
static PMC * repr_instance(PARROT_INTERP) {
    REPRP6opaque *repr;
    PMC *repr_pmc;

    /* Allocate and populate the representation function table. */
    repr = mem_allocate_typed(REPRP6opaque);
    repr->common.type_object_for = type_object_for;
    repr->common.instance_of = instance_of;
    repr->common.defined = defined;
    repr->common.get_attribute = get_attribute;
    repr->common.get_attribute_with_hint = get_attribute_with_hint;
    repr->common.bind_attribute = bind_attribute;
    repr->common.bind_attribute_with_hint = bind_attribute_with_hint;
    repr->common.hint_for = hint_for;
    repr->common.set_int = set_int;
    repr->common.get_int = get_int;
    repr->common.set_num = set_num;
    repr->common.get_num = get_num;
    repr->common.set_str = set_str;
    repr->common.get_str = get_str;
    repr->common.gc_mark = gc_mark;
    repr->common.gc_free = gc_free;
    repr->slot_mapping = NULL;
    repr->num_slots = 0;

    /* Wrap it in a PMC. */
    return wrap_repr(interp, repr);
}

/* Initializes the P6opaque representation. */
PMC * P6opaque_initialize(PARROT_INTERP) {
    return repr_instance(interp);
}
