/* This is how an NQPRoutine looks on the inside. */
typedef struct {
    PMC    *st;                 /* S-table, though we don't care about that here. */
    PMC    *sc;                 /* Serialization context, though we don't care about that here. */
    PMC    *_do;                /* Lower-level code object. */
    PMC    *signature;          /* Signature object. */
    PMC    *dispatchees;        /* List of dispatchees, if any. */
    PMC    *dispatch_cache;     /* Holder for any dispatcher cache. */
} NQP_Routine;

/* This is how an NQPSignature looks on the inside. */
typedef struct {
    PMC    *st;                 /* S-table, though we don't care about that here. */
    PMC    *sc;                 /* Serialization context, though we don't care about that here. */
    PMC    *types;              /* Set of types for arguments. */
    PMC    *definednesses;      /* Set of definedness flags for arguments. */
} NQP_Signature;

/* Maximum positional arity we cache up to. (Good to make it a
 * power of 2.) */
#define MD_CACHE_MAX_ARITY 4

/* Maximum entries we cache per arity. (Good to make it a
 * power of 2.) */
#define MD_CACHE_MAX_ENTRIES 16

/* The cached info that we keep per arity. */
typedef struct {
    /* The number of entries in the cache. */
    INTVAL num_entries;

    /* This is a bunch of type IDs. We allocate it arity * MAX_ENTRIES
     * big and go through it in arity sized chunks. */
    INTVAL *type_ids;

    /* The results we return from the cache. */
    PMC **results;
} NQP_md_arity_cache;

/* Multi-dispatcher cache info, which we will hang off the dispatcher
 * cache slot in a dispatcher sub. */
typedef struct {
    /* The fast, per-arity cache. */
    NQP_md_arity_cache arity_caches[MD_CACHE_MAX_ARITY];

    /* Zero-arity cached result. */
    PMC *zero_arity;
} NQP_md_cache;

/* Nabbed from Parrot, since it's not exposed and it's the only way
 * (so far as I can tell) to get at the underlying primitive type
 * being passed. */
typedef struct Pcc_cell
{
    union u {
        PMC     *p;
        STRING  *s;
        INTVAL   i;
        FLOATVAL n;
    } u;
    INTVAL type;
} Pcc_cell;

PMC *nqp_multi_dispatch(PARROT_INTERP, PMC *dispatcher, PMC *capture);
void nqp_set_nqpmu(PMC *nqpmu);
void add_to_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args, PMC *result);
PMC * find_in_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args);
