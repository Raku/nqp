#ifndef SERIALIZATIONCONTEXT_H_GUARD
#define SERIALIZATIONCONTEXT_H_GUARD

PMC * SC_get_sc(PARROT_INTERP, STRING *handle);
void SC_set_sc(PARROT_INTERP, STRING *handle, PMC *sc);
INTVAL SC_find_stable_idx(PARROT_INTERP, PMC *sc, PMC *st);
INTVAL SC_find_object_idx(PARROT_INTERP, PMC *sc, PMC *st);
INTVAL SC_find_code_idx(PARROT_INTERP, PMC *sc, PMC *st);
STRING * SC_get_handle(PARROT_INTERP, PMC *sc);
STRING * SC_get_description(PARROT_INTERP, PMC *sc);
PMC * SC_get_stable(PARROT_INTERP, PMC *sc, INTVAL idx);
PMC * SC_get_object(PARROT_INTERP, PMC *sc, INTVAL idx);
PMC * SC_get_code(PARROT_INTERP, PMC *sc, INTVAL idx);
void SC_set_code(PARROT_INTERP, PMC *sc, INTVAL idx, PMC *code);
void SC_repossess_object(PARROT_INTERP, PMC *target_sc, PMC *orig_sc, PMC *object);
void SC_repossess_stable(PARROT_INTERP, PMC *target_sc, PMC *orig_sc, PMC *st_pmc);
#endif
