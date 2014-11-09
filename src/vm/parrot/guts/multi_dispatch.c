#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../6model/sixmodelobject.h"
#include "multi_dispatch.h"

/* Cached type ID for 6model Object. */
static INTVAL smo_id = 0;

/* Register type. */
#define BIND_VAL_OBJ 4

/*

=item C<static PMC * find_in_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args)>

Looks for an entry in the multi-dispatch cache.

=cut

*/
PMC * find_in_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args) {
    INTVAL arg_tup[MD_CACHE_MAX_ARITY];
    INTVAL i, j, entries, t_pos;
    struct Pcc_cell * pc_positionals;
    Hash *nameds;
    char has_nameds;
    
    /* See if there are any nameds */
    if (capture->vtable->base_type != enum_class_CallContext)
        return NULL;
    GETATTR_CallContext_hash(interp, capture, nameds);
    has_nameds = nameds && Parrot_hash_size(interp, nameds) ? 1 : 0;
    
    /* If it's zero-arity, return result right off. */
    if (num_args == 0 && !has_nameds)
        return cache->zero_arity;
        
    /* If there's more args than the maximum, won't be in the cache. */
    if (num_args > MD_CACHE_MAX_ARITY)
        return NULL;

    /* Create arg tuple. */
    GETATTR_CallContext_positionals(interp, capture, pc_positionals);
    for (i = 0; i < num_args; i++) {
        if (pc_positionals[i].type == BIND_VAL_OBJ) {
            PMC *arg = decontainerize(interp, pc_positionals[i].u.p);
            if (arg->vtable->base_type != smo_id)
                return NULL;
            arg_tup[i] = STABLE(arg)->type_cache_id | (IS_CONCRETE(arg) ? 1 : 0);
        }
        else {
            arg_tup[i] = (pc_positionals[i].type << 1) | 1;
        }
    }

    /* Look through entries. */
    entries = cache->arity_caches[num_args - 1].num_entries;
    t_pos = 0;
    for (i = 0; i < entries; i++) {
        INTVAL match = 1;
        for (j = 0; j < num_args; j++) {
            if (cache->arity_caches[num_args - 1].type_ids[t_pos + j] != arg_tup[j]) {
                match = 0;
                break;
            }
        }
        if (match) {
            char match_nameds = cache->arity_caches[num_args - 1].named_ok[i];
            if (has_nameds == match_nameds)
                return cache->arity_caches[num_args - 1].results[i];
        }
        t_pos += num_args;
    }

    return NULL;
}


/*

=item C<static void add_to_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args)>

Adds an entry to the multi-dispatch cache.

=cut

*/
void add_to_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args, PMC *result) {
    INTVAL arg_tup[MD_CACHE_MAX_ARITY];
    INTVAL i, entries, ins_type;
    struct Pcc_cell * pc_positionals;
    Hash *nameds;
    char has_nameds;
    
    /* See if there are any nameds */
    if (capture->vtable->base_type != enum_class_CallContext)
        return;
    GETATTR_CallContext_hash(interp, capture, nameds);
    has_nameds = nameds && Parrot_hash_size(interp, nameds) ? 1 : 0;
    
    /* Make sure 6model type ID is set. */
    if (!smo_id)
        smo_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "SixModelObject", 0));
    
    /* If it's zero arity, just stick it in that slot. */
    if (num_args == 0) {
        cache->zero_arity = result;
        return;
    }
    
    /* If there's more args than the maximum, we can't cache it. */
    if (num_args > MD_CACHE_MAX_ARITY)
        return;
    
    /* If the cache is saturated, don't do anything (we could instead do a random
     * replacement). */
    entries = cache->arity_caches[num_args - 1].num_entries;
    if (entries == MD_CACHE_MAX_ENTRIES)
        return;
    
    /* Create arg tuple. */
    GETATTR_CallContext_positionals(interp, capture, pc_positionals);
    for (i = 0; i < num_args; i++) {
        if (pc_positionals[i].type == BIND_VAL_OBJ) {
            PMC *arg = decontainerize(interp, pc_positionals[i].u.p);
            if (arg->vtable->base_type != smo_id)
                return;
            arg_tup[i] = STABLE(arg)->type_cache_id | (IS_CONCRETE(arg) ? 1 : 0);
        }
        else {
            arg_tup[i] = (pc_positionals[i].type << 1) | 1;
        }
    }

    /* If there's no entries yet, need to do some allocation. */
    if (entries == 0) {
        cache->arity_caches[num_args - 1].type_ids = (INTVAL *)mem_sys_allocate(num_args * sizeof(INTVAL) * MD_CACHE_MAX_ENTRIES);
        cache->arity_caches[num_args - 1].named_ok = (char *)mem_sys_allocate(sizeof(char) * MD_CACHE_MAX_ENTRIES);
        cache->arity_caches[num_args - 1].results  = (PMC **)mem_sys_allocate(sizeof(PMC *) * MD_CACHE_MAX_ENTRIES);
    }

    /* Add entry. */
    ins_type = entries * num_args;
    for (i = 0; i < num_args; i++)
        cache->arity_caches[num_args - 1].type_ids[ins_type + i] = arg_tup[i];
    cache->arity_caches[num_args - 1].results[entries] = result;
    cache->arity_caches[num_args - 1].named_ok[entries] = has_nameds;
    cache->arity_caches[num_args - 1].num_entries = entries + 1;
}
