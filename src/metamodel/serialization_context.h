#ifndef SERIALIZATIONCONTEXT_H_GUARD
#define SERIALIZATIONCONTEXT_H_GUARD

PMC * SC_get_sc_object(PARROT_INTERP, INTVAL idx);
void SC_set_sc_object(PARROT_INTERP, INTVAL idx, PMC *object);

#endif
