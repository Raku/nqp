#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "dyncall_reprs.h"
#include "CStruct.h"
#include "CArray.h"
#include "CPointer.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Some functions we have to get references to. */
static wrap_object_t   wrap_object_func;
static create_stable_t create_stable_func;

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
static PMC * index_mapping_and_flat_list(PARROT_INTERP, PMC *mro, CStructREPRData *repr_data) {
    PMC    *flat_list      = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    PMC    *class_list     = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    PMC    *attr_map_list  = Parrot_pmc_new(interp, enum_class_ResizablePMCArray);
    STRING *name_str       = Parrot_str_new_constant(interp, "name");
    INTVAL  current_slot   = 0;
    
    INTVAL num_classes, i;
    CStructNameMap * result = NULL;
    
    /* Walk through the parents list. */
    INTVAL mro_idx = VTABLE_elements(interp, mro);
    while (mro_idx)
    {
        /* Get current class in MRO. */
        PMC    *type_info     = VTABLE_get_pmc_keyed_int(interp, mro, --mro_idx);
        PMC    *current_class = decontainerize(interp, VTABLE_get_pmc_keyed_int(interp, type_info, 0));
        
        /* Get its local parents; make sure we're not doing MI. */
        PMC    *parents     = VTABLE_get_pmc_keyed_int(interp, type_info, 2);
        INTVAL  num_parents = VTABLE_elements(interp, parents);
        if (num_parents <= 1) {
            /* Get attributes and iterate over them. */
            PMC *attributes = VTABLE_get_pmc_keyed_int(interp, type_info, 1);
            PMC *attr_map   = PMCNULL;
            PMC *attr_iter  = VTABLE_get_iter(interp, attributes);
            while (VTABLE_get_bool(interp, attr_iter)) {
                /* Get attribute. */
                PMC * attr = VTABLE_shift_pmc(interp, attr_iter);

                /* Get its name. */
                PMC    *name_pmc = VTABLE_get_pmc_keyed_str(interp, attr, name_str);
                STRING *name     = VTABLE_get_string(interp, name_pmc);

                /* Allocate a slot. */
                if (PMC_IS_NULL(attr_map))
                    attr_map = Parrot_pmc_new(interp, enum_class_Hash);
                VTABLE_set_pmc_keyed_str(interp, attr_map, name,
                    Parrot_pmc_new_init_int(interp, enum_class_Integer, current_slot));
                current_slot++;

                /* Push attr onto the flat list. */
                VTABLE_push_pmc(interp, flat_list, attr);
            }

            /* Add to class list and map list. */
            VTABLE_push_pmc(interp, class_list, current_class);
            VTABLE_push_pmc(interp, attr_map_list, attr_map);
        }
        else {
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                "CStruct representation does not support multiple inheritance");
        }
    }

    /* We can now form the name map. */
    num_classes = VTABLE_elements(interp, class_list);
    result = (CStructNameMap *) mem_sys_allocate_zeroed(sizeof(CStructNameMap) * (1 + num_classes));
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
static void compute_allocation_strategy(PARROT_INTERP, PMC *repr_info, CStructREPRData *repr_data) {
    STRING *type_str = Parrot_str_new_constant(interp, "type");
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
        repr_data->struct_size = 1; /* avoid 0-byte malloc */
    }

    /* Otherwise, we need to compute the allocation strategy.  */
    else {
        /* We track the size of the struct, which is what we'll want offsets into. */
        INTVAL cur_size = 0;
        
        /* Get number of attributes and set up various counters. */
        INTVAL num_attrs        = VTABLE_elements(interp, flat_list);
        INTVAL info_alloc       = num_attrs == 0 ? 1 : num_attrs;
        INTVAL cur_obj_attr     = 0;
        INTVAL cur_str_attr     = 0;
        INTVAL cur_init_slot    = 0;
        INTVAL i;

        /* Allocate location/offset arrays and GC mark info arrays. */
        repr_data->num_attributes      = num_attrs;
        repr_data->attribute_locations = (INTVAL *) mem_sys_allocate(info_alloc * sizeof(INTVAL));
        repr_data->struct_offsets      = (INTVAL *) mem_sys_allocate(info_alloc * sizeof(INTVAL));
        repr_data->flattened_stables   = (STable **) mem_sys_allocate_zeroed(info_alloc * sizeof(PMC *));
        repr_data->member_types        = (PMC** )    mem_sys_allocate_zeroed(info_alloc * sizeof(PMC *));

        /* Go over the attributes and arrange their allocation. */
        for (i = 0; i < num_attrs; i++) {
            /* Fetch its type; see if it's some kind of unboxed type. */
            PMC    *attr         = VTABLE_get_pmc_keyed_int(interp, flat_list, i);
            PMC    *type         = VTABLE_get_pmc_keyed_str(interp, attr, type_str);
            INTVAL  type_id      = REPR(type)->ID;
            INTVAL  bits         = sizeof(void *) * 8;
            INTVAL  align        = ALIGNOF1(void *);
            if (!PMC_IS_NULL(type)) {
                /* See if it's a type that we know how to handle in a C struct. */
                storage_spec spec;
                REPR(type)->get_storage_spec(interp, STABLE(type), &spec);
                if (spec.inlineable == STORAGE_SPEC_INLINED &&
                        (spec.boxed_primitive == STORAGE_SPEC_BP_INT ||
                         spec.boxed_primitive == STORAGE_SPEC_BP_NUM)) {
                    /* It's a boxed int or num; pretty easy. It'll just live in the
                     * body of the struct. Instead of masking in i here (which
                     * would be the parallel to how we handle boxed types) we
                     * repurpose it to store the bit-width of the type, so
                     * that get_attribute_ref can find it later. */
                    bits = spec.bits;
                    align = spec.align;

                    if (bits % 8) {
                        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                                "CStruct only supports native types that are a multiple of 8 bits wide (was passed: %ld)", bits);
                    }

                    repr_data->attribute_locations[i] = (bits << CSTRUCT_ATTR_SHIFT) | CSTRUCT_ATTR_IN_STRUCT;
                    repr_data->flattened_stables[i] = STABLE(type);
                    if (REPR(type)->initialize) {
                        if (!repr_data->initialize_slots)
                            repr_data->initialize_slots = (INTVAL *) mem_sys_allocate_zeroed((info_alloc + 1) * sizeof(INTVAL));
                        repr_data->initialize_slots[cur_init_slot] = i;
                        cur_init_slot++;
                    }
                }
                else if(spec.can_box & STORAGE_SPEC_CAN_BOX_STR) {
                    /* It's a string of some kind.  */
                    repr_data->num_child_objs++;
                    repr_data->attribute_locations[i] = (cur_obj_attr++ << CSTRUCT_ATTR_SHIFT) | CSTRUCT_ATTR_STRING;
                    repr_data->member_types[i] = type;
                }
                else if(type_id == get_ca_repr_id()) {
                    /* It's a CArray of some kind.  */
                    repr_data->num_child_objs++;
                    repr_data->attribute_locations[i] = (cur_obj_attr++ << CSTRUCT_ATTR_SHIFT) | CSTRUCT_ATTR_CARRAY;
                    repr_data->member_types[i] = type;
                }
                else if(type_id == get_cs_repr_id()) {
                    /* It's a CStruct. */
                    repr_data->num_child_objs++;
                    repr_data->attribute_locations[i] = (cur_obj_attr++ << CSTRUCT_ATTR_SHIFT) | CSTRUCT_ATTR_CSTRUCT;
                    repr_data->member_types[i] = type;
                }
                else if(type_id == get_cp_repr_id()) {
                    /* It's a CPointer. */
                    repr_data->num_child_objs++;
                    repr_data->attribute_locations[i] = (cur_obj_attr++ << CSTRUCT_ATTR_SHIFT) | CSTRUCT_ATTR_CPTR;
                    repr_data->member_types[i] = type;
                }
                else {
                    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                        "CStruct representation only handles int, num, CArray, CPointer and CStruct");
                }
            }
            else {
                Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "CStruct representation requires the types of all attributes to be specified");
            }
            
            /* Do allocation. */
            /* C structure needs careful alignment. If cur_size is not aligned
             * to align bytes (cur_size % align), make sure it is before we
             * add the next element. */
            if (cur_size % align) {
                cur_size += align - cur_size % align;
            }

            repr_data->struct_offsets[i] = cur_size;
            cur_size += bits / 8;
        }

        /* Finally, put computed allocation size in place; it's body size plus
         * header size. Also number of markables and sentinels. */
        repr_data->struct_size = cur_size;
        if (repr_data->initialize_slots)
            repr_data->initialize_slots[cur_init_slot] = -1;
    }

    Parrot_unblock_GC_mark(interp);
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

/* Helper for reading a pointer at the specified offset. */
static void * get_ptr_at_offset(void *data, INTVAL offset) {
    void *location = (char *)data + offset;
    return *((void **)location);
}

/* Helper for writing a pointer at the specified offset. */
static void set_ptr_at_offset(void *data, INTVAL offset, void *value) {
    void *location = (char *)data + offset;
    *((void **)location) = value;
}

/* Helper for finding a slot number. */
static INTVAL try_get_slot(PARROT_INTERP, CStructREPRData *repr_data, PMC *class_key, STRING *name) {
    INTVAL slot = -1;
    if (repr_data->name_to_index_mapping) {
        CStructNameMap *cur_map_entry = repr_data->name_to_index_mapping;
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
static PMC * type_object_for(PARROT_INTERP, PMC *HOW) {
    /* Create new object instance. */
    CStructInstance *obj = mem_allocate_zeroed_typed(CStructInstance);

    /* Build an STable. */
    PMC *st_pmc = create_stable_func(interp, this_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);
    
    /* Create REPR data structure and hang it off the STable. */
    st->REPR_data = mem_allocate_zeroed_typed(CStructREPRData);

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
    /* Compute allocation strategy. */
    CStructREPRData *repr_data = (CStructREPRData *) st->REPR_data;
    PMC *attr_info = VTABLE_get_pmc_keyed_str(interp, repr_info,
            Parrot_str_new_constant(interp, "attribute"));
    compute_allocation_strategy(interp, attr_info, repr_data);
    PARROT_GC_WRITE_BARRIER(interp, st->stable_pmc);
}

/* Creates a new instance based on the type object. */
static PMC * allocate(PARROT_INTERP, STable *st) {
    CStructInstance * obj;
    CStructREPRData * repr_data = (CStructREPRData *) st->REPR_data;

    /* Allocate and set up object instance. */
    obj = (CStructInstance *) Parrot_gc_allocate_fixed_size_storage(interp, sizeof(CStructInstance));
    obj->common.stable = st->stable_pmc;
    obj->common.sc = NULL;
    obj->body.child_objs = NULL;

    /* Allocate child obj array. */
    if(repr_data->num_child_objs > 0) {
        size_t bytes = repr_data->num_child_objs*sizeof(PMC *);
        obj->body.child_objs = (PMC **) mem_sys_allocate_zeroed(bytes);
        memset(obj->body.child_objs, 0, bytes);
    }

    return wrap_object_func(interp, obj);
}

/* Initialize a new instance. */
static void initialize(PARROT_INTERP, STable *st, void *data) {
    CStructREPRData * repr_data = (CStructREPRData *) st->REPR_data;
    
    /* Allocate object body. */
    CStructBody *body = (CStructBody *)data;
    body->cstruct = mem_sys_allocate(repr_data->struct_size > 0 ? repr_data->struct_size : 1);
    memset(body->cstruct, 0, repr_data->struct_size);
    
    /* Initialize the slots. */
    if (repr_data->initialize_slots) {
        INTVAL i;
        for (i = 0; repr_data->initialize_slots[i] >= 0; i++) {
            INTVAL  offset = repr_data->struct_offsets[repr_data->initialize_slots[i]];
            STable *st     = repr_data->flattened_stables[repr_data->initialize_slots[i]];
            st->REPR->initialize(interp, st, (char *)body->cstruct + offset);
        }
    }
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    CStructREPRData * repr_data = (CStructREPRData *) st->REPR_data;
    CStructBody *src_body = (CStructBody *)src;
    CStructBody *dest_body = (CStructBody *)dest;
    UNUSED(interp);
    /* XXX todo */
    /* XXX also need to shallow copy the obj array */
}

/* Helper for complaining about attribute access errors. */
PARROT_DOES_NOT_RETURN
static void no_such_attribute(PARROT_INTERP, const char *action, PMC *class_handle, STRING *name) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Can not %s non-existent attribute '%Ss' on class '%Ss'",
            action, name, VTABLE_get_string(interp, introspection_call(interp,
                class_handle, STABLE(class_handle)->HOW,
                Parrot_str_new_constant(interp, "name"), 0)));
}

/* Helper to die because this type doesn't support attributes. */
PARROT_DOES_NOT_RETURN
static void die_no_attrs(PARROT_INTERP) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "CStruct representation attribute not yet fully implemented");
}

/* Gets the current value for an attribute. */
static PMC * get_attribute_boxed(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint) {
    CStructREPRData *repr_data = (CStructREPRData *)st->REPR_data;
    CStructBody     *body      = (CStructBody *)data;
    INTVAL           slot;

    /* Look up slot, then offset and compute address. */
    slot = hint >= 0 ? hint :
        try_get_slot(interp, repr_data, class_handle, name);
    if (slot >= 0) {
        INTVAL type      = repr_data->attribute_locations[slot] & CSTRUCT_ATTR_MASK;
        INTVAL real_slot = repr_data->attribute_locations[slot] >> CSTRUCT_ATTR_SHIFT;

        if(type == CSTRUCT_ATTR_IN_STRUCT)
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "CStruct Can't perform boxed get on flattened attributes yet");
        else {
            PMC *obj = body->child_objs[real_slot];
            PMC *typeobj = repr_data->member_types[slot];

            if(!obj) {
                void *cobj = get_ptr_at_offset(body->cstruct, repr_data->struct_offsets[slot]);
                if(cobj) {
                    if(type == CSTRUCT_ATTR_CARRAY) {
                        obj = make_carray_result(interp, typeobj, cobj);
                    }
                    else if(type == CSTRUCT_ATTR_CSTRUCT) {
                        obj = make_cstruct_result(interp, typeobj, cobj);
                    }
                    else if(type == CSTRUCT_ATTR_CPTR) {
                        obj = make_cpointer_result(interp, typeobj, cobj);
                    }
                    else if(type == CSTRUCT_ATTR_STRING) {
                        char *cstr = (char *) cobj;
                        STRING *str  = Parrot_str_new_init(interp, cstr, strlen(cstr), Parrot_utf8_encoding_ptr, 0);

                        obj  = REPR(typeobj)->allocate(interp, STABLE(typeobj));
                        REPR(obj)->initialize(interp, STABLE(obj), OBJECT_BODY(obj));
                        REPR(obj)->box_funcs->set_str(interp, STABLE(obj), OBJECT_BODY(obj), str);
                        PARROT_GC_WRITE_BARRIER(interp, obj);
                    }

                    body->child_objs[real_slot] = obj;
                }
                else {
                    obj = typeobj;
                }
            }
            return obj;
        }
    }

    /* Otherwise, complain that the attribute doesn't exist. */
    no_such_attribute(interp, "get", class_handle, name);
}
static void get_attribute_native(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, NativeValue *value) {
    CStructREPRData *repr_data = (CStructREPRData *)st->REPR_data;
    CStructBody     *body      = (CStructBody *)data;
    INTVAL           slot;

    /* Look up slot, then offset and compute address. */
    slot = hint >= 0 ? hint :
        try_get_slot(interp, repr_data, class_handle, name);
    if (slot >= 0) {
        STable *st = repr_data->flattened_stables[slot];
        void *ptr = ((char *)body->cstruct) + repr_data->struct_offsets[slot];
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
    CStructREPRData *repr_data = (CStructREPRData *)st->REPR_data;
    CStructBody     *body      = (CStructBody *)data;
    STRING          *type_str  = Parrot_str_new_constant(interp, "type");
    INTVAL            slot;

    value = decontainerize(interp, value);

    /* Try to find the slot. */
    slot = hint >= 0 ? hint :
        try_get_slot(interp, repr_data, class_handle, name);
    if (slot >= 0) {
        STable *st = repr_data->flattened_stables[slot];
        if (st)
            Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
                    "CStruct Can't perform boxed bind on flattened attributes yet");
        else {
            INTVAL type = repr_data->attribute_locations[slot] & CSTRUCT_ATTR_MASK;
            INTVAL real_slot = repr_data->attribute_locations[slot] >> CSTRUCT_ATTR_SHIFT;

            if(IS_CONCRETE(value)) {
                void *cobj       = NULL;

                body->child_objs[real_slot] = value;

                /* Set cobj to correct pointer based on type of value. */
                if(type == CSTRUCT_ATTR_CARRAY) {
                    cobj = ((CArrayBody *) OBJECT_BODY(value))->storage;
                }
                else if(type == CSTRUCT_ATTR_CSTRUCT) {
                    cobj = ((CStructBody *) OBJECT_BODY(value))->cstruct;
                }
                else if(type == CSTRUCT_ATTR_CPTR) {
                    cobj = ((CPointerBody *) OBJECT_BODY(value))->ptr;
                }
                else if(type == CSTRUCT_ATTR_STRING) {
                    STRING *str  = REPR(value)->box_funcs->get_str(interp, STABLE(value), OBJECT_BODY(value));
                    cobj = Parrot_str_to_encoded_cstring(interp, str, Parrot_utf8_encoding_ptr);
                }

                set_ptr_at_offset(body->cstruct, repr_data->struct_offsets[slot], cobj);
            }
            else {
                body->child_objs[real_slot] = NULL;
                set_ptr_at_offset(body->cstruct, repr_data->struct_offsets[slot], NULL);
            }
        }
    }
    else {
        /* Otherwise, complain that the attribute doesn't exist. */
        no_such_attribute(interp, "bind", class_handle, name);
    }
}
static void bind_attribute_native(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, NativeValue *value) {
    CStructREPRData *repr_data = (CStructREPRData *)st->REPR_data;
    CStructBody     *body      = (CStructBody *)data;
    INTVAL            slot;

    /* Try to find the slot. */
    slot = hint >= 0 ? hint :
        try_get_slot(interp, repr_data, class_handle, name);
    if (slot >= 0) {
        STable *st = repr_data->flattened_stables[slot];
        if (st) {
            void *ptr = ((char *)body->cstruct) + repr_data->struct_offsets[slot];
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
                "Can not bind by reference to non-flattened attribute '%Ss' on class '%Ss'",
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
static INTVAL is_attribute_initialized(PARROT_INTERP, STable *st, void *data, PMC *ClassHandle, STRING *Name, INTVAL Hint) {
    UNUSED(st);
    UNUSED(data);
    UNUSED(ClassHandle);
    UNUSED(Name);
    UNUSED(Hint);
    die_no_attrs(interp);
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
    CStructREPRData *repr_data = (CStructREPRData *) st->REPR_data;
    CStructBody *body = (CStructBody *)data;
    INTVAL i;
    for (i = 0; i < repr_data->num_child_objs; i++)
        Parrot_gc_mark_PMC_alive(interp, body->child_objs[i]);
}

static void gc_mark_repr_data(PARROT_INTERP, STable *st) {
    CStructREPRData *repr_data = (CStructREPRData *) st->REPR_data;
    CStructNameMap *map = repr_data->name_to_index_mapping;
    INTVAL i;

    if (!map) return;

    for (i = 0; map[i].class_key; i++) {
        Parrot_gc_mark_PMC_alive(interp, map[i].class_key);
        Parrot_gc_mark_PMC_alive(interp, map[i].name_map);
    }
}

/* This is called to do any cleanup of resources when an object gets
 * embedded inside another one. Never called on a top-level object. */
static void gc_cleanup(PARROT_INTERP, STable *st, void *data) {
    CStructBody *body = (CStructBody *)data;
    UNUSED(interp);
    UNUSED(st);
    if (body->child_objs)
        mem_sys_free(body->child_objs);
    if (body->cstruct)
        mem_sys_free(body->cstruct);
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    CStructREPRData *repr_data = (CStructREPRData *)STABLE(obj)->REPR_data;
	gc_cleanup(interp, STABLE(obj), OBJECT_BODY(obj));
    if (IS_CONCRETE(obj))
		Parrot_gc_free_fixed_size_storage(interp, sizeof(CStructInstance), PMC_data(obj));
	else
		mem_sys_free(PMC_data(obj));
    PMC_data(obj) = NULL;
}

/* Gets the storage specification for this representation. */
static void get_storage_spec(PARROT_INTERP, STable *st, storage_spec *spec) {
    UNUSED(interp);
    UNUSED(st);
    spec->inlineable      = STORAGE_SPEC_REFERENCE;
    spec->boxed_primitive = STORAGE_SPEC_BP_NONE;
    spec->can_box         = 0;
    spec->bits            = sizeof(void *) * 8;
    spec->align           = ALIGNOF1(void *);
}

/* Serializes the REPR data. */
static void serialize_repr_data(PARROT_INTERP, STable *st, SerializationWriter *writer) {
    CStructREPRData *repr_data = (CStructREPRData *)st->REPR_data;
    INTVAL i, num_classes, num_slots;

    writer->write_int(interp, writer, repr_data->struct_size);
    writer->write_int(interp, writer, repr_data->num_attributes);
    writer->write_int(interp, writer, repr_data->num_child_objs);
    writer->write_int(interp, writer, repr_data->num_child_strs);
    for(i = 0; i < repr_data->num_attributes; i++){
        writer->write_int(interp, writer, repr_data->attribute_locations[i]);
        writer->write_int(interp, writer, repr_data->struct_offsets[i]);

        writer->write_int(interp, writer, repr_data->flattened_stables[i] != NULL);
        if (repr_data->flattened_stables[i])
            writer->write_stable_ref(interp, writer, repr_data->flattened_stables[i]);

        writer->write_ref(interp, writer, repr_data->member_types[i]);
    }

    i=0;
    while (repr_data->name_to_index_mapping[i].class_key)
        i++;
    num_classes = i;
    writer->write_int(interp, writer, num_classes);
    for(i = 0; i < num_classes; i++){
        writer->write_ref(interp, writer, repr_data->name_to_index_mapping[i].class_key);
        writer->write_ref(interp, writer, repr_data->name_to_index_mapping[i].name_map);
    }

    i=0;
    while(repr_data->initialize_slots && repr_data->initialize_slots[i] != -1)
        i++;
    num_slots = i;
    writer->write_int(interp, writer, num_slots);
    for(i = 0; i < num_slots; i++){
        writer->write_int(interp, writer, repr_data->initialize_slots[i]);
    }
}

/* Deserializes the REPR data. */
static void deserialize_repr_data(PARROT_INTERP, STable *st, SerializationReader *reader) {
    CStructREPRData *repr_data = (CStructREPRData *) mem_sys_allocate(sizeof(CStructREPRData));
    INTVAL i, num_classes, num_slots;

    repr_data->struct_size = reader->read_int(interp, reader);
    repr_data->num_attributes = reader->read_int(interp, reader);
    repr_data->num_child_objs = reader->read_int(interp, reader);
    repr_data->num_child_strs = reader->read_int(interp, reader);

    repr_data->attribute_locations = (INTVAL *)mem_sys_allocate(sizeof(INTVAL) * repr_data->num_attributes);
    repr_data->struct_offsets      = (INTVAL *)mem_sys_allocate(sizeof(INTVAL) * repr_data->num_attributes);
    repr_data->flattened_stables   = (STable **)mem_sys_allocate(repr_data->num_attributes * sizeof(STable *));
    repr_data->member_types        = (PMC **)mem_sys_allocate(repr_data->num_attributes * sizeof(PMC *));

    for(i = 0; i < repr_data->num_attributes; i++) {
        repr_data->attribute_locations[i] = reader->read_int(interp, reader);
        repr_data->struct_offsets[i] = reader->read_int(interp, reader);

        if(reader->read_int(interp, reader)){
            repr_data->flattened_stables[i] = reader->read_stable_ref(interp, reader);
        }
        else {
            repr_data->flattened_stables[i] = NULL;
        }

        repr_data->member_types[i] = reader->read_ref(interp, reader);
    }

    num_classes = reader->read_int(interp, reader);
    repr_data->name_to_index_mapping = (CStructNameMap *)mem_sys_allocate(sizeof(CStructNameMap) * (1 + num_classes));
    for(i = 0; i < num_classes; i++){
        repr_data->name_to_index_mapping[i].class_key = reader->read_ref(interp, reader);
        repr_data->name_to_index_mapping[i].name_map = reader->read_ref(interp, reader);
    }
    repr_data->name_to_index_mapping[i].class_key = NULL;
    repr_data->name_to_index_mapping[i].name_map = NULL;

    num_slots = reader->read_int(interp, reader);
    repr_data->initialize_slots = (INTVAL *)mem_sys_allocate(sizeof(INTVAL) * (1 + num_slots));
    for(i = 0; i < num_slots; i++){
        repr_data->initialize_slots[i] = reader->read_int(interp, reader);
    }
    repr_data->initialize_slots[i] = -1;

    st->REPR_data = repr_data;
}

/* Initializes the CStruct representation. */
REPROps * CStruct_initialize(PARROT_INTERP,
        wrap_object_t wrap_object_func_ptr,
        create_stable_t create_stable_func_ptr) {
    UNUSED(interp);
    /* Stash away functions passed wrapping functions. */
    wrap_object_func = wrap_object_func_ptr;
    create_stable_func = create_stable_func_ptr;

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
    this_repr->gc_mark_repr_data = gc_mark_repr_data;
    this_repr->gc_cleanup = gc_cleanup;
    this_repr->get_storage_spec = get_storage_spec;
    this_repr->serialize_repr_data = serialize_repr_data;
    this_repr->deserialize_repr_data = deserialize_repr_data;
    return this_repr;
}
