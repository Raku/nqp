/* This is an under-construction implementation of P6opaque. It's not quite smart
 * enough to handle natively typed attributes yet, but it's getting there.
 * Manages to be just a single memory allocation in addition to the PMC header. */

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

/* Helper to make an introspection call, possibly with :local. */
static PMC * introspection_call(PARROT_INTERP, PMC *WHAT, PMC *HOW, STRING *name) {
    PMC *old_ctx, *cappy;
    
    /* Look up method; if there is none hand back a null. */
    PMC *meth = VTABLE_find_method(interp, HOW, name);
    if (PMC_IS_NULL(meth))
        return meth;

    /* Set up call capture. */
    old_ctx = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    cappy   = Parrot_pmc_new(interp, enum_class_CallContext);
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
    PMC *old_ctx, *cappy;
    
    /* Look up method; if there is none hand back a null. */
    PMC *meth = VTABLE_find_method(interp, obj, name);
    if (PMC_IS_NULL(meth))
        return meth;

    /* Set up call capture. */
    old_ctx = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    cappy   = Parrot_pmc_new(interp, enum_class_CallContext);
    VTABLE_push_pmc(interp, cappy, obj);

    /* Call. */
    Parrot_pcc_invoke_from_sig_object(interp, meth, cappy);

    /* Grab result. */
    cappy = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), old_ctx);
    return VTABLE_get_pmc_keyed_int(interp, cappy, 0);
}

/* Locates all of the attributes. Puts them onto a flattened, ordered
 * list of attributes (populating the passed flat_list). Also builds
 * the index mapping for doing named lookups. If there is multiple
 * inheritance, returns an empty index mapping, which indicates that
 * everything will be looked up in spill. Otherwise returns a
 * populated name to index mapping. Note index is not related to the
 * storage position. */
static P6opaqueNameMap* index_mapping_and_flat_list(PARROT_INTERP, PMC *WHAT, PMC *flat_list) {
    PMC    *class_list     = pmc_new(interp, enum_class_ResizablePMCArray);
    PMC    *attr_map_list  = pmc_new(interp, enum_class_ResizablePMCArray);
    PMC    *current_class  = WHAT;
    INTVAL  current_slot   = 0;
    STRING *attributes_str = Parrot_str_new_constant(interp, "attributes");
    STRING *parents_str    = Parrot_str_new_constant(interp, "parents");
    STRING *name_str       = Parrot_str_new_constant(interp, "name");
    INTVAL i, num_classes;

    P6opaqueNameMap *result = NULL;

    /* Walk through the parents list. */
    while (!PMC_IS_NULL(current_class))
    {
        PMC    *parents;
        INTVAL  num_parents;

        /* Get attributes and iterate over them. */
        PMC *HOW        = STABLE(current_class)->HOW;
        PMC *attributes = introspection_call(interp, current_class, HOW, attributes_str);
        PMC *attr_map   = PMCNULL;
        PMC *attr_iter  = VTABLE_get_iter(interp, attributes);
        while (VTABLE_get_bool(interp, attr_iter)) {
            /* Get attribute. */
            PMC *attr = VTABLE_shift_pmc(interp, attr_iter);

            /* Get its name. */
            PMC    *name_pmc = accessor_call(interp, attr, name_str);
            STRING *name     = VTABLE_get_string(interp, name_pmc);

            /* Allocate a slot. */
            if (PMC_IS_NULL(attr_map))
                attr_map = pmc_new(interp, enum_class_Hash);
            VTABLE_set_pmc_keyed_str(interp, attr_map, name,
                Parrot_pmc_new_init_int(interp, enum_class_Integer, current_slot));
            current_slot++;

            /* Push attr onto the flat list. */
            VTABLE_push_pmc(interp, flat_list, attr);
        }

        /* Add to class list and map list. */
        VTABLE_push_pmc(interp, class_list, current_class);
        VTABLE_push_pmc(interp, attr_map_list, attr_map);

        /* Find the next parent(s). */
        parents = introspection_call(interp, current_class, HOW, parents_str);

        /* Check how many parents we have. */
        num_parents = VTABLE_elements(interp, parents);
        if (num_parents == 0)
        {
            /* We're done. \o/ */
            break;
        }
        else if (num_parents > 1)
        {
            /* Multiple inheritnace, so we can't compute this hierarchy. */
            return mem_sys_allocate_zeroed(sizeof(P6opaqueNameMap));
        }
        else
        {
            /* Just one. Get next parent and work through its attributes. */
            current_class = VTABLE_get_pmc_keyed_int(interp, parents, 0);
        }
    }

    /* We can now form the name map. */
    num_classes = VTABLE_elements(interp, class_list);
    result = mem_sys_allocate_zeroed(sizeof(P6opaqueNameMap) * (1 + num_classes));
    for (i = 0; i < num_classes; i++) {
        result[i].class_key = VTABLE_get_pmc_keyed_int(interp, class_list, i);
        result[i].name_map  = VTABLE_get_pmc_keyed_int(interp, attr_map_list, i);
    }

    return result;
}

/* This works out an allocation strategy for the object. It can do best when
 * single inheritance is used, in which case it just stores the attributes
 * contiguously in memory. It takes care of "inlining" storage of attributes
 * that are natively typed, as well as noting unbox targets. One current
 * notable limitation is that in the case of multiple inheritance, the box
 * and unbox support breaks. */
static void compute_allocation_strategy(PARROT_INTERP, PMC *WHAT, REPRP6opaque *repr) {
    STRING *type_str       = Parrot_str_new_constant(interp, "type");
    STRING *box_target_str = Parrot_str_new_constant(interp, "box_target");
    
    /* Create flat list that we'll analyze to determine allocation info. */
    PMC *flat_list = pmc_new(interp, enum_class_ResizablePMCArray);

    /* Compute index mapping table and get flat list of attributes. */
    repr->name_to_index_mapping = index_mapping_and_flat_list(interp, WHAT, flat_list);
    
    /* If we have no attributes in the index mapping, then our allocation stratergy
     * is that everything goes into the spill hash. The size to allocate is just
     * two pointers - a shared table pointer and one for the spill hash. */
    if (repr->name_to_index_mapping[0].class_key == NULL) {
        repr->allocation_size = sizeof(RakudoObjectCommonalities) + sizeof(PMC *);
    }

    /* Otherwise, we need to compute the allocation strategy.  */
    else {
        /* Initial size is for commonalities (e.g. shared table pointer) and
         * spill hash space. */
        INTVAL cur_size = sizeof(RakudoObjectCommonalities) + sizeof(PMC *);
        
        /* Get number of attributes and set up various counters. */
        INTVAL num_attrs    = VTABLE_elements(interp, flat_list);
        INTVAL cur_pmc_attr = 0;
        INTVAL cur_str_attr = 0;
        INTVAL i;

        /* Allocate offset array and GC mark info arrays. */
        repr->num_attributes      = num_attrs;
        repr->attribute_offsets   = mem_sys_allocate(num_attrs * sizeof(INTVAL));
        repr->gc_pmc_mark_offsets = mem_sys_allocate_zeroed(num_attrs * sizeof(INTVAL));
        repr->gc_str_mark_offsets = mem_sys_allocate_zeroed(num_attrs * sizeof(INTVAL));

        /* Go over the attributes and arrange their allocation. */
        for (i = 0; i < num_attrs; i++) {
            PMC *attr = VTABLE_get_pmc_keyed_int(interp, flat_list, i);

            /* Fetch its type and box target flag, if available. */
            PMC *type       = accessor_call(interp, attr, type_str);
            PMC *box_target = accessor_call(interp, attr, box_target_str);

            /* Work out what unboxed type it is, if any. Default to a boxed. */
            INTVAL unboxed_type = STORAGE_SPEC_BP_NONE;
            INTVAL bits         = sizeof(PMC *) * 8;
            if (!PMC_IS_NULL(type)) {
                /* Get the storage spec of the type and see what it wants. */
                storage_spec spec = REPR(type)->get_storage_spec(interp, REPR_PMC(type));
                if (spec.inlineable == STORAGE_SPEC_INLINED) {
                    /* Yes, it's something we'll inline. */
                    unboxed_type = spec.boxed_primitive;
                    bits = spec.bits;

                    /* Is it a target for box/unbox operations? */
                    if (VTABLE_get_bool(interp, box_target)) {
                        switch (unboxed_type) {
                        case STORAGE_SPEC_BP_INT:
                            if (repr->unbox_int_offset)
                                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                                        "Duplicate box_target for native int");
                            repr->unbox_int_offset = cur_size;
                            break;
                        case STORAGE_SPEC_BP_NUM:
                            if (repr->unbox_num_offset)
                                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                                        "Duplicate box_target for native num");
                            repr->unbox_num_offset = cur_size;
                            break;
                        case STORAGE_SPEC_BP_STR:
                            if (repr->unbox_str_offset)
                                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                                        "Duplicate box_target for native str");
                            repr->unbox_str_offset = cur_size;
                            break;
                        }
                    }
                }
            }

            /* Do allocation. */
            repr->attribute_offsets[i] = cur_size;
            if (unboxed_type == STORAGE_SPEC_BP_NONE) {
                repr->gc_pmc_mark_offsets[cur_pmc_attr] = cur_size;
                cur_pmc_attr++;
            }
            if (unboxed_type == STORAGE_SPEC_BP_STR) {
                repr->gc_str_mark_offsets[cur_str_attr] = cur_size;
                cur_str_attr++;
            }
            /* XXX TODO Alignment! Important when we get int1, int8, etc. */
            cur_size += bits / 8;
        }

        /* Finally, put computed allocation size in place. */
        repr->allocation_size = cur_size;
    }
}

/* Helper for reading an int at the specified offset. */
static INTVAL get_int_at_offset(void *data, INTVAL offset) {
    void *location = (char *)data + offset;
    return *((INTVAL *)location);
}

/* Helper for writing an int at the specified offset. */
static void set_int_at_offset(void *data, INTVAL offset, INTVAL value) {
    void *location = (char *)data + offset;
    *((INTVAL *)location) = value;
}

/* Helper for reading a num at the specified offset. */
static FLOATVAL get_num_at_offset(void *data, INTVAL offset) {
    void *location = (char *)data + offset;
    return *((FLOATVAL *)location);
}

/* Helper for writing a num at the specified offset. */
static void set_num_at_offset(void *data, INTVAL offset, FLOATVAL value) {
    void *location = (char *)data + offset;
    *((FLOATVAL *)location) = value;
}

/* Helper for reading a string at the specified offset. */
static STRING * get_str_at_offset(void *data, INTVAL offset) {
    void *location = (char *)data + offset;
    return *((STRING **)location);
}

/* Helper for writing a string at the specified offset. */
static void set_str_at_offset(void *data, INTVAL offset, STRING *value) {
    void *location = (char *)data + offset;
    *((STRING **)location) = value;
}

/* Helper for reading a PMC at the specified offset. */
static PMC * get_pmc_at_offset(void *data, INTVAL offset) {
    void *location = (char *)data + offset;
    return *((PMC **)location);
}

/* Helper for writing a PMC at the specified offset. */
static void set_pmc_at_offset(void *data, INTVAL offset, PMC *value) {
    void *location = (char *)data + offset;
    *((PMC **)location) = value;
}

/* Helper for finding a slot number. */
static INTVAL try_get_slot(PARROT_INTERP, REPRP6opaque *repr, PMC *class_key, STRING *name) {
    INTVAL slot = -1;
    if (repr->name_to_index_mapping) {
        P6opaqueNameMap *cur_map_entry = repr->name_to_index_mapping;
        while (cur_map_entry->class_key != NULL) {
            if (cur_map_entry->class_key == class_key) {
                PMC *slot_pmc = VTABLE_get_pmc_keyed_str(interp, cur_map_entry->name_map, name);
                if (!PMC_IS_NULL(slot_pmc))
                    slot = VTABLE_get_integer(interp, slot_pmc);
                break;
            }
            cur_map_entry++;
        }
    }
    return slot;
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

    /* Create type object and point it back at the STable. Note that we
     * do *not* populate the spill pointer at all, we leave it null. A
     * non-null value (even PMCNULL) is what indicates we have a defined
     * object. Yes, I know, it's sick. */
    st->WHAT = wrap_object(interp, obj);
    obj->common.stable = st_pmc;

    return st->WHAT;
}

/* Creates a new instance based on the type object. */
static PMC * instance_of(PARROT_INTERP, PMC *self, PMC *WHAT) {
    P6opaqueInstance *obj;

    /* Compute allocation strategy if we've not already done so. */
    REPRP6opaque *repr = P6O_REPR_STRUCT(self);
    if (!repr->allocation_size)
        compute_allocation_strategy(interp, WHAT, repr);

    /* Allocate and set up object instance. */
    obj = Parrot_gc_allocate_fixed_size_storage(interp, repr->allocation_size);
    memset(obj, 0, repr->allocation_size);
    obj->common.stable = STABLE_PMC(WHAT);

    /* The spill slot gets set to PMCNULL; it not being (C) NULL is what
     * lets us know it's actually a real instance, not a type object. */
    obj->spill = PMCNULL;
    
    return wrap_object(interp, obj);
}

/* Checks if a given object is defined (from the point of view of the
 * representation). */
static INTVAL defined(PARROT_INTERP, PMC *self, PMC *obj) {
    P6opaqueInstance *instance = (P6opaqueInstance *)PMC_data(obj);
    return instance->spill != NULL;
}

/* Gets the current value for an attribute. */
static PMC * get_attribute(PARROT_INTERP, PMC *self, PMC *obj, PMC *class_handle, STRING *name) {
    P6opaqueInstance *instance = (P6opaqueInstance *)PMC_data(obj);
    REPRP6opaque     *repr     = P6O_REPR_STRUCT(self);
    INTVAL            slot;

    /* Ensure it is a defined object. */
    if (!instance->spill)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Cannot access attributes in a type object");

    /* Try the slot allocation first. */
    slot = try_get_slot(interp, repr, class_handle, name);
    if (slot >= 0) {
        PMC    *result   = get_pmc_at_offset(instance, repr->attribute_offsets[slot]);
        return result ? result : PMCNULL;
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
    INTVAL            slot;

    /* Ensure it is a defined object. */
    if (!instance->spill)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Cannot access attributes in a type object");

    /* Try the slot allocation first. */
    slot = try_get_slot(interp, repr, class_handle, name);
    if (slot >= 0) {
        set_pmc_at_offset(instance, repr->attribute_offsets[slot], value);
        return;
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

    /* If there's spill storage, mark that. */
    if (!PMC_IS_NULL(instance->spill))
        Parrot_gc_mark_PMC_alive(interp, instance->spill);
    
    /* Mark contained PMC and string attributes, provided this is a
     * real object. */
    if (instance->spill) {
        REPRP6opaque *repr = P6O_REPR_STRUCT(self);
        INTVAL i;

        /* Mark PMCs. */
        for (i = 0; i < repr->num_attributes; i++) {
            INTVAL offset = repr->gc_pmc_mark_offsets[i];
            if (offset) {
                PMC *to_mark = get_pmc_at_offset(instance, offset);
                if (!PMC_IS_NULL(to_mark))
                    Parrot_gc_mark_PMC_alive(interp, to_mark);
            }
            else {
                break;
            }
        }

        /* Mark strings. */
        for (i = 0; i < repr->num_attributes; i++) {
            INTVAL offset = repr->gc_str_mark_offsets[i];
            if (offset) {
                STRING *to_mark = get_str_at_offset(instance, offset);
                if (to_mark)
                    Parrot_gc_mark_STRING_alive(interp, to_mark);
            }
            else {
                break;
            }
        }
    }
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *self, PMC *obj) {
    REPRP6opaque *repr = P6O_REPR_STRUCT(self);
    Parrot_gc_free_fixed_size_storage(interp, repr->allocation_size, PMC_data(obj));
    PMC_data(obj) = NULL;
}

/* This Parrot-specific addition to the API is used to mark a repr instance. */
static void gc_mark_repr(PARROT_INTERP, PMC *self) {
    REPRP6opaque *repr = P6O_REPR_STRUCT(self);
    if (repr->name_to_index_mapping) {
        P6opaqueNameMap *cur_map_entry = repr->name_to_index_mapping;
        while (cur_map_entry->class_key != NULL) {
            Parrot_gc_mark_PMC_alive(interp, cur_map_entry->name_map);
            cur_map_entry++;
        }
    }
}

/* This Parrot-specific addition to the API is used to free a repr instance. */
static void gc_free_repr(PARROT_INTERP, PMC *self) {
    REPRP6opaque *repr = P6O_REPR_STRUCT(self);
    if (repr->name_to_index_mapping)
        mem_sys_free(repr->name_to_index_mapping);
    mem_sys_free(PMC_data(self));
    PMC_data(self) = NULL;
}

/* Gets the storage specification for this representation. */
static storage_spec get_storage_spec(PARROT_INTERP, PMC *self) {
    storage_spec spec;
    spec.inlineable = STORAGE_SPEC_REFERENCE;
    spec.boxed_primitive = STORAGE_SPEC_BP_NONE;
    return spec;
}

/* Sets up an instance of this representation with function pointers in place
 * and no allocated slot storage. */
static PMC * repr_instance(PARROT_INTERP) {
    REPRP6opaque *repr;
    PMC *repr_pmc;

    /* Allocate and populate the representation function table. */
    repr = mem_allocate_zeroed_typed(REPRP6opaque);
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
    repr->common.gc_mark_repr = gc_mark_repr;
    repr->common.gc_free_repr = gc_free_repr;
    repr->common.get_storage_spec = get_storage_spec;

    /* Wrap it in a PMC. */
    return wrap_repr(interp, repr);
}

/* Initializes the P6opaque representation. */
PMC * P6opaque_initialize(PARROT_INTERP) {
    return repr_instance(interp);
}
