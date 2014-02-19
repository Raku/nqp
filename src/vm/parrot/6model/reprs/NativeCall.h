#ifndef NATIVECALL_H_GUARD
#define NATIVECALL_H_GUARD

#include "dyncall.h"
#include "dynload.h"
#include "dyncall_callback.h"

/* Body of a NativeCall. */
typedef struct {
    char *lib_name;
    DLLib *lib_handle;
    void *entry_point;
    INTVAL convention;
    INTVAL num_args;
    INTVAL *arg_types;
    INTVAL ret_type;
    PMC **arg_info;
} NativeCallBody;

/* This is how an instance with the NativeCall representation looks. */
typedef struct {
    SixModelObjectCommonalities common;
    NativeCallBody body;
} NativeCallInstance;

/* Initializes the NativeCall REPR. */
REPROps * NativeCall_initialize(PARROT_INTERP,
        PMC * (* wrap_object_func_ptr) (PARROT_INTERP, void *obj),
        PMC * (* create_stable_func_ptr) (PARROT_INTERP, REPROps *REPR, PMC *HOW));

#endif
