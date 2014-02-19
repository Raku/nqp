/* A mostly complete implementation of P6opaque, which supports inlining native
 * types, box/unbox of native types where it's declared possible and doing just
 * a single memory allocation in addition to the PMC header per object. For
 * single inheritance, memory is laid out parent to child, so that the slot
 * given to an attribute with be valid in all SI subclasses. For MI we just
 * go with the MRO to do slot allocations, but we never allow an actual index
 * lookup with a hint to take place and always slow-path it. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "P6opaque.h"

#define MAX(x, y) ((y) > (x) ? (y) : (x))

/* This representation's function pointer table. */
static REPROps *this_repr;

/* 6model object ID. */
static INTVAL smo_id = 0;

/* How do we go from type-object to a hash value? For now, we make an integer
 * that is the address of the STable struct, which not being subject to GC will
 * never move, and is unique per type object too. */
#define CLASS_KEY(c) ((INTVAL)PMC_data(STABLE_PMC(c)))

/* Helper to make an introspection call, possibly with :local. */
static PMC * introspection_call(PARROT_INTERP, PMC *WHAT, PMC *HOW, STRING *name, INTVAL local) {
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
    if (local)
        VTABLE_set_integer_keyed_str(interp, cappy, Parrot_str_new_constant(interp, "local"), 1);

    /* Call. */
    Parrot_pcc_invoke_from_sig_object(interp, meth, cappy);

    /* Grab result. */
    cappy = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), old_ctx);
    return VTABLE_get_pmc_keyed_int(interp, cappy, 0);
}

/* Locates all of the attributes. Puts them onto a flattened, ordered
 * list of attributes (populating the passed flat_list). Also builds
 * the index mapping for doing named lookups. Note index is not related
 * to the storage position. */
static PMC * index_mapping_and_flat_list(PARROT_INTERP, PMC *mro, P6opaqueREPRData *repr_data) {
    PMC    *flat_list      = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    PMC    *class_list     = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    PMC    *attr_map_list  = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    STRING *name_str       = Parrot_str_new_constant(interp, "name");
    INTVAL  current_slot   = 0;
    
    INTVAL num_classes, i;
    P6opaqueNameMap * result = NULL;

    /* Walk through the MRO backwards. */
    INTVAL mro_idx = VTABLE_elements(interp, mro);
    while (mro_idx)
    {
        /* Get current type in MRO. */
        PMC    *type_info     = VTABLE_get_pmc_keyed_int(interp, mro, --mro_idx);
        PMC    *current_class = decontainerize(interp, VTABLE_get_pmc_keyed_int(interp, type_info, 0));
        
        /* Get its local parents. */
        PMC    *parents     = VTABLE_get_pmc_keyed_int(interp, type_info, 2);
        INTVAL  num_parents = VTABLE_elements(interp, parents);

        /* Get attributes and iterate over them. */
        PMC *attributes = VTABLE_get_pmc_keyed_int(interp, type_info, 1);
        PMC *attr_map   = PMCNULL;
        PMC *attr_iter  = VTABLE_get_iter(interp, attributes);
        while (VTABLE_get_bool(interp, attr_iter)) {
            /* Get attribute. */
            PMC * attr_hash = VTABLE_shift_pmc(interp, attr_iter);

            /* Get its name. */
            PMC    *name_pmc = VTABLE_get_pmc_keyed_str(interp, attr_hash, name_str);
            STRING *name     = VTABLE_get_string(interp, name_pmc);

            /* Allocate a slot. */
            if (PMC_IS_NULL(attr_map))
                attr_map = Parrot_pmc_new(interp, enum_class_Hash);
            VTABLE_set_pmc_keyed_str(interp, attr_map, name,
                Parrot_pmc_new_init_int(interp, enum_class_Integer, current_slot));
            current_slot++;

            /* Push attr onto the flat list. */
            VTABLE_push_pmc(interp, flat_list, attr_hash);
        }

        /* Add to class list and map list. */
        VTABLE_push_pmc(interp, class_list, current_class);
        VTABLE_push_pmc(interp, attr_map_list, attr_map);

        /* If there's more than one parent, flag that we in an MI
         * situation. */
        if (num_parents > 1)
            repr_data->mi = 1;
    }

    /* We can now form the name map. */
    num_classes = VTABLE_elements(interp, class_list);
    result = (P6opaqueNameMap *) mem_sys_allocate_zeroed(sizeof(P6opaqueNameMap) * (1 + num_classes));
    for (i = 0; i < num_classes; i++) {
        result[i].class_key = VTABLE_get_pmc_keyed_int(interp, class_list, i);
        result[i].name_map  = VTABLE_get_pmc_keyed_int(interp, attr_map_list, i);
    }
    repr_data->name_to_index_mapping = result;

    return flat_list;
}

/* This works out an allocation strategy for the object. It takes care of
 * "inlining" storage of attributes that are natively typed, as well as
 * noting unbox targets. */
static void compute_allocation_strategy(PARROT_INTERP, PMC *repr_info, P6opaqueREPRData *repr_data) {
    STRING *type_str       = Parrot_str_new_constant(interp, "type");
    STRING *box_target_str = Parrot_str_new_constant(interp, "box_target");
    STRING *avcont_str     = Parrot_str_new_constant(interp, "auto_viv_container");
    STRING *pos_del_str    = Parrot_str_new_constant(interp, "positional_delegate");
    STRING *ass_del_str    = Parrot_str_new_constant(interp, "associative_delegate");
    PMC    *flat_list;

    /*
     * We have to block GC mark here. Because "repr" is assotiated with some
     * PMC which is not accessible in this function. And we have to write
     * barrier this PMC because we are poking inside it guts directly. We
     * do have WB in caller function, but it can be triggered too late is
     * any of allocation will cause GC run.
     *
     * This is kind of minor evil until after I'll find better solution.
     */
    Parrot_block_GC_mark(interp);

    /* Compute index mapping table and get flat list of attributes. */
    flat_list = index_mapping_and_flat_list(interp, repr_info, repr_data);
    
    /* If we have no attributes in the index mapping, then just the header. */
    if (repr_data->name_to_index_mapping[0].class_key == NULL) {
        repr_data->allocation_size = sizeof(P6opaqueInstance);
    }

    /* Otherwise, we need to compute the allocation strategy.  */
    else {
        /* We track the size of the body part, since that's what we want offsets into. */
        INTVAL cur_size = 0;
        
        /* Get number of attributes and set up various counters. */
        INTVAL num_attrs        = VTABLE_elements(interp, flat_list);
        INTVAL info_alloc       = num_attrs == 0 ? 1 : num_attrs;
        INTVAL cur_pmc_attr     = 0;
        INTVAL cur_init_slot    = 0;
        INTVAL cur_mark_slot    = 0;
        INTVAL cur_cleanup_slot = 0;
        INTVAL cur_unbox_slot   = 0;
        INTVAL i;

        /* Allocate offset array and GC mark info arrays. */
        repr_data->num_attributes      = num_attrs;
        repr_data->attribute_offsets   = (INTVAL *) mem_sys_allocate(info_alloc * sizeof(INTVAL));
        repr_data->flattened_stables   = (STable **) mem_sys_allocate_zeroed(info_alloc * sizeof(PMC *));
        repr_data->unbox_int_slot      = -1;
        repr_data->unbox_num_slot      = -1;
        repr_data->unbox_str_slot      = -1;
        repr_data->pos_del_slot        = -1;
        repr_data->ass_del_slot        = -1;

        /* Go over the attributes and arrange their allocation. */
        for (i = 0; i < num_attrs; i++) {
            PMC *attr_hash = VTABLE_get_pmc_keyed_int(interp, flat_list, i);

            /* Fetch its type and box target flag, if available. */
            PMC *type       = VTABLE_get_pmc_keyed_str(interp, attr_hash, type_str);
            PMC *box_target = VTABLE_get_pmc_keyed_str(interp, attr_hash, box_target_str);
            PMC *av_cont    = VTABLE_get_pmc_keyed_str(interp, attr_hash, avcont_str);

            /* Work out what unboxed type it is, if any. Default to a boxed. */
            INTVAL unboxed_type = STORAGE_SPEC_BP_NONE;
            INTVAL bits         = sizeof(PMC *) * 8;
            INTVAL align        = ALIGNOF1(PMC *);

            /* True if this member is flattened into the object body. */
            INTVAL inlined      = 0;

            if (!PMC_IS_NULL(type)) {
                /* Get the storage spec of the type and see what it wants. */
                storage_spec spec = REPR(type)->get_storage_spec(interp, STABLE(type));
                if (spec.inlineable == STORAGE_SPEC_INLINED) {
                    /* Yes, it's something we'll flatten. */
                    unboxed_type = spec.boxed_primitive;
                    bits = spec.bits;
                    align = spec.align;
                    repr_data->flattened_stables[i] = STABLE(type);
                    inlined = 1;
                    
                    if (bits % 8) bits += 8 - bits%8;

                    /* Does it need special initialization? */
                    if (REPR(type)->initialize) {
                        if (!repr_data->initialize_slots)
                            repr_data->initialize_slots = (INTVAL *) mem_sys_allocate_zeroed((info_alloc + 1) * sizeof(INTVAL));
                        repr_data->initialize_slots[cur_init_slot] = i;
                        cur_init_slot++;
                    }
                    
                    /* Does it have special GC needs? */
                    if (REPR(type)->gc_mark) {
                        if (!repr_data->gc_mark_slots)
                            repr_data->gc_mark_slots = (INTVAL *) mem_sys_allocate_zeroed((info_alloc + 1) * sizeof(INTVAL));
                        repr_data->gc_mark_slots[cur_mark_slot] = i;
                        cur_mark_slot++;
                    }
                    if (REPR(type)->gc_cleanup) {
                        if (!repr_data->gc_cleanup_slots)
                            repr_data->gc_cleanup_slots = (INTVAL *) mem_sys_allocate_zeroed((info_alloc + 1) * sizeof(INTVAL));
                        repr_data->gc_cleanup_slots[cur_cleanup_slot] = i;
                        cur_cleanup_slot++;
                    }

                    /* Is it a target for box/unbox operations? */
                    if (!PMC_IS_NULL(box_target) && VTABLE_get_bool(interp, box_target)) {
                        /* If it boxes a primitive, note that. */
                        switch (unboxed_type) {
                        case STORAGE_SPEC_BP_INT:
                            if (repr_data->unbox_int_slot >= 0)
                                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                                        "Duplicate box_target for native int");
                            repr_data->unbox_int_slot = i;
                            break;
                        case STORAGE_SPEC_BP_NUM:
                            if (repr_data->unbox_num_slot >= 0)
                                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                                        "Duplicate box_target for native num");
                            repr_data->unbox_num_slot = i;
                            break;
                        case STORAGE_SPEC_BP_STR:
                            if (repr_data->unbox_str_slot >= 0)
                                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                                        "Duplicate box_target for native str");
                            repr_data->unbox_str_slot = i;
                            break;
                        default:
                            /* nothing, just suppress 'missing default' warning */
                            break;
                        }
                        
                        /* Also list in the by-repr unbox list. */
                        if (repr_data->unbox_slots == NULL)
                            repr_data->unbox_slots = (P6opaqueBoxedTypeMap *) mem_sys_allocate_zeroed(info_alloc * sizeof(P6opaqueBoxedTypeMap));
                        repr_data->unbox_slots[cur_unbox_slot].repr_id = REPR(type)->ID;
                        repr_data->unbox_slots[cur_unbox_slot].slot = i;
                        cur_unbox_slot++;
                    }
                }
            }
            
            /* Do allocation. Before updating the size of the structure, we
             * make sure the object will be aligned appropriately. */
            if (cur_size % align) {
                cur_size += align - cur_size % align;
            }
            repr_data->attribute_offsets[i] = cur_size;

            /* Handle PMC attributes, which need marking and may have auto-viv needs. */
            if (!inlined) {
                if (!repr_data->gc_pmc_mark_offsets)
                    repr_data->gc_pmc_mark_offsets = (INTVAL *) mem_sys_allocate_zeroed(info_alloc * sizeof(INTVAL));
                repr_data->gc_pmc_mark_offsets[cur_pmc_attr] = cur_size;
                cur_pmc_attr++;
                if (!PMC_IS_NULL(av_cont)) {
                    if (!repr_data->auto_viv_values)
                        repr_data->auto_viv_values = (PMC **) mem_sys_allocate_zeroed(info_alloc * sizeof(PMC *));
                    repr_data->auto_viv_values[i] = av_cont;
                }
            }
            
            /* Is it a positional or associative delegate? */
            if (VTABLE_exists_keyed_str(interp, attr_hash, pos_del_str)) {
                if (repr_data->pos_del_slot != -1)
                    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                        "Duplicate positional delegate attribute");
                if (unboxed_type == STORAGE_SPEC_BP_NONE)
                    repr_data->pos_del_slot = i;
                else
                    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                        "Positional delegate attribute must be a reference type");
            }
            if (VTABLE_exists_keyed_str(interp, attr_hash, ass_del_str)) {
                if (repr_data->ass_del_slot != -1)
                    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                        "Duplicate associative delegate attribute");
                if (unboxed_type == STORAGE_SPEC_BP_NONE)
                    repr_data->ass_del_slot = i;
                else
                    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                        "Associative delegate attribute must be a reference type");
            }
            
            /* Increment object size by the allocated bytes. */
            cur_size += bits / 8;
        }

        /* Finally, put computed allocation size in place; it's body size plus
         * header size. Also number of markables and sentinels. */
        repr_data->allocation_size = cur_size + sizeof(P6opaqueInstance);
        repr_data->gc_pmc_mark_offsets_count = cur_pmc_attr;
        if (repr_data->initialize_slots)
            repr_data->initialize_slots[cur_init_slot] = -1;
        if (repr_data->gc_mark_slots)
            repr_data->gc_mark_slots[cur_mark_slot] = -1;
        if (repr_data->gc_cleanup_slots)
            repr_data->gc_cleanup_slots[cur_cleanup_slot] = -1;
    }

    Parrot_unblock_GC_mark(interp);
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
static INTVAL try_get_slot(PARROT_INTERP, P6opaqueREPRData *repr_data, PMC *class_key, STRING *name) {
    INTVAL slot = -1;
    if (repr_data->name_to_index_mapping) {
        P6opaqueNameMap *cur_map_entry = repr_data->name_to_index_mapping;
        while (cur_map_entry->class_key != NULL) {
            if (cur_map_entry->class_key == class_key) {
                if (!PMC_IS_NULL(cur_map_entry->name_map)) {
                    PMC *slot_pmc = VTABLE_get_pmc_keyed_str(interp, cur_map_entry->name_map, name);
                    if (!PMC_IS_NULL(slot_pmc))
                        slot = VTABLE_get_integer(interp, slot_pmc);
                    break;
                }
                else {
                    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                        "Null attribute map for P6opaque in class '%Ss'",
                        VTABLE_get_string(interp, introspection_call(interp,
                            class_key, STABLE(class_key)->HOW,
                            Parrot_str_new_constant(interp, "name"), 0)));
                }
            }
            cur_map_entry++;
        }
    }
    return slot;
}

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC * type_object_for(PARROT_INTERP, PMC *HOW) {
    /* Create new object instance. */
    P6opaqueInstance *obj = mem_allocate_zeroed_typed(P6opaqueInstance);

    /* Build an STable. */
    PMC *st_pmc = create_stable(interp, this_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);
    
    /* Create REPR data structure and hand it off the STable. */
    st->REPR_data = mem_allocate_zeroed_typed(P6opaqueREPRData);

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
    P6opaqueREPRData * repr_data = (P6opaqueREPRData *) st->REPR_data;
    PMC *attr_info = VTABLE_get_pmc_keyed_str(interp, repr_info,
        Parrot_str_new_constant(interp, "attribute"));
    compute_allocation_strategy(interp, attr_info, repr_data);
    PARROT_GC_WRITE_BARRIER(interp, st->stable_pmc);
}

/* Creates a new instance based on the type object. */
static PMC * allocate(PARROT_INTERP, STable *st) {
    P6opaqueInstance * obj;

    /* Compute allocation strategy if we've not already done so. */
    P6opaqueREPRData * repr_data = (P6opaqueREPRData *) st->REPR_data;
    if (!repr_data->allocation_size)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Representation must be composed before it can be allocated");

    /* Allocate and set up object instance. */
    obj = (P6opaqueInstance *) Parrot_gc_allocate_fixed_size_storage(interp, repr_data->allocation_size);
    memset(obj, 0, repr_data->allocation_size);
    obj->common.stable = st->stable_pmc;

    return wrap_object(interp, obj);
}

/* Initialize a new instance. */
static void initialize(PARROT_INTERP, STable *st, void *data) {
    P6opaqueREPRData * repr_data = (P6opaqueREPRData *) st->REPR_data;
    if (repr_data->initialize_slots) {
        INTVAL i;
        for (i = 0; repr_data->initialize_slots[i] >= 0; i++) {
            INTVAL  offset = repr_data->attribute_offsets[repr_data->initialize_slots[i]];
            STable *st     = repr_data->flattened_stables[repr_data->initialize_slots[i]];
            st->REPR->initialize(interp, st, (char *)data + offset);
        }
    }
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    P6opaqueREPRData * repr_data = (P6opaqueREPRData *) st->REPR_data;
    INTVAL i;

    /* Copy main body. */
    memcpy(dest, src, repr_data->allocation_size - sizeof(P6opaqueInstance));

    /* Flattened in REPRs need a chance to copy 'emselves. */
    for (i = 0; i < repr_data->num_attributes; i++) {
        STable *st_copy = repr_data->flattened_stables[i];
        if (st_copy) {
            INTVAL offset = repr_data->attribute_offsets[i];
            st_copy->REPR->copy_to(interp, st_copy, (char*)src + offset, (char*)dest + offset);
        }
    }
}

/* Helper for complaining about attribute access errors. */
PARROT_DOES_NOT_RETURN
static void no_such_attribute(PARROT_INTERP, const char *action, PMC *class_handle, STRING *name) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Can not %s attribute '%Ss' declared in class '%Ss' with this object",
            action, name, VTABLE_get_string(interp, introspection_call(interp,
                class_handle, STABLE(class_handle)->HOW,
                Parrot_str_new_constant(interp, "name"), 0)));
}

/* Gets the current value for an attribute. */
static PMC * get_attribute_boxed(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    INTVAL            slot;

    /* Try the slot allocation first. */
    slot = hint >= 0 && !(repr_data->mi) ? hint :
        try_get_slot(interp, repr_data, class_handle, name);
    if (slot >= 0) {
        if (!repr_data->flattened_stables[slot]) {
            PMC *result = get_pmc_at_offset(data, repr_data->attribute_offsets[slot]);
            if (result) {
                return result;
            }
            else {
                /* Maybe we know how to auto-viv it to a container. */
                if (repr_data->auto_viv_values) {
                    PMC *value = repr_data->auto_viv_values[slot];
                    if (value != NULL) {
                        if (IS_CONCRETE(value)) {
                            PMC *cloned = REPR(value)->allocate(interp, STABLE(value));
                            REPR(value)->copy_to(interp, STABLE(value), OBJECT_BODY(value), OBJECT_BODY(cloned));
                            PARROT_GC_WRITE_BARRIER(interp, cloned);
                            set_pmc_at_offset(data, repr_data->attribute_offsets[slot], cloned);
                            return cloned;
                        }
                        else {
                            set_pmc_at_offset(data, repr_data->attribute_offsets[slot], value);
                            return value;
                        }
                    }
                }
                return PMCNULL;
            }
        }
        else {
            /* Need to produce a boxed version of this attribute. */
            STable *st  = repr_data->flattened_stables[slot];
            PMC *result = st->REPR->allocate(interp, st);
            st->REPR->copy_to(interp, st, (char *)data + repr_data->attribute_offsets[slot],
                OBJECT_BODY(result));
            PARROT_GC_WRITE_BARRIER(interp, result);

            return result;
        }
    }
    
    /* Otherwise, complain that the attribute doesn't exist. */
    no_such_attribute(interp, "get", class_handle, name);
}

static void get_attribute_native(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, NativeValue *value) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    INTVAL            slot;

    /* Look up slot, then offset and compute address. */
    slot = hint >= 0 && !(repr_data->mi) ? hint :
        try_get_slot(interp, repr_data, class_handle, name);
    if (slot >= 0) {
        STable *st = repr_data->flattened_stables[slot];
        void *ptr = ((char *)data) + repr_data->attribute_offsets[slot];
        if (st) {
            switch (value->type) {
            case NATIVE_VALUE_INT:
                value->value.intval = st->REPR->box_funcs->get_int(interp, st, ptr);
                break;
            case NATIVE_VALUE_FLOAT:
                value->value.floatval = st->REPR->box_funcs->get_num(interp, st, ptr);
                break;
            case NATIVE_VALUE_STRING:
                value->value.stringval = st->REPR->box_funcs->get_str(interp, st, ptr);
                break;
            default:
                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "Bad value of NativeValue.type: %d", value->type);
            }
            return;
        }
        else {
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Cannot read by reference from non-flattened attribute '%Ss' on class '%Ss'",
                name, VTABLE_get_string(interp, introspection_call(interp,
                    class_handle, STABLE(class_handle)->HOW,
                    Parrot_str_new_constant(interp, "name"), 0)));
        }
    }
    
    /* Otherwise, complain that the attribute doesn't exist. */
    no_such_attribute(interp, "get", class_handle, name);
}

/* Binds the given value to the specified attribute. */
static void bind_attribute_boxed(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, PMC *value) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    INTVAL            slot;

    /* Try the slot allocation first. */
    slot = hint >= 0 && !(repr_data->mi) ? hint :
        try_get_slot(interp, repr_data, class_handle, name);
    if (slot >= 0) {
        STable *st = repr_data->flattened_stables[slot];
        if (st) {
            if (value->vtable->base_type == smo_id && st == STABLE(value))
                st->REPR->copy_to(interp, st, OBJECT_BODY(value),
                    (char *)data + repr_data->attribute_offsets[slot]);
            else
                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "Type mismatch when storing value to attribute '%Ss' on class '%Ss'",
                    name, VTABLE_get_string(interp, introspection_call(interp,
                        class_handle, STABLE(class_handle)->HOW,
                        Parrot_str_new_constant(interp, "name"), 0)));
        }
        else {
            set_pmc_at_offset(data, repr_data->attribute_offsets[slot], value);
        }
    }
    else {
        /* Otherwise, complain that the attribute doesn't exist. */
        no_such_attribute(interp, "bind", class_handle, name);
    }
}
static void bind_attribute_native(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, NativeValue *value) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    INTVAL            slot;

    /* Try to find the slot. */
    slot = hint >= 0 && !(repr_data->mi) ? hint :
        try_get_slot(interp, repr_data, class_handle, name);
    if (slot >= 0) {
        STable *st = repr_data->flattened_stables[slot];
        void *ptr = (char *)data + repr_data->attribute_offsets[slot];
        if (st) {
            switch (value->type) {
            case NATIVE_VALUE_INT:
                st->REPR->box_funcs->set_int(interp, st, ptr, value->value.intval);
                break;
            case NATIVE_VALUE_FLOAT:
                st->REPR->box_funcs->set_num(interp, st, ptr, value->value.floatval);
                break;
            case NATIVE_VALUE_STRING:
                st->REPR->box_funcs->set_str(interp, st, ptr, value->value.stringval);
                break;
            default:
                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "Bad value of NativeValue.type: %d", value->type);
            }
            return;
        }
        else
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "Cannot bind by reference to non-flattened attribute '%Ss' on class '%Ss'",
                name, VTABLE_get_string(interp, introspection_call(interp,
                    class_handle, STABLE(class_handle)->HOW,
                    Parrot_str_new_constant(interp, "name"), 0)));
    }
    else {
        /* Otherwise, complain that the attribute doesn't exist. */
        no_such_attribute(interp, "bind", class_handle, name);
    }
}

/* Checks if an attribute has been initialized. */
static INTVAL is_attribute_initialized(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    INTVAL slot = try_get_slot(interp, repr_data, class_handle, name);
    if (slot >= 0)
        return NULL != get_pmc_at_offset(data, repr_data->attribute_offsets[slot]);
    else
        no_such_attribute(interp, "initializedness check", class_handle, name);
}

/* Gets the hint for the given attribute ID. */
static INTVAL hint_for(PARROT_INTERP, STable *st, PMC *class_key, STRING *name) {
    INTVAL slot;
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (!repr_data->allocation_size)
        return NO_HINT;
    slot = try_get_slot(interp, repr_data, class_key, name);
    return slot >= 0 ? slot : NO_HINT;
}

/* Used with boxing. Sets an integer value, for representations that can hold
 * one. */
static void set_int(PARROT_INTERP, STable *st, void *data, INTVAL value) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->unbox_int_slot >= 0) {
        STable *st = repr_data->flattened_stables[repr_data->unbox_int_slot];
        st->REPR->box_funcs->set_int(interp, st, (char *)data + repr_data->attribute_offsets[repr_data->unbox_int_slot], value);
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "This type cannot box a native integer");
    }
}

/* Used with boxing. Gets an integer value, for representations that can
 * hold one. */
static INTVAL get_int(PARROT_INTERP, STable *st, void *data) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->unbox_int_slot >= 0) {
        STable *st = repr_data->flattened_stables[repr_data->unbox_int_slot];
        return st->REPR->box_funcs->get_int(interp, st, (char *)data + repr_data->attribute_offsets[repr_data->unbox_int_slot]);
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "This type cannot unbox to a native integer");
    }
}

/* Used with boxing. Sets a floating point value, for representations that can
 * hold one. */
static void set_num(PARROT_INTERP, STable *st, void *data, FLOATVAL value) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->unbox_num_slot >= 0) {
        STable *st = repr_data->flattened_stables[repr_data->unbox_num_slot];
        st->REPR->box_funcs->set_num(interp, st, (char *)data + repr_data->attribute_offsets[repr_data->unbox_num_slot], value);
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "This type cannot box a native number");
    }
}

/* Used with boxing. Gets a floating point value, for representations that can
 * hold one. */
static FLOATVAL get_num(PARROT_INTERP, STable *st, void *data) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->unbox_num_slot >= 0) {
        STable *st = repr_data->flattened_stables[repr_data->unbox_num_slot];
        return st->REPR->box_funcs->get_num(interp, st, (char *)data + repr_data->attribute_offsets[repr_data->unbox_num_slot]);
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "This type cannot unbox to a native number");
    }
}

/* Used with boxing. Sets a string value, for representations that can hold
 * one. */
static void set_str(PARROT_INTERP, STable *st, void *data, STRING *value) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->unbox_str_slot >= 0) {
        STable *st = repr_data->flattened_stables[repr_data->unbox_str_slot];
        st->REPR->box_funcs->set_str(interp, st, (char *)data + repr_data->attribute_offsets[repr_data->unbox_str_slot], value);
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "This type cannot box a native string");
    }
}

/* Used with boxing. Gets a string value, for representations that can hold
 * one. */
static STRING * get_str(PARROT_INTERP, STable *st, void *data) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->unbox_str_slot >= 0) {
        STable *st = repr_data->flattened_stables[repr_data->unbox_str_slot];
        return st->REPR->box_funcs->get_str(interp, st, (char *)data + repr_data->attribute_offsets[repr_data->unbox_str_slot]);
    }
    else {
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "This type cannot unbox to a native string");
    }
}

/* Some objects serve primarily as boxes of others, inlining them. This gets
 * gets the reference to such things, using the representation ID to distinguish
 * them. */
static void * get_boxed_ref(PARROT_INTERP, STable *st, void *data, INTVAL repr_id) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->unbox_slots) {
        INTVAL i;
        for (i = 0; i < repr_data->num_attributes; i++)
            if (repr_data->unbox_slots[i].repr_id == repr_id)
                return (char *)data + repr_data->attribute_offsets[repr_data->unbox_slots[i].slot];
            else if (repr_data->unbox_slots[i].repr_id == 0)
                break;
    }
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "get_boxed_ref could not unbox for the given representation");
    return NULL;
}

/* Positional delegation. */
PARROT_DOES_NOT_RETURN
static void die_no_pos_del(PARROT_INTERP) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "This type does not support positional operations");
}
static void at_pos_native(PARROT_INTERP, STable *st, void *data, INTVAL index, NativeValue *value) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->pos_del_slot == -1)
        die_no_pos_del(interp);
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "This type does not support at_pos_native");
}
static PMC * at_pos_boxed(PARROT_INTERP, STable *st, void *data, INTVAL index) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->pos_del_slot == -1)
        die_no_pos_del(interp);
    return VTABLE_get_pmc_keyed_int(interp,
        get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->pos_del_slot]),
        index);
}
static void bind_pos_native(PARROT_INTERP, STable *st, void *data, INTVAL index, NativeValue *value) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->pos_del_slot == -1)
        die_no_pos_del(interp);
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "This type does not support bind_pos_native");
}
static void bind_pos_boxed(PARROT_INTERP, STable *st, void *data, INTVAL index, PMC *obj) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->pos_del_slot == -1)
        die_no_pos_del(interp);
    VTABLE_set_pmc_keyed_int(interp,
        get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->pos_del_slot]),
        index, obj);
}
static void push_boxed(PARROT_INTERP, STable *st, void *data, PMC *obj) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->pos_del_slot == -1)
        die_no_pos_del(interp);
    VTABLE_push_pmc(interp,
        get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->pos_del_slot]),
        obj);
}
static PMC * pop_boxed(PARROT_INTERP, STable *st, void *data) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->pos_del_slot == -1)
        die_no_pos_del(interp);
    return VTABLE_pop_pmc(interp,
        get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->pos_del_slot]));
}
static void unshift_boxed(PARROT_INTERP, STable *st, void *data, PMC *obj) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->pos_del_slot == -1)
        die_no_pos_del(interp);
    VTABLE_unshift_pmc(interp,
        get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->pos_del_slot]),
        obj);
}
static PMC * shift_boxed(PARROT_INTERP, STable *st, void *data) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->pos_del_slot == -1)
        die_no_pos_del(interp);
    return VTABLE_shift_pmc(interp,
        get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->pos_del_slot]));
}
static STable * get_elem_stable(PARROT_INTERP, STable *st) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->pos_del_slot == -1)
        die_no_pos_del(interp);
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "This type does not support get_elem_stable");
}
PARROT_DOES_NOT_RETURN
static void die_no_ass_del(PARROT_INTERP) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "This type does not support associative operations");
}
static PMC * at_key_boxed(PARROT_INTERP, STable *st, void *data, STRING *key) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->ass_del_slot == -1)
        die_no_ass_del(interp);
    return VTABLE_get_pmc_keyed_str(interp,
        get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->ass_del_slot]),
        key);
}
static void bind_key_boxed(PARROT_INTERP, STable *st, void *data, STRING *key, PMC *value) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->ass_del_slot == -1)
        die_no_ass_del(interp);
    VTABLE_set_pmc_keyed_str(interp,
        get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->ass_del_slot]),
        key, value);
}
static INTVAL exists_key(PARROT_INTERP, STable *st, void *data, STRING *key) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->ass_del_slot == -1)
        die_no_ass_del(interp);
    return VTABLE_exists_keyed_str(interp,
        get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->ass_del_slot]),
        key);
}
static void delete_key(PARROT_INTERP, STable *st, void *data, STRING *key) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->ass_del_slot == -1)
        die_no_ass_del(interp);
    VTABLE_delete_keyed_str(interp,
        get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->ass_del_slot]),
        key);
}
static INTVAL elems(PARROT_INTERP, STable *st, void *data) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->pos_del_slot >= 0)
        return VTABLE_elements(interp,
            get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->pos_del_slot]));
    else if (repr_data->ass_del_slot >= 0)
        return VTABLE_elements(interp,
            get_pmc_at_offset(data, repr_data->attribute_offsets[repr_data->ass_del_slot]));
    else
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "This type does not support elems");
}

/* This Parrot-specific addition to the API is used to mark an object. */
static void gc_mark(PARROT_INTERP, STable *st, void *data) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    INTVAL i;

    /* Mark PMCs. */
    if (repr_data->gc_pmc_mark_offsets) {
        for (i = 0; i < repr_data->gc_pmc_mark_offsets_count; i++) {
            INTVAL offset = repr_data->gc_pmc_mark_offsets[i];
            PMC *to_mark  = get_pmc_at_offset(data, offset);
            if (!PMC_IS_NULL(to_mark))
                Parrot_gc_mark_PMC_alive(interp, to_mark);
        }
    }

    /* Mark any nested reprs that need it. */
    if (repr_data->gc_mark_slots) {
        for (i = 0; repr_data->gc_mark_slots[i] >= 0; i++) {
            INTVAL  offset = repr_data->attribute_offsets[repr_data->gc_mark_slots[i]];
            STable *st     = repr_data->flattened_stables[repr_data->gc_mark_slots[i]];
            st->REPR->gc_mark(interp, st, (char *)data + offset);
        }
    }
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)STABLE(obj)->REPR_data;
    INTVAL i;

    /* Cleanup any nested reprs that need it. */
    if (repr_data->gc_cleanup_slots) {
        for (i = 0; repr_data->gc_cleanup_slots[i] >= 0; i++) {
            INTVAL  offset = repr_data->attribute_offsets[repr_data->gc_cleanup_slots[i]];
            STable *st     = repr_data->flattened_stables[repr_data->gc_cleanup_slots[i]];
            st->REPR->gc_cleanup(interp, st, (char *)OBJECT_BODY(obj) + offset);
        }
    }
    if (repr_data->allocation_size && !PObj_flag_TEST(private0, obj))
        Parrot_gc_free_fixed_size_storage(interp, repr_data->allocation_size, PMC_data(obj));
    else
        mem_sys_free(PMC_data(obj));
    PMC_data(obj) = NULL;
}

/* This Parrot-specific addition to the API is used to mark a repr's
 * per-type data. */
static void gc_mark_repr_data(PARROT_INTERP, STable *st) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->name_to_index_mapping) {
        P6opaqueNameMap *cur_map_entry = repr_data->name_to_index_mapping;
        while (cur_map_entry->class_key != NULL) {
            Parrot_gc_mark_PMC_alive(interp, cur_map_entry->name_map);
            cur_map_entry++;
        }
    }
    if (repr_data->auto_viv_values) {
        int i;
        for (i = 0; i < repr_data->num_attributes; i++) {
            PMC *to_mark = repr_data->auto_viv_values[i];
            if (to_mark != NULL && !PMC_IS_NULL(to_mark))
                Parrot_gc_mark_PMC_alive(interp, to_mark);
        }
    }
}

/* This Parrot-specific addition to the API is used to free a repr instance. */
static void gc_free_repr_data(PARROT_INTERP, STable *st) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    if (repr_data->name_to_index_mapping)
        mem_sys_free(repr_data->name_to_index_mapping);
    if (repr_data->gc_pmc_mark_offsets)
        mem_sys_free(repr_data->gc_pmc_mark_offsets);
    if (repr_data->auto_viv_values)
        mem_sys_free(repr_data->auto_viv_values);
    if (repr_data->initialize_slots)
        mem_sys_free(repr_data->initialize_slots);
    if (repr_data->gc_mark_slots)
        mem_sys_free(repr_data->gc_mark_slots);
    if (repr_data->gc_cleanup_slots)
        mem_sys_free(repr_data->gc_cleanup_slots);
    mem_sys_free(st->REPR_data);
    st->REPR_data = NULL;
}

/* Gets the storage specification for this representation. */
static storage_spec get_storage_spec(PARROT_INTERP, STable *st) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    storage_spec spec;
    spec.inlineable = STORAGE_SPEC_REFERENCE;
    spec.boxed_primitive = STORAGE_SPEC_BP_NONE;
    spec.can_box = 0;
    spec.bits = sizeof(void *);
    spec.align = ALIGNOF1(void *);
    if (repr_data->unbox_int_slot >= 0)
        spec.can_box += STORAGE_SPEC_CAN_BOX_INT;
    if (repr_data->unbox_num_slot >= 0)
        spec.can_box += STORAGE_SPEC_CAN_BOX_NUM;
    if (repr_data->unbox_str_slot >= 0)
        spec.can_box += STORAGE_SPEC_CAN_BOX_STR;
    return spec;
}

/* Performs a change of type, where possible. */
static void change_type(PARROT_INTERP, PMC *obj, PMC *new_type) {
    P6opaqueInstance *instance      = (P6opaqueInstance *)PMC_data(obj);
    P6opaqueREPRData *cur_repr_data = (P6opaqueREPRData *)STABLE(obj)->REPR_data;
    P6opaqueREPRData *new_repr_data = (P6opaqueREPRData *)STABLE(new_type)->REPR_data;
    STRING           *mro_str       = Parrot_str_new_constant(interp, "mro");
    PMC              *cur_mro, *new_mro;
    INTVAL            cur_mro_elems, new_mro_elems, mro_is_suffix;
    
    /* Ensure we're not trying to change the type of a type object. */
    if (PObj_flag_TEST(private0, obj))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Cannot change the type of a type object");
    
    /* Ensure that the destination type REPR is P6opaque also. */
    if (REPR(obj) != REPR(new_type))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque can only change type to another type with P6opaque REPR");

    /* Ensure that MRO of new type has current type's MRO as a suffix. */
    mro_is_suffix = 1;
    cur_mro = introspection_call(interp, STABLE(obj)->WHAT, STABLE(obj)->HOW, mro_str, 0);
    new_mro = introspection_call(interp, STABLE(new_type)->WHAT, STABLE(new_type)->HOW, mro_str, 0);
    cur_mro_elems = VTABLE_elements(interp, cur_mro);
    new_mro_elems = VTABLE_elements(interp, new_mro);
    if (new_mro_elems >= cur_mro_elems) {
        INTVAL start = new_mro_elems - cur_mro_elems;
        INTVAL i;
        for (i = 0; i < cur_mro_elems; i++) {
            PMC *cur_elem = VTABLE_get_pmc_keyed_int(interp, cur_mro, i);
            PMC *new_elem = VTABLE_get_pmc_keyed_int(interp, new_mro, i + start);
            if (decontainerize(interp, cur_elem) != decontainerize(interp, new_elem)) {
                mro_is_suffix = 0;
                break;
            }
        }
    }
    else {
        mro_is_suffix = 0;
    }
    if (!mro_is_suffix)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "P6opaque only supports type changes where the MRO of the original type is a suffix of the MRO of the new type");
    
    /* If the new REPR never calculated it's object layout, do so now. */
    if (!new_repr_data->allocation_size)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Representation must be composed before change_type");
    
    /* Reallocate ourself to the new allocation size, if needed, and
     * ensure new chunk of the memory is zeroed. Note that we can't
     * really re-alloc, we need to go deal with the fixed size pool
     * allocator. */
    if (new_repr_data->allocation_size > cur_repr_data->allocation_size) {
        P6opaqueInstance *new_body = (P6opaqueInstance *) Parrot_gc_allocate_fixed_size_storage(interp, new_repr_data->allocation_size);
        memset(new_body, 0, new_repr_data->allocation_size);
        memcpy(new_body, instance, cur_repr_data->allocation_size);
        PMC_data(obj) = new_body;
        Parrot_gc_free_fixed_size_storage(interp, cur_repr_data->allocation_size, instance);
        instance = new_body;
    }
    
    /* Finally, we're ready to switch the S-Table pointer. */
    instance->common.stable = STABLE_PMC(new_type);
    PARROT_GC_WRITE_BARRIER(interp, obj);
}

/* Serializes the data. */
static void serialize(PARROT_INTERP, STable *st, void *data, SerializationWriter *writer) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    INTVAL num_attributes, i;
    
    if (!repr_data->allocation_size)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Representation must be composed before it can be serialized");
    
    num_attributes = repr_data->num_attributes;
    for (i = 0; i < num_attributes; i++) {
        INTVAL a_offset = repr_data->attribute_offsets[i];
        STable *a_st = repr_data->flattened_stables[i];
        if (a_st) {
            if (a_st->REPR->serialize)
                a_st->REPR->serialize(interp, a_st, (char *)data + a_offset, writer);
            else
                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "Missing serialize REPR function");
        }
        else
            writer->write_ref(interp, writer, get_pmc_at_offset(data, a_offset));
    }
}

/* Deserializes the data. */
static void deserialize(PARROT_INTERP, STable *st, void *data, SerializationReader *reader) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    INTVAL num_attributes = repr_data->num_attributes;
    INTVAL i;
    for (i = 0; i < num_attributes; i++) {
        INTVAL a_offset = repr_data->attribute_offsets[i];
        STable *a_st = repr_data->flattened_stables[i];
        if (a_st)
            a_st->REPR->deserialize(interp, a_st, (char *)data + a_offset, reader);
        else
            set_pmc_at_offset(data, a_offset, reader->read_ref(interp, reader));
    }
}

/* Serializes the REPR data. */
static void serialize_repr_data(PARROT_INTERP, STable *st, SerializationWriter *writer) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *)st->REPR_data;
    INTVAL i, num_classes;
    
    if (!repr_data->allocation_size)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Representation must be composed before it can be serialized");
    
    writer->write_int(interp, writer, repr_data->num_attributes);

    for (i = 0; i < repr_data->num_attributes; i++) {
        writer->write_int(interp, writer, repr_data->flattened_stables[i] != NULL);
        if (repr_data->flattened_stables[i])
            writer->write_stable_ref(interp, writer, repr_data->flattened_stables[i]);
    }
    
    writer->write_int(interp, writer, repr_data->mi);
    
    if (repr_data->auto_viv_values) {
        writer->write_int(interp, writer, 1);
        for (i = 0; i < repr_data->num_attributes; i++)
            writer->write_ref(interp, writer, repr_data->auto_viv_values[i]);
    }
    else {
        writer->write_int(interp, writer, 0);
    }
    
    writer->write_int(interp, writer, repr_data->unbox_int_slot);
    writer->write_int(interp, writer, repr_data->unbox_num_slot);
    writer->write_int(interp, writer, repr_data->unbox_str_slot);
    
    if (repr_data->unbox_slots) {
        writer->write_int(interp, writer, 1);
        for (i = 0; i < repr_data->num_attributes; i++) {
            writer->write_int(interp, writer, repr_data->unbox_slots[i].repr_id);
            writer->write_int(interp, writer, repr_data->unbox_slots[i].slot);
        }
    }
    else {
        writer->write_int(interp, writer, 0);
    }
    
    num_classes = i = 0;
    while (repr_data->name_to_index_mapping[i].class_key)
        num_classes++, i++;
    writer->write_int(interp, writer, num_classes);
    for (i = 0; i < num_classes; i++) {
        writer->write_ref(interp, writer, repr_data->name_to_index_mapping[i].class_key);
        writer->write_ref(interp, writer, repr_data->name_to_index_mapping[i].name_map);
    }
    
    if (writer->root.version >= 3) {
        writer->write_int(interp, writer, repr_data->pos_del_slot);
        writer->write_int(interp, writer, repr_data->ass_del_slot);
    }
}

/* Deserializes the data. */
static void deserialize_repr_data(PARROT_INTERP, STable *st, SerializationReader *reader) {
    P6opaqueREPRData *repr_data = (P6opaqueREPRData *) (st->REPR_data = mem_sys_allocate_zeroed(sizeof(P6opaqueREPRData)));
    INTVAL i, num_classes, cur_offset, cur_initialize_slot, cur_gc_mark_slot, cur_gc_cleanup_slot;
    
    repr_data->num_attributes = reader->read_int(interp, reader);
        
    repr_data->flattened_stables = (STable **)mem_sys_allocate(MAX(repr_data->num_attributes, 1) * sizeof(STable *));
    for (i = 0; i < repr_data->num_attributes; i++)
        if (reader->read_int(interp, reader))
            repr_data->flattened_stables[i] = reader->read_stable_ref(interp, reader);
        else
            repr_data->flattened_stables[i] = NULL;

    repr_data->mi = reader->read_int(interp, reader);
    
    if (reader->read_int(interp, reader)) {
        repr_data->auto_viv_values = (PMC **)mem_sys_allocate(MAX(repr_data->num_attributes, 1) * sizeof(PMC *));
        for (i = 0; i < repr_data->num_attributes; i++)
            repr_data->auto_viv_values[i] = reader->read_ref(interp, reader);
    }
    
    repr_data->unbox_int_slot = reader->read_int(interp, reader);
    repr_data->unbox_num_slot = reader->read_int(interp, reader);
    repr_data->unbox_str_slot = reader->read_int(interp, reader);
    
    if (reader->read_int(interp, reader)) {
        repr_data->unbox_slots = (P6opaqueBoxedTypeMap *)mem_sys_allocate(MAX(repr_data->num_attributes, 1) * sizeof(P6opaqueBoxedTypeMap));
        for (i = 0; i < repr_data->num_attributes; i++) {
            repr_data->unbox_slots[i].repr_id = reader->read_int(interp, reader);
            repr_data->unbox_slots[i].slot = reader->read_int(interp, reader);
        }
    }
    
    num_classes = reader->read_int(interp, reader);
    repr_data->name_to_index_mapping = (P6opaqueNameMap *)mem_sys_allocate_zeroed((num_classes + 1) * sizeof(P6opaqueNameMap));
    for (i = 0; i < num_classes; i++) {
        repr_data->name_to_index_mapping[i].class_key = reader->read_ref(interp, reader);
        repr_data->name_to_index_mapping[i].name_map = reader->read_ref(interp, reader);
    }
    
    if (reader->root.version >= 3) {
        repr_data->pos_del_slot = reader->read_int(interp, reader);
        repr_data->ass_del_slot = reader->read_int(interp, reader);
    }
    else {
        repr_data->pos_del_slot = -1;
        repr_data->ass_del_slot = -1;
    }
    
    /* Re-calculate the remaining info, which is platform specific or
     * derived information. */
    repr_data->attribute_offsets   = (INTVAL *)mem_sys_allocate(MAX(repr_data->num_attributes, 1) * sizeof(INTVAL));
    repr_data->gc_pmc_mark_offsets = (INTVAL *)mem_sys_allocate(MAX(repr_data->num_attributes, 1) * sizeof(INTVAL));
    repr_data->initialize_slots    = (INTVAL *)mem_sys_allocate((repr_data->num_attributes + 1) * sizeof(INTVAL));
    repr_data->gc_mark_slots       = (INTVAL *)mem_sys_allocate((repr_data->num_attributes + 1) * sizeof(INTVAL));
    repr_data->gc_cleanup_slots    = (INTVAL *)mem_sys_allocate((repr_data->num_attributes + 1) * sizeof(INTVAL));
    repr_data->gc_pmc_mark_offsets_count = 0;
    cur_offset          = 0;
    cur_initialize_slot = 0;
    cur_gc_mark_slot    = 0;
    cur_gc_cleanup_slot = 0;
    for (i = 0; i < repr_data->num_attributes; i++) {
        if (repr_data->flattened_stables[i] == NULL) {
            /* Align and store position. */
            INTVAL align = ALIGNOF1(PMC *);
            if (cur_offset % align) {
                cur_offset += align - cur_offset % align;
            }
            repr_data->attribute_offsets[i] = cur_offset;
            
            /* Reference type. Needs marking. */
            repr_data->gc_pmc_mark_offsets[repr_data->gc_pmc_mark_offsets_count] = cur_offset;
            repr_data->gc_pmc_mark_offsets_count++;
            
            /* Increment by pointer size. */
            cur_offset += sizeof(PMC *);
        }
        else {
            /* Align and store position. */
            STable *cur_st = repr_data->flattened_stables[i];
            INTVAL align = cur_st->REPR->get_storage_spec(interp, cur_st).align;
            if (cur_offset % align) {
                cur_offset += align - cur_offset % align;
            }
            repr_data->attribute_offsets[i] = cur_offset;

            /* Set up flags for initialization and GC. */
            if (cur_st->REPR->initialize)
                repr_data->initialize_slots[cur_initialize_slot++] = i;
            if (cur_st->REPR->gc_mark)
                repr_data->gc_mark_slots[cur_gc_mark_slot++] = i;
            if (cur_st->REPR->gc_cleanup)
                repr_data->gc_cleanup_slots[cur_gc_cleanup_slot++] = i;
            
            /* Increment by size reported by representation. */
            cur_offset += cur_st->REPR->get_storage_spec(interp, cur_st).bits / 8;
        }
    }
    repr_data->initialize_slots[cur_initialize_slot] = -1;
    repr_data->gc_mark_slots[cur_gc_mark_slot] = -1;
    repr_data->gc_cleanup_slots[cur_gc_cleanup_slot] = -1;
    
    repr_data->allocation_size = sizeof(P6opaqueInstance) + cur_offset;
}

/* Initializes the P6opaque representation. */
REPROps * P6opaque_initialize(PARROT_INTERP) {
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
    this_repr->box_funcs = mem_allocate_typed(REPROps_Boxing);
    this_repr->box_funcs->set_int = set_int;
    this_repr->box_funcs->get_int = get_int;
    this_repr->box_funcs->set_num = set_num;
    this_repr->box_funcs->get_num = get_num;
    this_repr->box_funcs->set_str = set_str;
    this_repr->box_funcs->get_str = get_str;
    this_repr->box_funcs->get_boxed_ref = get_boxed_ref;
    this_repr->pos_funcs = mem_allocate_zeroed_typed(REPROps_Positional);
    this_repr->pos_funcs->at_pos_native = at_pos_native;
    this_repr->pos_funcs->at_pos_boxed = at_pos_boxed;
    this_repr->pos_funcs->bind_pos_native = bind_pos_native;
    this_repr->pos_funcs->bind_pos_boxed = bind_pos_boxed;
    this_repr->pos_funcs->push_boxed = push_boxed;
    this_repr->pos_funcs->pop_boxed = pop_boxed;
    this_repr->pos_funcs->unshift_boxed = unshift_boxed;
    this_repr->pos_funcs->shift_boxed = shift_boxed;
    this_repr->pos_funcs->get_elem_stable = get_elem_stable;
    this_repr->ass_funcs = mem_allocate_typed(REPROps_Associative);
    this_repr->ass_funcs->at_key_boxed = at_key_boxed;
    this_repr->ass_funcs->bind_key_boxed = bind_key_boxed;
    this_repr->ass_funcs->exists_key = exists_key;
    this_repr->ass_funcs->delete_key = delete_key;
    this_repr->elems = elems;
    this_repr->gc_mark = gc_mark;
    this_repr->gc_free = gc_free;
    this_repr->gc_mark_repr_data = gc_mark_repr_data;
    this_repr->gc_free_repr_data = gc_free_repr_data;
    this_repr->get_storage_spec = get_storage_spec;
    this_repr->change_type = change_type;
    this_repr->serialize = serialize;
    this_repr->deserialize = deserialize;
    this_repr->serialize_repr_data = serialize_repr_data;
    this_repr->deserialize_repr_data = deserialize_repr_data;
    smo_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "SixModelObject", 0));
    return this_repr;
}
