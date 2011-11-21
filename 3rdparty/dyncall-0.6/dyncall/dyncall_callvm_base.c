#include "dyncall_callvm.h"

void dc_callvm_base_init(DCCallVM* pInstance, DCCallVM_vt* pVTable)
{
  pInstance->mVTpointer = pVTable;
  pInstance->mError = DC_ERROR_NONE;
}
