#ifndef NFA_H_GUARD
#define NFA_H_GUARD

/* NFA constants. */
#define EDGE_FATE              0
#define EDGE_EPSILON           1
#define EDGE_CODEPOINT         2
#define EDGE_CODEPOINT_NEG     3
#define EDGE_CHARCLASS         4
#define EDGE_CHARCLASS_NEG     5
#define EDGE_CHARLIST          6
#define EDGE_CHARLIST_NEG      7
#define EDGE_CODEPOINT_I       9
#define EDGE_CODEPOINT_I_NEG   10
#define EDGE_GENERIC_VAR       11
#define EDGE_CHARRANGE         12
#define EDGE_CHARRANGE_NEG     13
#define EDGE_CODEPOINT_LL      14
#define EDGE_CODEPOINT_I_LL    15

/* State entry. */
typedef struct {
    INTVAL act;
    INTVAL to;
    union {
        INTVAL  i;
        STRING *s;
        struct {
            Parrot_Int4 uc;
            Parrot_Int4 lc;
        } uclc;
    } arg;
} NFAStateInfo;

/* Body of an NFA. */
typedef struct {
    PMC           *fates;
    INTVAL         num_states;
    INTVAL        *num_state_edges;
    NFAStateInfo **states;
} NFABody;

/* This is how an instance with the NFA representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    NFABody body;
} NFAInstance;

/* Initializes the NFA REPR. */
REPROps * NFA_initialize(PARROT_INTERP);

#endif
