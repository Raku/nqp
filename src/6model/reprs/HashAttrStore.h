#ifndef HAS_H_GUARD
#define HAS_H_GUARD

typedef struct {
    /* Storage slot (hash). Note in the future we could have a Parrot
     * Hash data structure right here and make every object 1 GC-able. */
    PMC *store;
} HashAttrStoreBody;

typedef struct {
    SixModelObjectCommonalities common;
    HashAttrStoreBody body;
} HashAttrStoreInstance;

/* Initializes the Hash Attribute Store REPR. */
REPROps * HashAttrStore_initialize(PARROT_INTERP);

#endif
