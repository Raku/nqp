/* This is an implementation of a representation registry. It keeps track of
 * all of the available representations, and is responsible for building them
 * at startup. */

#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "sixmodelobject.h"
#include "reprs/KnowHOWREPR.h"
#include "reprs/P6opaque.h"
#include "reprs/P6int.h"
#include "reprs/P6num.h"
#include "reprs/P6str.h"
#include "reprs/HashAttrStore.h"
#include "reprs/Uninstantiable.h"
#include "reprs/NFA.h"
#include "reprs/VMArray.h"
#include "reprs/VMHash.h"
#include "reprs/VMIter.h"
#include "repr_registry.h"

/* An array mapping representation IDs to function tables. */
static REPROps **repr_registry = NULL;

/* Number of representations registered so far. */
static INTVAL num_reprs = 0;

/* Hash mapping representation names to IDs. */
static PMC *repr_name_to_id_map = NULL;

/* Default REPR function handlers. */
PARROT_DOES_NOT_RETURN
static void die_no_attrs(PARROT_INTERP, STRING *repr_name) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "%Ss representation does not support attribute storage", repr_name);
}
static PMC * default_get_attribute_boxed(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint) {
    die_no_attrs(interp, st->REPR->name);
}
static void default_get_attribute_native(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, NativeValue *value) {
    die_no_attrs(interp, st->REPR->name);
}
static void default_bind_attribute_boxed(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, PMC *value) {
    die_no_attrs(interp, st->REPR->name);
}
static void default_bind_attribute_native(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint, NativeValue *value) {
    die_no_attrs(interp, st->REPR->name);
}
static INTVAL default_is_attribute_initialized(PARROT_INTERP, STable *st, void *data, PMC *class_handle, STRING *name, INTVAL hint) {
    die_no_attrs(interp, st->REPR->name);
}
static INTVAL default_hint_for(PARROT_INTERP, STable *st, PMC *class_handle, STRING *name) {
    return NO_HINT;
}
static void default_set_int(PARROT_INTERP, STable *st, void *data, INTVAL value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "%Ss cannot box a native int", st->REPR->name);
}
static INTVAL default_get_int(PARROT_INTERP, STable *st, void *data) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "%Ss cannot unbox to a native int", st->REPR->name);
}
static void default_set_num(PARROT_INTERP, STable *st, void *data, FLOATVAL value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "%Ss cannot box a native num", st->REPR->name);
}
static FLOATVAL default_get_num(PARROT_INTERP, STable *st, void *data) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "%Ss cannot unbox to a native num", st->REPR->name);
}
static void default_set_str(PARROT_INTERP, STable *st, void *data, STRING *value) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "%Ss cannot box a native string", st->REPR->name);
}
static STRING * default_get_str(PARROT_INTERP, STable *st, void *data) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "%Ss cannot unbox to a native string", st->REPR->name);
}
static void * default_get_boxed_ref(PARROT_INTERP, STable *st, void *data, INTVAL repr_id) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "%Ss cannot box other types", st->REPR->name);
}
PARROT_DOES_NOT_RETURN
static void die_no_pos(PARROT_INTERP, STRING *repr_name) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "%Ss representation does not support positional storage", repr_name);
}
static void default_at_pos_native(PARROT_INTERP, STable *st, void *data, INTVAL index, NativeValue *value) {
    die_no_pos(interp, st->REPR->name);
}
static PMC * default_at_pos_boxed(PARROT_INTERP, STable *st, void *data, INTVAL index) {
    die_no_pos(interp, st->REPR->name);
}
static void default_bind_pos_native(PARROT_INTERP, STable *st, void *data, INTVAL index, NativeValue *value) {
    die_no_pos(interp, st->REPR->name);
}
static void default_bind_pos_boxed(PARROT_INTERP, STable *st, void *data, INTVAL index, PMC *obj) {
    die_no_pos(interp, st->REPR->name);
}
static void default_push_boxed(PARROT_INTERP, STable *st, void *data, PMC *obj) {
    die_no_pos(interp, st->REPR->name);
}
static PMC * default_pop_boxed(PARROT_INTERP, STable *st, void *data) {
    die_no_pos(interp, st->REPR->name);
}
static void default_unshift_boxed(PARROT_INTERP, STable *st, void *data, PMC *obj) {
    die_no_pos(interp, st->REPR->name);
}
static PMC * default_shift_boxed(PARROT_INTERP, STable *st, void *data) {
    die_no_pos(interp, st->REPR->name);
}
static STable * default_get_elem_stable(PARROT_INTERP, STable *st) {
    die_no_pos(interp, st->REPR->name);
}
PARROT_DOES_NOT_RETURN
static void die_no_ass(PARROT_INTERP, STRING *repr_name) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "%Ss representation does not support associative storage", repr_name);
}
static PMC * default_at_key_boxed(PARROT_INTERP, STable *st, void *data, STRING *key) {
    die_no_ass(interp, st->REPR->name);
}
static void default_bind_key_boxed(PARROT_INTERP, STable *st, void *data, STRING *key, PMC *value) {
    die_no_ass(interp, st->REPR->name);
}
static INTVAL default_exists_key(PARROT_INTERP, STable *st, void *data, STRING *key) {
    die_no_ass(interp, st->REPR->name);
}
static void default_delete_key(PARROT_INTERP, STable *st, void *data, STRING *key) {
    die_no_ass(interp, st->REPR->name);
}
static INTVAL default_elems(PARROT_INTERP, STable *st, void *data) {
    Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
        "%Ss representation does not support elems", st->REPR->name);
}

/* Set default attribute functions on a REPR that lacks them. */
static void add_default_attr_funcs(PARROT_INTERP, REPROps *repr) {
    repr->attr_funcs = mem_allocate_typed(REPROps_Attribute);
    repr->attr_funcs->get_attribute_boxed = default_get_attribute_boxed;
    repr->attr_funcs->get_attribute_native = default_get_attribute_native;
    repr->attr_funcs->bind_attribute_boxed = default_bind_attribute_boxed;
    repr->attr_funcs->bind_attribute_native = default_bind_attribute_native;
    repr->attr_funcs->is_attribute_initialized = default_is_attribute_initialized;
    repr->attr_funcs->hint_for = default_hint_for;
}

/* Set default boxing functions on a REPR that lacks them. */
static void add_default_box_funcs(PARROT_INTERP, REPROps *repr) {
    repr->box_funcs = mem_allocate_typed(REPROps_Boxing);
    repr->box_funcs->set_int = default_set_int;
    repr->box_funcs->get_int = default_get_int;
    repr->box_funcs->set_num = default_set_num;
    repr->box_funcs->get_num = default_get_num;
    repr->box_funcs->set_str = default_set_str;
    repr->box_funcs->get_str = default_get_str;
    repr->box_funcs->get_boxed_ref = default_get_boxed_ref;
}

/* Set default positional functions on a REPR that lacks them. */
static void add_default_pos_funcs(PARROT_INTERP, REPROps *repr) {
    repr->pos_funcs = mem_allocate_typed(REPROps_Positional);
    repr->pos_funcs->at_pos_native = default_at_pos_native;
    repr->pos_funcs->at_pos_boxed = default_at_pos_boxed;
    repr->pos_funcs->bind_pos_native = default_bind_pos_native;
    repr->pos_funcs->bind_pos_boxed = default_bind_pos_boxed;
    repr->pos_funcs->push_boxed = default_push_boxed;
    repr->pos_funcs->pop_boxed = default_pop_boxed;
    repr->pos_funcs->unshift_boxed = default_unshift_boxed;
    repr->pos_funcs->shift_boxed = default_shift_boxed;
    repr->pos_funcs->get_elem_stable = default_get_elem_stable;
}

/* Set default associative functions on a REPR that lacks them. */
static void add_default_ass_funcs(PARROT_INTERP, REPROps *repr) {
    repr->ass_funcs = mem_allocate_typed(REPROps_Associative);
    repr->ass_funcs->at_key_boxed = default_at_key_boxed;
    repr->ass_funcs->bind_key_boxed = default_bind_key_boxed;
    repr->ass_funcs->exists_key = default_exists_key;
    repr->ass_funcs->delete_key = default_delete_key;
}

/* Registers a representation. It this is ever made public, it should first be
 * made thread-safe. */
static void register_repr(PARROT_INTERP, STRING *name, REPROps *repr) {
    INTVAL ID = num_reprs;
    num_reprs++;
    if (repr_registry)
        repr_registry = (REPROps **)mem_sys_realloc(repr_registry, num_reprs * sizeof(REPROps *));
    else
        repr_registry = (REPROps **)mem_sys_allocate(num_reprs * sizeof(REPROps *));
    repr_registry[ID] = repr;
    VTABLE_set_integer_keyed_str(interp, repr_name_to_id_map, name, ID);
    repr->ID = ID;
    repr->name = name;
    if (!repr->attr_funcs)
        add_default_attr_funcs(interp, repr);
    if (!repr->box_funcs)
        add_default_box_funcs(interp, repr);
    if (!repr->pos_funcs)
        add_default_pos_funcs(interp, repr);
    if (!repr->ass_funcs)
        add_default_ass_funcs(interp, repr);
    if (!repr->elems)
        repr->elems = default_elems;
}

/* Dynamically registers a representation (that is, one defined outside of
 * the 6model core). */
static INTVAL REPR_register_dynamic(PARROT_INTERP, STRING *name, REPROps * (*reg) (PARROT_INTERP, void *, void *)) {
    REPROps *repr = reg(interp, wrap_object, create_stable);
    register_repr(interp, name, repr);
    return repr->ID;
}

/* Initializes the representations registry, building up all of the various
 * representations. */
void REPR_initialize_registry(PARROT_INTERP) {
    PMC *dyn_reg_func;
    
    /* Allocate name to ID map, and anchor it with the GC. */
    repr_name_to_id_map = Parrot_pmc_new(interp, enum_class_Hash);
    Parrot_pmc_gc_register(interp, repr_name_to_id_map);

    /* Add all core representations. */
    register_repr(interp, Parrot_str_new_constant(interp, "KnowHOWREPR"), 
        KnowHOWREPR_initialize(interp));
    register_repr(interp, Parrot_str_new_constant(interp, "P6opaque"), 
        P6opaque_initialize(interp));
    register_repr(interp, Parrot_str_new_constant(interp, "P6int"), 
        P6int_initialize(interp));
    register_repr(interp, Parrot_str_new_constant(interp, "P6num"), 
        P6num_initialize(interp));
    register_repr(interp, Parrot_str_new_constant(interp, "P6str"), 
        P6str_initialize(interp));
    register_repr(interp, Parrot_str_new_constant(interp, "HashAttrStore"), 
        HashAttrStore_initialize(interp));
    register_repr(interp, Parrot_str_new_constant(interp, "Uninstantiable"),
        Uninstantiable_initialize(interp));
    register_repr(interp, Parrot_str_new_constant(interp, "NFA"),
        NFA_initialize(interp));
    register_repr(interp, Parrot_str_new_constant(interp, "VMArray"),
        VMArray_initialize(interp));
    register_repr(interp, Parrot_str_new_constant(interp, "VMHash"),
        VMHash_initialize(interp));
    register_repr(interp, Parrot_str_new_constant(interp, "VMIter"),
        VMIter_initialize(interp));

    /* Set up object for dynamically registering extra representations. */
    dyn_reg_func = Parrot_pmc_new(interp, enum_class_Pointer);
    VTABLE_set_pointer(interp, dyn_reg_func, REPR_register_dynamic);
    VTABLE_set_pmc_keyed_str(interp, interp->root_namespace,
        Parrot_str_new_constant(interp, "_REGISTER_REPR"), dyn_reg_func);
}

/* Get a representation's ID from its name. Note that the IDs may change so
 * it's best not to store references to them in e.g. the bytecode stream. */
INTVAL REPR_name_to_id(PARROT_INTERP, STRING *name) {
    if (!VTABLE_exists_keyed_str(interp, repr_name_to_id_map, name))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Representation '%Ss' does not exist", name);
    return VTABLE_get_integer_keyed_str(interp, repr_name_to_id_map, name);
}

/* Gets a representation by ID. */
REPROps * REPR_get_by_id(PARROT_INTERP, INTVAL id) {
    if (id < 0 || id >= num_reprs)
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Invalid representation index");
    return repr_registry[id];
}

/* Gets a representation by name. */
REPROps * REPR_get_by_name(PARROT_INTERP, STRING *name) {
    return repr_registry[VTABLE_get_integer_keyed_str(interp, repr_name_to_id_map, name)];
}
