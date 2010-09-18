/* This file contains various structure definitions for the NQP/Rakudo object
 * meta-model implementation. */

#ifndef RAKUDOOBJECT_H_GUARD
#define RAKUDOOBJECT_H_GUARD

/* The commonalities shared between all Rakudo objects, no matter what the
 * REPR is. This struct should be placed as the first thing in the object
 * struct used by all representations. */
typedef struct {
    PMC *stable;
} RakudoObjectCommonalities;

/* S-Tables (short for Shared Table) contains the commonalities shared between
 * a (HOW, REPR) pairing (for example, (HOW for the class Dog, P6Opaque). */
typedef struct {
    /* The representation. */
    PMC *REPR;

    /* The meta-object. */
    PMC *HOW;

    /* The type-object. */
    PMC *WHAT;

    /* The computed v-table for static dispatch. */
    PMC **vtable;

    /* The length of the v-table. */
    INTVAL vtable_length;

    /* An ID solely for use in caches that last a VM instance. Thus it
     * should never, ever be serialized and you should NEVER make a
     * type directory based upon this ID. Otherwise you'll create memory
     * leaks for anonymous types, and other such screwups. */
    INTVAL type_cache_id;
} STable;

/* Various handy macros for getting at important stuff. */
#define STABLE_PMC(o) (((RakudoObjectCommonalities *)PMC_data(o))->stable)
#define STABLE(o)     ((STable *)PMC_data(STABLE_PMC(o)))

#endif
