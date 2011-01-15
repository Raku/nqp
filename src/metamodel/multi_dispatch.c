#define PARROT_IN_EXTENSION
#include "parrot/parrot.h"
#include "parrot/extend.h"
#include "rakudoobject.h"
#include "../pmc/pmc_dispatchersub.h"
#include "../pmc/pmc_nqpmultisig.h"

/* Performs a multiple dispatch using the candidates held in the passed
 * DispatcherSub and using the arguments in the passed capture. */
PMC *nqp_multi_dispatch(PARROT_INTERP, PMC *dispatcher, PMC *capture) {
    /* Get list of dispatchees. */
    PMC *dispatchees = PARROT_DISPATCHERSUB(dispatcher)->dispatchees;
    
    /* XXX For now just always return the first one.
     * TODO: Implement candidate sorting. */
    return VTABLE_get_pmc_keyed_int(interp, dispatchees, 0);
}
