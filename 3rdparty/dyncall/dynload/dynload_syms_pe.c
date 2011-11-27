/*

 Copyright (c) 2007-2010 Daniel Adler <dadler@uni-goettingen.de>, 
                         Tassilo Philipp <tphilipp@potion-studios.com>
                         Olivier Chafik <olivier.chafik@gmail.com>

 Permission to use, copy, modify, and distribute this software for any
 purpose with or without fee is hereby granted, provided that the above
 copyright notice and this permission notice appear in all copies.

 THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

*/

#include "dynload.h"
#include "dynload_macros.h"
#include "dyncall_macros.h"
#include "dyncall_alloc.h"

#include <windows.h>
#include <Dbghelp.h>

struct DLLib_
{
  IMAGE_DOS_HEADER dos_header;
};


struct DLSyms_
{
  DLLib*                pLib;
  const char*           pBase;
  const DWORD*          pNames;
  const DWORD*          pFuncs;
  const unsigned short* pOrds;
  size_t                count;
};


DLSyms* dlSymsInit(DLLib* pLib)
{
  DLSyms* pResolver = (DLSyms*)dcAllocMem(sizeof(DLSyms));
  const char* base = (const char*) pLib;
  IMAGE_DOS_HEADER*       pDOSHeader      = (IMAGE_DOS_HEADER*) base;  
  IMAGE_NT_HEADERS*       pNTHeader       = (IMAGE_NT_HEADERS*) ( base + pDOSHeader->e_lfanew );  
  IMAGE_DATA_DIRECTORY*   pExportsDataDir = &pNTHeader->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_EXPORT];
  IMAGE_EXPORT_DIRECTORY* pExports        = (IMAGE_EXPORT_DIRECTORY*) (base + pExportsDataDir->VirtualAddress);  

  pResolver->pBase  = base;
  pResolver->pNames = (DWORD*)(base + pExports->AddressOfNames);
  pResolver->pFuncs = (DWORD*)(base + pExports->AddressOfFunctions);
  pResolver->pOrds  = (unsigned short*)(base + pExports->AddressOfNameOrdinals);
  pResolver->count  = (size_t)pExports->NumberOfNames;
  pResolver->pLib   = pLib;
  SymSetOptions(SYMOPT_DEFERRED_LOADS);
  SymInitialize(GetCurrentProcess(), NULL, TRUE);

  return pResolver;
}


void dlSymsCleanup(DLSyms* pResolver)
{
  SymCleanup(GetCurrentProcess());
}


int dlSymsCount(DLSyms* pResolver)
{
  return (int)pResolver->count;
}


const char* dlSymsName(DLSyms* pResolver, int index)
{
  return (const char*)((BYTE*)pResolver->pBase + pResolver->pNames[index]);
}


void* dlSymsValue(DLSyms* pResolver, int index)
{
  return (void*)((void**)pResolver->pBase + pResolver->pFuncs[pResolver->pOrds[index]]);
}


const char* dlSymsNameFromValue(DLSyms* pResolver, void* value) 
{
  DWORD64  dwAddress = (DWORD64)value;
  DWORD64  dwDisplacement = 0;
  ULONG64 buffer[(
    sizeof(SYMBOL_INFO) +
    MAX_SYM_NAME * sizeof(TCHAR) +
    sizeof(ULONG64) - 1) /
    sizeof(ULONG64)
  ];
  PSYMBOL_INFO pSymbol = (PSYMBOL_INFO) buffer;
  pSymbol->SizeOfStruct = sizeof(SYMBOL_INFO);
  pSymbol->MaxNameLen = MAX_SYM_NAME;

  return (SymFromAddr(GetCurrentProcess(), dwAddress, &dwDisplacement, pSymbol) && !dwDisplacement)
    ? pSymbol->Name
    : NULL;
}
