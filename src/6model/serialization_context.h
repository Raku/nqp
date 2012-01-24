#ifndef SERIALIZATIONCONTEXT_H_GUARD
#define SERIALIZATIONCONTEXT_H_GUARD

PMC * SC_get_sc(PARROT_INTERP, STRING *handle);
void SC_set_sc(PARROT_INTERP, STRING *handle, PMC *sc);
INTVAL SC_find_stable_idx(PARROT_INTERP, PMC *sc, PMC *st);
INTVAL SC_find_object_idx(PARROT_INTERP, PMC *sc, PMC *st);
STRING * SC_get_handle(PARROT_INTERP, PMC *sc);
STRING * SC_get_description(PARROT_INTERP, PMC *sc);
#endif
