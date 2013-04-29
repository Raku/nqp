#ifndef DYNCALL_REPRS_H_GUARD
#define DYNCALL_REPRS_H_GUARD

INTVAL get_nc_repr_id(void);
INTVAL get_cs_repr_id(void);
INTVAL get_cp_repr_id(void);
INTVAL get_ca_repr_id(void);

PMC *make_int_result(PARROT_INTERP, PMC *type, INTVAL value);
PMC *make_num_result(PARROT_INTERP, PMC *type, FLOATVAL value);
PMC *make_str_result(PARROT_INTERP, PMC *type, INTVAL ret_type, char *cstring);
PMC *make_cstruct_result(PARROT_INTERP, PMC *type, void *cstruct);
PMC *make_cpointer_result(PARROT_INTERP, PMC *type, void *ptr);
PMC *make_carray_result(PARROT_INTERP, PMC *type, void *carray);

#endif
