#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "sixmodelobject.h"
#include "containers.h"

/* ***************************************************************************
 * CodePair container configuration: container with FETCH/STORE code refs
 * ***************************************************************************/

typedef struct {
    PMC *fetch_code;
    PMC *store_code;
} CodePairContData;
 
static PMC * code_pair_fetch(PARROT_INTERP, PMC *cont) {
    CodePairContData *data = (CodePairContData *)STABLE(cont)->container_data;
    PMC *old_ctx = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    PMC *cappy   = Parrot_pmc_new(interp, enum_class_CallContext);
    VTABLE_push_pmc(interp, cappy, cont);
    Parrot_pcc_invoke_from_sig_object(interp, data->fetch_code, cappy);
    cappy = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), old_ctx);
    return VTABLE_get_pmc_keyed_int(interp, cappy, 0);
}

static void code_pair_store(PARROT_INTERP, PMC *cont, PMC *value) {
    CodePairContData *data = (CodePairContData *)STABLE(cont)->container_data;
    PMC *old_ctx = Parrot_pcc_get_signature(interp, CURRENT_CONTEXT(interp));
    PMC *cappy   = Parrot_pmc_new(interp, enum_class_CallContext);
    VTABLE_push_pmc(interp, cappy, cont);
    VTABLE_push_pmc(interp, cappy, value);
    Parrot_pcc_invoke_from_sig_object(interp, data->store_code, cappy);
    Parrot_pcc_set_signature(interp, CURRENT_CONTEXT(interp), old_ctx);
}

static void code_pair_gc_mark_data(PARROT_INTERP, STable *st) {
    CodePairContData *data = (CodePairContData *)st->container_data;
    Parrot_gc_mark_PMC_alive(interp, data->fetch_code);
    Parrot_gc_mark_PMC_alive(interp, data->store_code);
}

static void code_pair_gc_free_data(PARROT_INTERP, STable *st) {
    UNUSED(interp);
    if (st->container_data) {
        mem_sys_free(st->container_data);
        st->container_data = NULL;
    }
}

static void code_pair_serialize(PARROT_INTERP, STable *st, SerializationWriter *writer) {
    CodePairContData *data = (CodePairContData *)st->container_data;
    writer->write_ref(interp, writer, data->fetch_code);
    writer->write_ref(interp, writer, data->store_code);
}
    
static void code_pair_deserialize(PARROT_INTERP, STable *st, SerializationReader *reader) {
    CodePairContData *data = (CodePairContData *)st->container_data;
    data->fetch_code = reader->read_ref(interp, reader);
    data->store_code = reader->read_ref(interp, reader);
}

static ContainerSpec *code_pair_spec = NULL;

static void code_pair_set_container_spec(PARROT_INTERP, STable *st) {
    CodePairContData *data = (CodePairContData *)mem_sys_allocate(sizeof(CodePairContData));
    UNUSED(interp);
    data->fetch_code = PMCNULL;
    data->store_code = PMCNULL;
    st->container_data = data;
    st->container_spec = code_pair_spec;
}
    
static void code_pair_configure_container_spec(PARROT_INTERP, STable *st, PMC *config) {
    CodePairContData *data = (CodePairContData *)st->container_data;
    STRING *fetch = Parrot_str_new_constant(interp, "fetch");
    STRING *store = Parrot_str_new_constant(interp, "store");
    if (!VTABLE_exists_keyed_str(interp, config, fetch))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Container spec 'code_pair' must be configured with a fetch");
    if (!VTABLE_exists_keyed_str(interp, config, store))
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "Container spec 'code_pair' must be configured with a store");
    data->fetch_code = VTABLE_get_pmc_keyed_str(interp, config, fetch);
    data->store_code = VTABLE_get_pmc_keyed_str(interp, config, store);
}

static ContainerConfigurer * initialize_code_pair_spec(PARROT_INTERP) {
    ContainerConfigurer *cc = (ContainerConfigurer *)mem_sys_allocate(sizeof(ContainerConfigurer));

    code_pair_spec = (ContainerSpec *)mem_sys_allocate(sizeof(ContainerSpec));
    code_pair_spec->name = Parrot_str_new_constant(interp, "code_pair");
    code_pair_spec->fetch = code_pair_fetch;
    code_pair_spec->store = code_pair_store;
    code_pair_spec->store_unchecked = code_pair_store;
    code_pair_spec->gc_mark_data = code_pair_gc_mark_data;
    code_pair_spec->gc_free_data = code_pair_gc_free_data;
    code_pair_spec->serialize = code_pair_serialize;
    code_pair_spec->deserialize = code_pair_deserialize;
    
    cc->set_container_spec = code_pair_set_container_spec;
    cc->configure_container_spec = code_pair_configure_container_spec;
    
    return cc;
}

/* ***************************************************************************
 * Container registry and configuration
 * ***************************************************************************/
 
/* Container registry is a hash mapping names of container configurations
 * to function tables. */
static PMC *container_registry = NULL;
 
/* Adds a container configurer to the registry. */
void SixModelObject_add_container_config(PARROT_INTERP, STRING *name,
        ContainerConfigurer *configurer) {
    PMC *wrapper = Parrot_pmc_new(interp, enum_class_Pointer);
    VTABLE_set_pointer(interp, wrapper, configurer);
    VTABLE_set_pmc_keyed_str(interp, container_registry, name, wrapper);
}

/* Gets a container configurer from the registry. */
ContainerConfigurer * SixModelObject_get_container_config(PARROT_INTERP, STRING *name) {
    if (VTABLE_exists_keyed_str(interp, container_registry, name))
        return (ContainerConfigurer *)VTABLE_get_pointer(interp,
            VTABLE_get_pmc_keyed_str(interp, container_registry, name));
    else
        Parrot_ex_throw_from_c_args(interp, NULL, EXCEPTION_INVALID_OPERATION,
            "No such container spec '%Ss'", name);
}

/* Does initial setup work of the container registry, including registering
 * the various built-in container types. */
void SixModelObject_containers_setup(PARROT_INTERP) {
    /* Set up object for dynamically registering extra configurers. */
    PMC *dyn_reg_func = Parrot_pmc_new(interp, enum_class_Pointer);
    VTABLE_set_pointer(interp, dyn_reg_func, SixModelObject_add_container_config);
    VTABLE_set_pmc_keyed_str(interp, interp->root_namespace,
        Parrot_str_new_constant(interp, "_REGISTER_CONTCONF"), dyn_reg_func);
    
    /* Initialize registry. */
    container_registry = Parrot_pmc_new(interp, enum_class_Hash);
    Parrot_pmc_gc_register(interp, container_registry);
    
    /* Add built-in configurations. */
    SixModelObject_add_container_config(interp,
        Parrot_str_new_constant(interp, "code_pair"),
        initialize_code_pair_spec(interp));
}
