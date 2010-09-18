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

/* A representation is what controls the layout of an object and storage of
 * attributes, as well as how it boxes/unboxes to the three primitive types
 * INTVAL, FLOATVAL and STRING * (if it can).
 *
 * All representations will either use this struct directly or have it as
 * the first element in their own struct followed by any data they want to
 * keep for representation instance. Essentially, it defines the set of
 * functions that a representation should implement to fulfil the
 * representation API. */
typedef struct {
    /* Creates a new type object of this representation, and
     * associates it with the given HOW. Also sets up a new
     * representation instance if needed. */
    PMC * (*type_object_for) (PARROT_INTERP, PMC *self, PMC *HOW);

    /* Creates a new instance based on the type object. */
    PMC * (*instance_of) (PARROT_INTERP, PMC *self, PMC *WHAT);

    /* Checks if a given object is defined (from the point of
     * view of the representation). */
    INTVAL (*defined) (PARROT_INTERP, PMC *self, PMC *Obj);

    /* Gets the current value for an attribute. */
    PMC * (*get_attribute) (PARROT_INTERP, PMC *self, PMC *Object, PMC *ClassHandle, STRING *Name);

    /* Gets the current value for an attribute, obtained using the
     * given hint.*/
    PMC * (*get_attribute_with_hint) (PARROT_INTERP, PMC *self, PMC *Object, PMC *ClassHandle, STRING *Name, INTVAL Hint);

    /* Binds the given value to the specified attribute. */
    void (*bind_attribute) (PARROT_INTERP, PMC *self, PMC *Object, PMC *ClassHandle, STRING *Name, PMC *Value);

    /* Binds the given value to the specified attribute, using the
     * given hint. */
    void (*bind_attribute_with_hint) (PARROT_INTERP, PMC *self, PMC *Object, PMC *ClassHandle, STRING *Name, INTVAL Hint, PMC *Value);

    /* Gets the hint for the given attribute ID. */
    INTVAL (*hint_for) (PARROT_INTERP, PMC *self, PMC *ClassHandle, STRING *Name);

    /* Used with boxing. Sets an integer value, for representations that
     * can hold one. */
    void (*set_int) (PARROT_INTERP, PMC *self, PMC *Object, INTVAL Value);

    /* Used with boxing. Gets an integer value, for representations that
     * can hold one. */
    INTVAL (*get_int) (PARROT_INTERP, PMC *self, PMC *Object);

    /* Used with boxing. Sets a floating point value, for representations that
     * can hold one. */
    void (*set_num) (PARROT_INTERP, PMC *self, PMC *Object, FLOATVAL Value);

    /* Used with boxing. Gets a floating point value, for representations that
     * can hold one. */
    FLOATVAL (*get_num) (PARROT_INTERP, PMC *self, PMC *Object);

    /* Used with boxing. Sets a string value, for representations that
     * can hold one. */
    void (*set_str) (PARROT_INTERP, PMC *self, PMC *Object, STRING *Value);

    /* Used with boxing. Gets a string value, for representations that
     * can hold one. */
    STRING * (*get_str) (PARROT_INTERP, PMC *self, PMC *Object);

    /* This Parrot-specific addition to the API is used to mark an object. */
    void (*gc_mark) (PARROT_INTERP, PMC *self, PMC *Object);
} REPRCommonalities;

/* Various handy macros for getting at important stuff. */
#define STABLE_PMC(o)  (((RakudoObjectCommonalities *)PMC_data(o))->stable)
#define STABLE(o)      ((STable *)PMC_data(STABLE_PMC(o)))
#define REPR_PMC(o)    (STABLE(o)->REPR)
#define REPR(o)        ((REPRCommonalities *)PMC_data(REPR_PMC(o)))
#define REPR_STRUCT(p) ((REPRCommonalities *)PMC_data(p))

#endif
