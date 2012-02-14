/* This is how an NQPRoutine looks on the inside. */
typedef struct {
    PMC    *st;                 /* S-table, though we don't care about that here. */
    PMC    *sc;                 /* Serialization context, though we don't care about that here. */
    PMC    *_do;                /* Lower-level code object. */
    PMC    *signature;          /* Signature object. */
    PMC    *dispatchees;        /* List of dispatchees, if any. */
    PMC    *dispatcher_cache;   /* Holder for any dispatcher cache. */
} NQP_Routine;

/* This is how an NQPSignature looks on the inside. */
typedef struct {
    PMC    *st;                 /* S-table, though we don't care about that here. */
    PMC    *sc;                 /* Serialization context, though we don't care about that here. */
    PMC    *types;              /* Set of types for arguments. */
    PMC    *defindnesses;       /* Set of definedness flags for arguments. */
} NQP_Signature;

PMC *nqp_multi_dispatch(PARROT_INTERP, PMC *dispatcher, PMC *capture);
