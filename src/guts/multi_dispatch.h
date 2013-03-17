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
    
    /* Whether the entry is allowed to have named arguments. Doesn't say
     * anything about which ones, though. Something that is ambivalent
     * about named arguments to the degree it doesn't care about them 
     * even tie-breaking (like NQP) can just throw such entries into the
     * cache. Things that do care should not make such cache entries. */
    char *named_ok;

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

void add_to_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args, PMC *result);
PMC * find_in_cache(PARROT_INTERP, NQP_md_cache *cache, PMC *capture, INTVAL num_args);
