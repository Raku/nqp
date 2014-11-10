#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "../sixmodelobject.h"
#include "NFA.h"

/* This representation's function pointer table. */
static REPROps *this_repr;

/* Creates a new type object of this representation, and associates it with
 * the given HOW. */
static PMC * type_object_for(PARROT_INTERP, PMC *HOW) {
    /* Create new object instance. */
    NFAInstance *obj = mem_allocate_zeroed_typed(NFAInstance);

    /* Build an STable. */
    PMC *st_pmc = create_stable(interp, this_repr, HOW);
    STable *st  = STABLE_STRUCT(st_pmc);

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
    UNUSED(interp);
    UNUSED(st);
    UNUSED(repr_info);
    /* Nothing to do. */
}

/* Creates a new instance based on the type object. */
static PMC * allocate(PARROT_INTERP, STable *st) {
    NFAInstance *obj = mem_allocate_zeroed_typed(NFAInstance);
    obj->common.stable = st->stable_pmc;
    return wrap_object(interp, obj);
}

/* Initialize a new instance. */
static void initialize(PARROT_INTERP, STable *st, void *data) {
    UNUSED(interp);
    UNUSED(st);
    UNUSED(data);
    /* Nothing to do here. */
}

/* Copies to the body of one object to another. */
static void copy_to(PARROT_INTERP, STable *st, void *src, void *dest) {
    NFABody *src_body = (NFABody *)src;
    NFABody *dest_body = (NFABody *)dest;
    INTVAL i;
    UNUSED(interp);
    UNUSED(st);

    dest_body->fates = src_body->fates;
    dest_body->num_states = src_body->num_states;
    
    if (dest_body->num_states > 0)
        dest_body->num_state_edges = (INTVAL *)mem_sys_allocate(dest_body->num_states * sizeof(INTVAL));
    for (i = 0; i < dest_body->num_states; i++)
        dest_body->num_state_edges[i] = src_body->num_state_edges[i];

    dest_body->states = (NFAStateInfo **)mem_sys_allocate(dest_body->num_states * sizeof(NFAStateInfo *));
    for (i = 0; i < dest_body->num_states; i++) {
        INTVAL size = dest_body->num_state_edges[i] * sizeof(NFAStateInfo);
        if (size > 0) {
            dest_body->states[i] = (NFAStateInfo *)mem_sys_allocate(size);
            memcpy(dest_body->states[i], src_body->states[i], size);
        }
    }
}

/* This Parrot-specific addition to the API is used to mark an object. */
static void gc_mark(PARROT_INTERP, STable *st, void *data) {
    NFABody *body = (NFABody *)data;
    INTVAL i, j;
    UNUSED(st);
    
    if (!PMC_IS_NULL(body->fates))
        Parrot_gc_mark_PMC_alive(interp, body->fates);
    
    for (i = 0; i < body->num_states; i++) {
        INTVAL edges = body->num_state_edges[i];
        for (j = 0; j < edges; j++) {
            switch (body->states[i][j].act) {
                case EDGE_CHARLIST:
                case EDGE_CHARLIST_NEG:
                    Parrot_gc_mark_STRING_alive(interp, body->states[i][j].arg.s);
                default:
                    break;
            }
        }
    }
}

/* This Parrot-specific addition to the API is used to free an object. */
static void gc_free(PARROT_INTERP, PMC *obj) {
    NFAInstance *nfa = (NFAInstance *)PMC_data(obj);
    INTVAL i;
    UNUSED(interp);
    for (i = 0; i < nfa->body.num_states; i++)
        if (nfa->body.states[i])
            mem_sys_free(nfa->body.states[i]);
    mem_sys_free(nfa->body.num_state_edges);
    mem_sys_free(nfa);
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

/* Serializes the data. */
static void serialize(PARROT_INTERP, STable *st, void *data, SerializationWriter *writer) {
    NFABody *body = (NFABody *)data;
    INTVAL i, j;
    UNUSED(st);
    
    /* Write fates. */
    writer->write_ref(interp, writer, body->fates);
    
    /* Write number of states. */
    writer->write_int(interp, writer, body->num_states);
    
    /* Write state edge list counts. */
    for (i = 0; i < body->num_states; i++)
        writer->write_int(interp, writer, body->num_state_edges[i]);

    /* Write state graph. */
    for (i = 0; i < body->num_states; i++) {
        for (j = 0; j < body->num_state_edges[i]; j++) {
            writer->write_int(interp, writer, body->states[i][j].act);
            writer->write_int(interp, writer, body->states[i][j].to);
            switch (body->states[i][j].act) {
            case EDGE_FATE:
            case EDGE_CODEPOINT:
            case EDGE_CODEPOINT_NEG:
            case EDGE_CHARCLASS:
            case EDGE_CHARCLASS_NEG:
                writer->write_int(interp, writer, body->states[i][j].arg.i);
                break;
            case EDGE_CHARLIST:
            case EDGE_CHARLIST_NEG:
                writer->write_str(interp, writer, body->states[i][j].arg.s);
                break;
            case EDGE_CODEPOINT_I:
            case EDGE_CODEPOINT_I_NEG:
            case EDGE_CHARRANGE:
            case EDGE_CHARRANGE_NEG: {
                writer->write_int(interp, writer, body->states[i][j].arg.uclc.lc);
                writer->write_int(interp, writer, body->states[i][j].arg.uclc.uc);
                break;
            }
            default:
                break;
            }
        }
    }
}

/* Deserializes the data. */
static void deserialize(PARROT_INTERP, STable *st, void *data, SerializationReader *reader) {
    NFABody *body = (NFABody *)data;
    INTVAL i, j;
    UNUSED(st);

    /* Read fates. */
    body->fates = reader->read_ref(interp, reader);
    
    /* Read number of states. */
    body->num_states = reader->read_int(interp, reader);
    
    if (body->num_states > 0) {
        /* Read state edge list counts. */
        body->num_state_edges = (INTVAL *)mem_sys_allocate(body->num_states * sizeof(INTVAL));
        for (i = 0; i < body->num_states; i++)
            body->num_state_edges[i] = reader->read_int(interp, reader);
            
        /* Read state graph. */
        body->states = (NFAStateInfo **)mem_sys_allocate(body->num_states * sizeof(NFAStateInfo *));
        for (i = 0; i < body->num_states; i++) {
            INTVAL edges = body->num_state_edges[i];
            if (edges > 0)
                body->states[i] = (NFAStateInfo *)mem_sys_allocate(edges * sizeof(NFAStateInfo));
            for (j = 0; j < edges; j++) {
                body->states[i][j].act = reader->read_int(interp, reader);
                body->states[i][j].to = reader->read_int(interp, reader);
                switch (body->states[i][j].act) {
                case EDGE_FATE:
                case EDGE_CODEPOINT:
                case EDGE_CODEPOINT_NEG:
                case EDGE_CHARCLASS:
                case EDGE_CHARCLASS_NEG:
                    body->states[i][j].arg.i = reader->read_int(interp, reader);
                    break;
                case EDGE_CHARLIST:
                case EDGE_CHARLIST_NEG:
                    body->states[i][j].arg.s = reader->read_str(interp, reader);
                    break;
                case EDGE_CODEPOINT_I:
                case EDGE_CODEPOINT_I_NEG:
                case EDGE_CHARRANGE:
                case EDGE_CHARRANGE_NEG: {
                    body->states[i][j].arg.uclc.lc = reader->read_int(interp, reader);
                    body->states[i][j].arg.uclc.uc = reader->read_int(interp, reader);
                    break;
                }
                default:
                    break;
                }
            }
        }
    }
}

/* Initializes the NFA representation. */
REPROps * NFA_initialize(PARROT_INTERP) {
    UNUSED(interp);
    /* Allocate and populate the representation function table. */
    this_repr = mem_allocate_zeroed_typed(REPROps);
    this_repr->type_object_for = type_object_for;
    this_repr->compose = compose;
    this_repr->allocate = allocate;
    this_repr->initialize = initialize;
    this_repr->copy_to = copy_to;
    this_repr->serialize = serialize;
    this_repr->deserialize = deserialize;
    this_repr->gc_mark = gc_mark;
    this_repr->gc_free = gc_free;
    this_repr->get_storage_spec = get_storage_spec;
    return this_repr;
}
