#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../6model/sixmodelobject.h"
#include "../pmc/pmc_dispatchersub.h"
#include "pmc_sub.h"
#include "multi_dispatch.h"

/* This file contains a somewhat simplified implementation of the Perl 6
 * multiple dispatch algorithm, to the degree that NQP needs it. */

/* Candidate info node in the sorted candidate lists. */
typedef struct candidate_info {
    PMC *    sub;           /* The sub that is the candidate. */
    PMC **   types;         /* Nominal type constraints for each parameter. */
    INTVAL * definednesses; /* Definedness constraints for each parameter. */
    INTVAL num_types;       /* Number of entries in the above two arrays. */
    INTVAL min_arity;       /* Number of required positional arguments. */
    INTVAL max_arity;       /* Number of required and optional positional arguments. */
} candidate_info;

/* Represents the produced information about a candidate as well as the graph
 * edges originating from it. The edges array contains pointers to the edges
 * in the graph that we have arrows to. */
typedef struct candidate_graph_node {
    candidate_info *info;
    struct candidate_graph_node **edges;
    INTVAL edges_in;
    INTVAL edges_out;
} candidate_graph_node;

/* Some constants for candidate sorter. */
#define EDGE_REMOVAL_TODO -1
#define EDGE_REMOVED -2

/* Special value we set arity to when we have a slurpy. */
#define SLURPY_ARITY 1 << 30

/* Cached type ID for 6model Object. */
static INTVAL smo_id = 0;

/* Definedness constraints. */
#define DEFINED_ONLY    1
#define UNDEFINED_ONLY  2

/* Register type. */
#define BIND_VAL_OBJ 4

/* The NQPMu. */
static PMC *NQPMu;

/* Sets the NQPMu object. */
void nqp_set_nqpmu(PMC *nqpmu) {
    NQPMu = nqpmu;
}

/* Compares two types to see if the first is narrower than the second. */
static INTVAL is_narrower_type(PARROT_INTERP, PMC *a, PMC *b) {
    /* If one of the types is null, then we know that's automatically
     * wider than anything. Even wider than your mom! */
    if (PMC_IS_NULL(b) && !PMC_IS_NULL(a))
        return 1;
    else if (PMC_IS_NULL(a) && b == NQPMu)
        return 1;
    else if (PMC_IS_NULL(a) || PMC_IS_NULL(b))
        return 0;

    /* Otherwise, check with the type system. */
    return STABLE(a)->type_check(interp, a, b) != 0;
}

/* Takes two candidates and determines if the first one is narrower than the
 * second. Returns a true value if they are. */
static INTVAL is_narrower(PARROT_INTERP, candidate_info *a, candidate_info *b) {
    INTVAL narrower = 0;
    INTVAL tied = 0;
    INTVAL i, types_to_check;

    /* Work out how many parameters to compare, factoring in slurpiness
     * and optionals. */
    if (a->num_types == b->num_types)
        types_to_check = a->num_types;
    else if (a->min_arity == b->min_arity)
        types_to_check = a->num_types > b->num_types ? b->num_types : a->num_types;
    else
        return 0;

    /* Analyse each parameter in the two candidates. */
    for (i = 0; i < types_to_check; i++) {
        PMC * const type_obj_a = a->types[i];
        PMC * const type_obj_b = b->types[i];
        if (type_obj_a == type_obj_b) {
            /* Same type to tied (Perl 6 multi-dispatch considers constraints here). */
            tied++;
        }
        else {
            if (is_narrower_type(interp, type_obj_a, type_obj_b))
                narrower++;
            else if (!is_narrower_type(interp, type_obj_b, type_obj_a))
                tied++;
        }
    }

    /* If one is narrower than the other from current analysis, we're done. */
    if (narrower >= 1 && narrower + tied == types_to_check)
        return 1;

    /* If they aren't tied, we're also done. */
    else if (tied != types_to_check)
        return 0;

    /* Otherwise, we see if one has a slurpy and the other not. A lack of
     * slurpiness makes the candidate narrower. Otherwise, they're tied. */
    return a->max_arity != SLURPY_ARITY && b->max_arity == SLURPY_ARITY;
}

/* Takes a ResizablePMCArray of the candidates, collects information about them
* and then does a topological sort of them. */
static candidate_info** sort_candidates(PARROT_INTERP, PMC *candidates) {
    INTVAL i, candidates_to_sort, result_pos;
    const char *error = NULL;

    /* Allocate results array (just allocate it for worst case, which
     * is no ties ever, so a null between all of them, and then space
     * for the terminating null. */
    INTVAL num_candidates = VTABLE_elements(interp, candidates);
    candidate_info ** const result = mem_allocate_n_zeroed_typed(
            2 * num_candidates + 1, candidate_info*);

    /* Create a node for each candidate in the graph. */
    candidate_graph_node ** const graph = mem_allocate_n_zeroed_typed(
            num_candidates, candidate_graph_node*);
    INTVAL insert_pos = 0;
    
    for (i = 0; i < num_candidates; i++) {
        PMC *multi_sig_pmc, *types_list, *definedness_list;
        NQP_Signature *multi_sig;
        candidate_info *info;
        INTVAL sig_elems;
        INTVAL j;
        INTVAL significant_param;

        /* Get information about this candidate. */
        PMC * const candidate = VTABLE_get_pmc_keyed_int(interp, candidates, i);

        /* Create entry in the dispatch list. */
        info = mem_allocate_zeroed_typed(candidate_info);
        info->sub = candidate;

        /* Get hold of signature, types and definednesses. */
        if (candidate->vtable->base_type == enum_class_Sub)
            GETATTR_Sub_multi_signature(interp, candidate, multi_sig_pmc);
        else
            multi_sig_pmc = ((NQP_Routine *)PMC_data(candidate))->signature;
        multi_sig = (NQP_Signature *)PMC_data(multi_sig_pmc);
        types_list = multi_sig->types;
        definedness_list = multi_sig->definednesses;
        sig_elems = VTABLE_elements(interp, types_list);

        /* Type information. */
        info->types = mem_allocate_n_zeroed_typed(sig_elems + 1, PMC*);
        info->definednesses = mem_allocate_n_zeroed_typed(sig_elems + 1, INTVAL);
        significant_param = 0;

        for (j = 0; j < sig_elems; j++) {
            /* XXX TODO: Worry about optional and slurpy later. */
            info->max_arity++;
            info->min_arity++;

            /* Record type info for this parameter. */
            info->types[significant_param] = VTABLE_get_pmc_keyed_int(interp, types_list, j);
            info->definednesses[significant_param] = VTABLE_get_integer_keyed_int(interp,
                        definedness_list, j);
            info->num_types++;
            significant_param++;
        }

        /* Add it to graph node, and initialize list of edges. */
        graph[insert_pos] = mem_allocate_zeroed_typed(candidate_graph_node);
        graph[insert_pos]->info = info;
        graph[insert_pos]->edges = mem_allocate_n_zeroed_typed(
            num_candidates, candidate_graph_node*);

        insert_pos++;
    }

    /* Now analyze type narrowness of the candidates relative to each other
     * and create the edges. */
    for (i = 0; i < num_candidates; i++) {
        INTVAL j;
        for (j = 0; j < num_candidates; j++) {
            if (i == j)
                continue;
            if (is_narrower(interp, graph[i]->info, graph[j]->info)) {
                graph[i]->edges[graph[i]->edges_out] = graph[j];
                graph[i]->edges_out++;
                graph[j]->edges_in++;
            }
        }
    }

    /* Perform the topological sort. */
    candidates_to_sort = num_candidates;
    result_pos = 0;
    while (candidates_to_sort > 0) {
        const INTVAL rem_start_point = result_pos;

        /* Find any nodes that have no incoming edges and add them to
         * results. */
        for (i = 0; i < num_candidates; i++) {
            if (graph[i]->edges_in == 0) {
                /* Add to results. */
                result[result_pos] = graph[i]->info;
                graph[i]->info = NULL;
                result_pos++;
                candidates_to_sort--;
                graph[i]->edges_in = EDGE_REMOVAL_TODO;
            }
        }
        if (rem_start_point == result_pos) {
            error = "Circularity detected in multi sub types.";
            break;
        }

        /* Now we need to decrement edges in counts for things that had
         * edges from candidates we added here. */
        for (i = 0; i < num_candidates; i++) {
            if (graph[i]->edges_in == EDGE_REMOVAL_TODO) {
                INTVAL j;
                for (j = 0; j < graph[i]->edges_out; j++)
                    graph[i]->edges[j]->edges_in--;
                graph[i]->edges_in = EDGE_REMOVED;
            }
        }

        /* This is end of a tied group, so leave a gap. */
        result_pos++;
    }

    /* Free memory associated with the graph. */
    for (i = 0; i < num_candidates; i++) {
        candidate_info *info = graph[i]->info;
        if (info) {
            if (info->types)
                mem_sys_free(info->types);
            if (info->definednesses)
                mem_sys_free(info->definednesses);
            mem_sys_free(info);
        }
        mem_sys_free(graph[i]->edges);
        mem_sys_free(graph[i]);
    }
    mem_sys_free(graph);

    /* If we had an error, free memory for result array and throw exception. */
    if (error) {
        mem_sys_free(result);
        Parrot_ex_throw_from_c_args(interp, 0, 1, error);
    }

    return result;
}

/* Gets the list of possible candidates to dispatch too. */
static PMC *get_dispatchees(PARROT_INTERP, PMC *dispatcher) {
    if (!smo_id)
        smo_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "SixModelObject", 0));
    if (dispatcher->vtable->base_type == enum_class_Sub && PARROT_SUB(dispatcher)->multi_signature->vtable->base_type == smo_id) {
        NQP_Routine *r = (NQP_Routine *)PMC_data(PARROT_SUB(dispatcher)->multi_signature);
        return r->dispatchees;
    }
    else {
        return PARROT_DISPATCHERSUB(dispatcher)->dispatchees;
    }
}

/* Gets (creating if needed) a multi-dispatch cache. */
static NQP_md_cache *get_dispatch_cache(PARROT_INTERP, PMC *dispatcher) {
    PMC *cache_ptr;
    if (!smo_id)
        smo_id = Parrot_pmc_get_type_str(interp, Parrot_str_new(interp, "SixModelObject", 0));
    if (dispatcher->vtable->base_type == enum_class_Sub && PARROT_SUB(dispatcher)->multi_signature->vtable->base_type == smo_id) {
        NQP_Routine *r = (NQP_Routine *)PMC_data(PARROT_SUB(dispatcher)->multi_signature);
        if (PMC_IS_NULL(r->dispatch_cache)) {
            NQP_md_cache *c = mem_sys_allocate_zeroed(sizeof(NQP_md_cache));
            cache_ptr = Parrot_pmc_new(interp, enum_class_Pointer);
            VTABLE_set_pointer(interp, cache_ptr, c);
            r->dispatch_cache = cache_ptr;
            PARROT_GC_WRITE_BARRIER(interp, PARROT_SUB(dispatcher)->multi_signature);
        }
        else {
            cache_ptr = r->dispatch_cache;
        }
    }
    else {
        if (PMC_IS_NULL(PARROT_DISPATCHERSUB(dispatcher)->dispatch_cache)) {
            NQP_md_cache *c = mem_sys_allocate_zeroed(sizeof(NQP_md_cache));
            cache_ptr = Parrot_pmc_new(interp, enum_class_Pointer);
            VTABLE_set_pointer(interp, cache_ptr, c);
            PARROT_DISPATCHERSUB(dispatcher)->dispatch_cache = cache_ptr;
            PARROT_GC_WRITE_BARRIER(interp, dispatcher);
        }
        else {
            cache_ptr = PARROT_DISPATCHERSUB(dispatcher)->dispatch_cache;
        }
    }
    return (NQP_md_cache *)VTABLE_get_pointer(interp, cache_ptr);
}

/*

=item C<static PMC * find_in_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args)>

Looks for an entry in the multi-dispatch cache.

=cut

*/
static PMC *
find_in_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args) {
    INTVAL arg_tup[MD_CACHE_MAX_ARITY];
    INTVAL i, j, entries, t_pos;
    struct Pcc_cell * pc_positionals;
    
    /* If it's zero-arity, return result right off. */
    if (num_args == 0)
        return cache->zero_arity;

    /* Create arg tuple. */
    if (capture->vtable->base_type == enum_class_CallContext)
        GETATTR_CallContext_positionals(interp, capture, pc_positionals);
    else
        return NULL;
    for (i = 0; i < num_args; i++) {
        if (pc_positionals[i].type == BIND_VAL_OBJ) {
            PMC *arg = pc_positionals[i].u.p;
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
        if (match)
            return cache->arity_caches[num_args - 1].results[i];
        t_pos += num_args;
    }

    return NULL;
}


/*

=item C<static void add_to_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args)>

Adds an entry to the multi-dispatch cache.

=cut

*/
static void
add_to_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args, PMC *result) {
    INTVAL arg_tup[MD_CACHE_MAX_ARITY];
    INTVAL i, entries, ins_type;
    struct Pcc_cell * pc_positionals;
    
    /* If it's zero arity, just stick it in that slot. */
    if (num_args == 0) {
        cache->zero_arity = result;
        return;
    }
    
    /* If the cache is saturated, don't do anything (we could instead do a random
     * replacement). */
    entries = cache->arity_caches[num_args - 1].num_entries;
    if (entries == MD_CACHE_MAX_ENTRIES)
        return;
    
    /* Create arg tuple. */
    if (capture->vtable->base_type == enum_class_CallContext)
        GETATTR_CallContext_positionals(interp, capture, pc_positionals);
    else
        return;
    for (i = 0; i < num_args; i++) {
        if (pc_positionals[i].type == BIND_VAL_OBJ) {
            PMC *arg = pc_positionals[i].u.p;
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
        cache->arity_caches[num_args - 1].type_ids = mem_sys_allocate(num_args * sizeof(INTVAL) * MD_CACHE_MAX_ENTRIES);
        cache->arity_caches[num_args - 1].results  = mem_sys_allocate(sizeof(PMC *) * MD_CACHE_MAX_ENTRIES);
    }

    /* Add entry. */
    ins_type = entries * num_args;
    for (i = 0; i < num_args; i++)
        cache->arity_caches[num_args - 1].type_ids[ins_type + i] = arg_tup[i];
    cache->arity_caches[num_args - 1].results[entries] = result;
    cache->arity_caches[num_args - 1].num_entries = entries + 1;
}

/* Performs a multiple dispatch using the candidates held in the passed
 * dispatcher and using the arguments in the passed capture. */
PMC *nqp_multi_dispatch(PARROT_INTERP, PMC *dispatcher, PMC *capture) {
    NQP_md_cache    *disp_cache;
    PMC             *dispatchees, *cache_result;
    INTVAL           type_mismatch, possibles_count, type_check_count,
                     num_candidates, num_args;
    candidate_info **possibles, **candidates, **cur_candidate;

    /* Count arguments. */
    num_args = VTABLE_elements(interp, capture);

    /* See if the dispatcher cache will resolve it right off. */
    disp_cache = get_dispatch_cache(interp, dispatcher);
    cache_result = find_in_cache(interp, disp_cache, capture, num_args);
    if (!PMC_IS_NULL(cache_result))
        return cache_result;
    
    /* Get list and number of dispatchees. */
    dispatchees = get_dispatchees(interp, dispatcher);
    num_candidates = VTABLE_elements(interp, dispatchees);

    /* Initialize dispatcher state. */
    possibles_count = 0;
    possibles = mem_allocate_n_typed(num_candidates, candidate_info *);

    /* Get sorted candidate list. */
    candidates    = sort_candidates(interp, dispatchees);
    cur_candidate = candidates;

    /* Iterate over the candidates and collect best ones; terminate
     * when we see two nulls (may break out earlier). */
    while (1) {
        INTVAL i;

        if (*cur_candidate == NULL) {
            /* If we have some possible candidate(s), we're done in this loop. */
            if (possibles_count)
                break;

            /* Otherwise, we keep looping and looking, unless we really hit the end. */
            if (cur_candidate[1]) {
                cur_candidate++;
                continue;
            }
            else {
                break;
            }
        }

        /* Check if it's admissable by arity. */
        if (num_args < (*cur_candidate)->min_arity || num_args > (*cur_candidate)->max_arity) {
            cur_candidate++;
            continue;
        }

        /* Check if it's admissable by type. */
        type_check_count = (*cur_candidate)->num_types > num_args
                         ? num_args
                         : (*cur_candidate)->num_types;
        type_mismatch = 0;

        for (i = 0; i < type_check_count; i++) {
            PMC * const param = VTABLE_get_pmc_keyed_int(interp, capture, i);
            PMC * const param_type = param->vtable->base_type == smo_id ?
                    STABLE(param)->WHAT : PMCNULL;
            PMC * const type_obj = (*cur_candidate)->types[i];
            INTVAL const definedness = (*cur_candidate)->definednesses[i];
            if (param_type != type_obj && !is_narrower_type(interp, param_type, type_obj)) {
                type_mismatch = 1;
                break;
            }
            if (definedness) {
                /* Have a constraint on the definedness. */
                INTVAL defined = param->vtable->base_type == smo_id ?
                        IS_CONCRETE(param) :
                        VTABLE_defined(interp, param);
                if ((!defined && definedness == DEFINED_ONLY) || (defined && definedness == UNDEFINED_ONLY)) {
                    type_mismatch = 1;
                    break;
                }
            }
        }

        if (type_mismatch) {
            cur_candidate++;
            continue;
        }

        /* If we get here, it's an admissable candidate; add to list. */
        possibles[possibles_count] = *cur_candidate;
        possibles_count++;
        cur_candidate++;
    }

    /* Cache the result if there's a single chosen one. */
    if (possibles_count == 1) {
        add_to_cache(interp, disp_cache, capture, num_args, possibles[0]->sub);
    }

    /* Need a unique candidate. */
    if (possibles_count == 1) {
        PMC *result = possibles[0]->sub;
        mem_sys_free(candidates);
        mem_sys_free(possibles);
        return result;
    }
    else if (possibles_count == 0) {
        /* Get signatures of all possible candidates. We dump them in the
         * order in which we search for them. */
        PMC    *fail_cand  = candidates[0]->sub;
        STRING *signatures = Parrot_str_new(interp, "", 0);
        cur_candidate = candidates;
        while (1) {
            if (!cur_candidate[0] && !cur_candidate[1])
                break;
            /* XXX TODO: add sig dumping. 
            if (cur_candidate[0])
                signatures = dump_signature(interp, signatures, (*cur_candidate)->sub); */
            cur_candidate++;
        }

        mem_sys_free(candidates);
        mem_sys_free(possibles);
        Parrot_ex_throw_from_c_args(interp, NULL, 1,
            "No applicable candidates found to dispatch to for '%Ss'. Available candidates are:\n%Ss",
                VTABLE_get_string(interp, fail_cand),
                signatures);
    }
    else {
        /* Get signatures of ambiguous candidates. */
        STRING *signatures = Parrot_str_new(interp, "", 0);
        INTVAL i;
        /* XXX TODO: sig dumping
        for (i = 0; i < possibles_count; i++)
            signatures = dump_signature(interp, signatures, possibles[i]->sub); */
        mem_sys_free(candidates);
        mem_sys_free(possibles);
        Parrot_ex_throw_from_c_args(interp, NULL, 1,
            "Ambiguous dispatch to multi '%Ss'. Ambiguous candidates had signatures:\n%Ss",
                VTABLE_get_string(interp, candidates[0]->sub), signatures);
    }
}
