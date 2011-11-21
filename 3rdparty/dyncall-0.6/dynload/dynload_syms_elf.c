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

#if defined(DC__OS_Linux) && !defined(_GNU_SOURCE)
#define _GNU_SOURCE
#endif

/*
 
 dynamic symbol resolver for elf

 */

#include "dynload.h"
#include "dynload_macros.h"
#if defined(DC__OS_OpenBSD)
#	include <elf_abi.h>
#else
#	include <elf.h>
#endif
#include <assert.h>
#include <dlfcn.h>
#include <stdio.h>

/* run-time configuration 64/32 */

#ifdef DL__BinaryFormat_elf64
typedef Elf64_Ehdr   Elf_Ehdr;
typedef Elf64_Phdr   Elf_Phdr;
typedef Elf64_Sym    Elf_Sym;
typedef Elf64_Dyn    Elf_Dyn;
typedef Elf64_Sxword Elf_tag;
typedef Elf64_Addr   Elf_Addr;
#else
typedef Elf32_Ehdr   Elf_Ehdr;
typedef Elf32_Phdr   Elf_Phdr;
typedef Elf32_Sym    Elf_Sym;
typedef Elf32_Dyn    Elf_Dyn;
typedef Elf32_Sword  Elf_tag;
typedef Elf32_Addr   Elf_Addr;
#endif


struct DLLib_
{
  Elf_Ehdr* pElf_Ehdr;
};


typedef struct 
{
  uint32_t nbucket;        
  uint32_t nchain;         /* the total size of symbols */

  /* 

   it follows two arrays ...
   
   uint32_t bucket[nbucket-1] 
   uint32_t chain[nchain-1]      

  */

} Elf_Hash;


typedef struct {
  uint32_t nbuckets; /* the number of buckets */
  uint32_t symndx; /* The dynamic symbol table has dynsymcount symbols. symndx is the index of
  the first symbol in the dynamic symbol table that is to be accessible via the hash table.
  This implies that there are (dynsymcount - index) symbols accessible  via the hash table.
  */
  uint32_t maskwords; /* the number of ELFCLASS sized words in the Bloom filter portion of the hash table section.
  This value must be non-zero, and must be a power of 2 as explained below.

  Note that a value of 0 could be interpreted to mean that no Bloom filter is present in the hash section.
  However, the GNU linkers do not do this -- the GNU hash section always includes at least 1 mask word.
  */
  uint32_t shift2; /* A shift count used by the Bloom filter. */

  /* Following ... 

  Elf_Addr bloom[maskwords];  // bloom filter to rapidly reject attempts to look up symbols.
  uint32_t buckets[nbuckets]; // an Array of nbucket 32-bit hash values.
  uint32_t chain[dynsymcount - symndx];
  
  */
} Elf_GNU_Hash;


struct DLSyms_
{
  const char* pStrTab;
  Elf_Hash*   pHash;
  Elf_Sym*    pSymTab;
  Elf_GNU_Hash* pGNUHash;
  uint32_t*     pGNUHashChain;
};


DLSyms* dlSymsInit(DLLib* pLib)
{
  DLSyms* pSyms;
  if(!pLib)
    return NULL;
   
  pSyms = (DLSyms*)dcAllocMem(sizeof(DLSyms));
  pSyms->pStrTab  = 0;
  pSyms->pSymTab  = 0;
  pSyms->pHash    = 0;
  pSyms->pGNUHash = 0;
  pSyms->pGNUHashChain = 0;

  Elf_Ehdr* pH   = pLib->pElf_Ehdr;
#ifdef DL__BinaryFormat_elf32
  assert( pH->e_ident[EI_CLASS] == ELFCLASS32 );
#else
  assert( pH->e_ident[EI_CLASS] == ELFCLASS64 );
#endif

  assert(pH->e_phoff > 0);
  assert(pH->e_shoff > 0);
  unsigned char* pMem = (unsigned char*) pH;
  Elf_Phdr* pP = (Elf_Phdr*) ( pMem + pH->e_phoff );
  
  int i; 

  /* traverse run-time program headers */
  
  for (i=0;i<pH->e_phnum;++i)
  {
    Elf_Phdr* p = &pP[i];
    switch( p->p_type )
    {
      case PT_DYNAMIC:
        {
          Elf_Dyn* pDyn = (Elf_Dyn*) ( pMem + p->p_vaddr );
          int sSymEnt = -1;
          int sStrSz = -1;
          for(;;) {
            Elf_tag dt = pDyn->d_tag;
            if (dt == DT_NULL) break;
            switch(dt)
            {
              case DT_STRTAB:   pSyms->pStrTab  = (const char*)   pDyn->d_un.d_ptr; break;
              case DT_SYMTAB:   pSyms->pSymTab  = (Elf_Sym*)      pDyn->d_un.d_ptr; break;
              case DT_HASH:     pSyms->pHash    = (Elf_Hash*)     pDyn->d_un.d_ptr; break;
/* this one was not defined on dyncall.org machine */
#if defined DT_GNU_HASH
              case DT_GNU_HASH: pSyms->pGNUHash = (Elf_GNU_Hash*) pDyn->d_un.d_ptr; break;
#endif
            }
            pDyn++;
          }

        }
        break;
    }
  }
  if (pSyms->pGNUHash) {
    Elf_GNU_Hash* p = pSyms->pGNUHash;
    Elf_Addr* pbloom = (Elf_Addr*) ( &p[1] );
    uint32_t* pbuckets = (uint32_t*) &pbloom[p->maskwords];
    uint32_t* pchain   = (uint32_t*) &pbuckets[p->nbuckets];
    pSyms->pGNUHashChain = pchain;
  }
  return pSyms;
}


void dlSymsCleanup(DLSyms* pSyms)
{
  dcFreeMem(pSyms);
}


int dlSymsCount(DLSyms* pSyms)
{
  if (!pSyms || !pSyms->pHash)
    return 0;

  if (pSyms->pGNUHash) {
    return pSyms->pHash->nchain - pSyms->pGNUHash->symndx;
  } else {
    return pSyms->pHash->nchain;
  }
}


const char* dlSymsName(DLSyms* pSyms, int index)
{
  int export_base;
  if(!pSyms || !pSyms->pSymTab)
    return NULL;

  if (pSyms->pGNUHash) {
    export_base = pSyms->pGNUHash->symndx;
  } else {
    export_base = 0;
  }
  int str_index = pSyms->pSymTab[ export_base + index ].st_name;
  return &pSyms->pStrTab[str_index];
}


void* dlSymsValue(DLSyms* pSyms, int index)
{
  int export_base;
  if(!pSyms || !pSyms->pSymTab)
    return NULL;

  if (pSyms->pGNUHash) {
    export_base = pSyms->pGNUHash->symndx;
  } else {
    export_base = 0;
  }
  return (void*) pSyms->pSymTab[ export_base + index ].st_value;
}


#if 0

/*
 * the "gnu hash" / DJB hash function
 */

uint32_t
dl_new_hash(const char* s)
{
  uint32_t h = 5381;
  for (unsigned char c = *s; c != '\0' ; c = *++s)
    h = h * 33 + c;
  return h;
}


/* GNU binutils implementation: */
static uint_fast32_t
dl_new_hash(const char* s)
{
  uint_fast32_t h = 5381;
  for (unsigned char c = *s; c != '\0' ; c = *++s)
    h = h * 33 + c;
  return h & 0xffffffff;
}
#endif


#if 0
/*
 * the hash function 
 */
unsigned long
elf_hash(const unsigned char* name)
{
  unsigned long h = 0, g;
  while(*name) {
    h = (h << 4) + *name++;
    if (g = h & 0xf0000000)
      h ^= g >> 24;
    h &= ~g;
  }
  return h;
}
#endif


#if 0
void dlInitSyms_elf64(DLSyms* pResolver, DLLib* pLib)
{
  pResolver->elf64 = 1;
  Elf64_Ehdr* pH   = pLib->u.pElf64_Ehdr;
  assert(pH->e_phoff > 0);
  assert(pH->e_shoff > 0);
  DLubyte* pMem = (DLubyte*) pH;
  Elf64_Phdr* pP = (Elf64_Phdr*) ( pMem + pH->e_phoff );
  
  int i; 

  /* traverse run-time program headers */
  
  int pi_dynamic = -1;
  for (i=0;i<pH->e_phnum;++i)
  {
    Elf64_Phdr* p = &pP[i];
    switch( p->p_type )
    {
      case PT_DYNAMIC:
        {
          pi_dynamic = i;
          Elf64_Dyn* pDyn = (Elf64_Dyn*) ( pMem + p->p_vaddr );
          int sSymEnt = -1;
          int sStrSz = -1;
          for(;;) {
            Elf64_Sxword dt = pDyn->d_tag;
            if (dt == DT_NULL) break;
            switch(dt)
            {
              case DT_STRTAB: pResolver->pStrTab = (const char*) pDyn->d_un.d_ptr; break;
              case DT_SYMTAB: pResolver->u.pSymTab64 = (Elf64_Sym*)  pDyn->d_un.d_ptr; break;
              case DT_HASH:   pResolver->pHash =   (Elf_Hash*) pDyn->d_un.d_ptr; break;
              // case DT_SYMENT: sSymEnt = (int) pDyn->d_un.d_val; break;
              // case DT_STRSZ:  sStrSz  = (int) pDyn->d_un.d_val; break;
              // case DT_SYMBOLIC: printf("symbolic!\n"); break;
              // case DT_STRTAB: pS_StrTab = (Elf64_Shdr*) pDyn->d_un.d_ptr; break;
              // case DT_SYMTAB: pS_SymTab = (Elf64_Shdr*) pDyn->d_un.d_ptr; break;
            }
            pDyn++;
          }
#if 0
          /* traversing the symbol table */
          int j;
          /* by convention, the first symbol table references an undefined symbol */
          // pStrTab = &pS[ pH->e_shstrndx ];
          for(j=1; j < pHash->nchain ;++j) {

            // int name = pS_StrTab->sh_name;
            int sti = pSymTab[j].st_name;

            printf("%s\n", &pStrTab[sti] );

          }
#endif

        }
        break;
    }
  }

#if 0
  /* traverse section headers */
  Elf64_Shdr* pS = (Elf64_Shdr*) ( pMem + pH->e_shoff );  
  int dynsym = -1;
  /* skip section 0 which is always zero due to the Elf standard. */
  for (i=1;i<pH->e_shnum;++i) 
  {
    Elf64_Shdr* p= &pS[i];
    
    switch( p->sh_type )
    {
      case SHT_DYNSYM:
        dynsym = i;
        break;
    }
  }
#endif


  // return 0;
}


void dlInitSyms_elf32(DLLib* pLib)
{
  DLSyms* pResolver = (DLSyms*)dcAllocMem(sizeof(DLSyms));
  pResolver->elf64 = 0;
  Elf32_Ehdr* pH   = pLib->u.pElf32_Ehdr;
  assert(pH->e_phoff > 0);
  assert(pH->e_shoff > 0);
  DLubyte* pMem = (DLubyte*) pH;
  Elf32_Phdr* pP = (Elf32_Phdr*) ( pMem + pH->e_phoff );
  
  int i; 

  /* traverse run-time program headers */
  
  int pi_dynamic = -1;
  for (i=0;i<pH->e_phnum;++i)
  {
    Elf32_Phdr* p = &pP[i];
    switch( p->p_type )
    {
      case PT_DYNAMIC:
        {
          pi_dynamic = i;
          Elf32_Dyn* pDyn = (Elf32_Dyn*) ( pMem + p->p_vaddr );
          int sSymEnt = -1;
          int sStrSz = -1;
          for(;;) {
            Elf32_Sword dt = pDyn->d_tag;
            if (dt == DT_NULL) break;
            switch(dt)
            {
              case DT_STRTAB: pResolver->pStrTab = (const char*) pDyn->d_un.d_ptr; break;
              case DT_SYMTAB: pResolver->u.pSymTab32 = (Elf32_Sym*)  pDyn->d_un.d_ptr; break;
              case DT_HASH:   pResolver->pHash =   (Elf_Hash*) pDyn->d_un.d_ptr; break;
            }
            pDyn++;
          }

        }
        break;
    }
  }
}
#endif


const char* dlSymsNameFromValue(DLSyms* pSyms, void* value)
{
  Dl_info info;
  return (dladdr(value, &info) && (value == info.dli_saddr))
    ? info.dli_sname
    : NULL;
}

