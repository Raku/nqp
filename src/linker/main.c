#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <elf.h>

int main(int argc, char* argv[]) {
    if (argc < 2) {
        printf("Input is of format './elfmaker <file to embed> <module file?>'\n");
        exit(0);
    }

    Elf64_Ehdr elf_head;
    elf_head.e_ident[EI_MAG0] = (unsigned char)ELFMAG0;
    elf_head.e_ident[EI_MAG1] = (unsigned char)ELFMAG1;
    elf_head.e_ident[EI_MAG2] = (unsigned char)ELFMAG2;
    elf_head.e_ident[EI_MAG3] = (unsigned char)ELFMAG3;
    elf_head.e_ident[EI_CLASS] = (unsigned char)ELFCLASS64; /* Always 64 bit ELF FIXME*/
    #ifdef MVM_BIGENDIAN
    elf_head.e_ident[EI_DATA] = (unsigned char)ELFDATA2MSB;
    #else
    elf_head.e_ident[EI_DATA] = (unsigned char)ELFDATA2LSB;
    #endif
    elf_head.e_ident[EI_VERSION] = (unsigned char)EV_CURRENT;
    elf_head.e_ident[EI_OSABI] = (unsigned char)ELFOSABI_NONE; /* Always UNIX System V ABI FIXME */
    elf_head.e_type = (Elf64_Half)ET_REL; /* Object file type */
    elf_head.e_machine = EM_X86_64; /* Architecture FIXME*/
    elf_head.e_version = 0x1; /* Object file version */
    elf_head.e_entry = 0x0; /* Entry point virtual address */
    elf_head.e_phoff = 0; /*Program header table file offset */
    elf_head.e_shoff = sizeof(elf_head);    /* Section header table file offset */
    elf_head.e_flags = 0x0;		/* Processor-specific flags */
    elf_head.e_ehsize = sizeof(elf_head);		/* ELF header size in bytes */
    elf_head.e_phentsize = 0;		/* Program header table entry size */
    elf_head.e_phnum = 0;		/* Program header table entry count */
    elf_head.e_shentsize = sizeof(Elf64_Shdr);		/* Section header table entry size */
    elf_head.e_shnum = 5;		/* Section header table entry count */
    elf_head.e_shstrndx = 4;		/* Section header string table index */

    Elf64_Shdr null_hdr = {0, SHT_NULL, 0, 0, 0, 0, 0, 0, 0, 0};

    int i = 1;
    char* command = calloc(100, sizeof(char));
    sprintf(command, "echo %s > manifest.txt", argv[i]);
    system(command);
    while (i < argc) {
        i++;
        sprintf(command, "echo %s >> manifest.txt", argv[i]);
        system(command);
    }
    sprintf(command, "tar -cf archive.tar -T manifest.txt --transform='s!^.*/!!'");
    system(command);
    free(command);

    FILE* tarball = fopen("archive.tar", "rb");
    if (NULL == tarball)
    {
        printf("Error opening file\n");
        exit(0);
    }
    fseek(tarball, 0L, SEEK_END);
    long rodata_size = ftell(tarball);
    fseek(tarball, 0L, SEEK_SET);
    char* rodata_sgmt = (char*) calloc(rodata_size, sizeof(char));
    if (NULL == rodata_sgmt) {
        return 0;
    }
    rodata_size = fread(rodata_sgmt, 1, rodata_size, tarball);
    fclose(tarball);
    remove("archive.tar");
    remove("manifest.txt");

    Elf64_Shdr rodata_hdr;
    rodata_hdr.sh_name = 1;		/* Section name (string tbl index) */
    rodata_hdr.sh_type = SHT_PROGBITS;		/* Section type */
    rodata_hdr.sh_flags = SHF_ALLOC;		/* Section flags */
    rodata_hdr.sh_addr = 0;		/* Section virtual addr at execution */
    rodata_hdr.sh_offset = sizeof(elf_head) + 5*sizeof(Elf64_Shdr);		/* Section file offset */
    rodata_hdr.sh_size = rodata_size;		/* Section size in bytes */
    rodata_hdr.sh_link = 0;		/* Link to another section */
    rodata_hdr.sh_info = 0;		/* Additional section information */
    rodata_hdr.sh_addralign = 1;		/* Section alignment */
    rodata_hdr.sh_entsize = 00;		/* Entry size if section holds table */

    Elf64_Sym null_sym = {0, ELF64_ST_INFO(STB_LOCAL, STT_NOTYPE), ELF64_ST_VISIBILITY(STV_DEFAULT), SHN_UNDEF, 0, 0};
    Elf64_Sym first_sym = {0, ELF64_ST_INFO(STB_LOCAL, STT_SECTION), ELF64_ST_VISIBILITY(STV_DEFAULT), 1, 0, 0};
    Elf64_Sym start_sym = {1, ELF64_ST_INFO(STB_GLOBAL, STT_NOTYPE), ELF64_ST_VISIBILITY(STV_DEFAULT), 1, 0, 0};
    Elf64_Sym end_sym = {24, ELF64_ST_INFO(STB_GLOBAL, STT_NOTYPE), ELF64_ST_VISIBILITY(STV_DEFAULT), 1, rodata_hdr.sh_size, 0};
    Elf64_Sym size_sym = {45, ELF64_ST_INFO(STB_GLOBAL, STT_NOTYPE), ELF64_ST_VISIBILITY(STV_DEFAULT), SHN_ABS, rodata_hdr.sh_size, 0};

    Elf64_Shdr symtab_hdr;
    symtab_hdr.sh_name = strlen(".rodata") + 2;		/* Section name (string tbl index) */
    symtab_hdr.sh_type = SHT_SYMTAB;		/* Section type */
    symtab_hdr.sh_flags = 0;		/* Section flags */
    symtab_hdr.sh_addr = 0;		/* Section virtual addr at execution */
    symtab_hdr.sh_offset = rodata_hdr.sh_offset + rodata_hdr.sh_size;		/* Section file offset */
    symtab_hdr.sh_size = 5*sizeof(Elf64_Sym);		/* Section size in bytes */
    symtab_hdr.sh_link = 3;		/* Link to another section */
    symtab_hdr.sh_info = 2;		/* Additional section information */
    symtab_hdr.sh_addralign = 8;		/* Section alignment */
    symtab_hdr.sh_entsize = sizeof(Elf64_Sym);		/* Entry size if section holds table */

    char* strtab_sgmt = "\0_binary_test_txt_start\0_binary_test_txt_end\0_binary_test_txt_size\0";

    Elf64_Shdr strtab_hdr;
    strtab_hdr.sh_name = symtab_hdr.sh_name + strlen(".symtab") + 1;		/* Section name (string tbl index) */
    strtab_hdr.sh_type = SHT_STRTAB;		/* Section type */
    strtab_hdr.sh_flags = 0;		/* Section flags */
    strtab_hdr.sh_addr = 0;		/* Section virtual addr at execution */
    strtab_hdr.sh_offset = symtab_hdr.sh_offset + symtab_hdr.sh_size;		/* Section file offset */
    strtab_hdr.sh_size = 67;		/* Section size in bytes */
    strtab_hdr.sh_link = 0;		/* Link to another section */
    strtab_hdr.sh_info = 0;		/* Additional section information */
    strtab_hdr.sh_addralign  = 1;		/* Section alignment */
    strtab_hdr.sh_entsize = 0;		/* Entry size if section holds table */

    char* shstrtab_sgmt = "\0.rodata\0.symtab\0.strtab\0.shstrtab\0";

    Elf64_Shdr shstrtab_hdr;
    shstrtab_hdr.sh_name = strtab_hdr.sh_name + strlen(".strtab") + 1;		/* Section name (string tbl index) */
    shstrtab_hdr.sh_type = SHT_STRTAB;		/* Section type */
    shstrtab_hdr.sh_flags = 0;		/* Section flags */
    shstrtab_hdr.sh_addr = 0;		/* Section virtual addr at execution */
    shstrtab_hdr.sh_offset = strtab_hdr.sh_offset + strtab_hdr.sh_size;		/* Section file offset */
    shstrtab_hdr.sh_size = 34;		/* Section size in bytes */
    shstrtab_hdr.sh_link = 0;		/* Link to another section */
    shstrtab_hdr.sh_info = 0;		/* Additional section information */
    shstrtab_hdr.sh_addralign  = 1;		/* Section alignment */
    shstrtab_hdr.sh_entsize = 0;		/* Entry size if section holds table */

    FILE* elf_file = fopen(argv[1], "w+");
    if (NULL == elf_file) {
        printf("Error opening ELF file\n");
        exit(0);
    }
    
    int err= fwrite(&elf_head, 1, sizeof(elf_head),elf_file);
    err = fwrite(&null_hdr, 1, sizeof(null_hdr), elf_file);
    err = fwrite(&rodata_hdr, 1, sizeof(rodata_hdr), elf_file);
    err = fwrite(&symtab_hdr, 1, sizeof(symtab_hdr), elf_file);
    err = fwrite(&strtab_hdr, 1, sizeof(strtab_hdr), elf_file);
    err = fwrite(&shstrtab_hdr, 1, sizeof(shstrtab_hdr), elf_file);
    err = fwrite(rodata_sgmt, 1, rodata_hdr.sh_size, elf_file);
    err = fwrite(&null_sym, 1, sizeof(Elf64_Sym), elf_file);
    err = fwrite(&first_sym, 1, sizeof(Elf64_Sym), elf_file);
    err = fwrite(&start_sym, 1, sizeof(Elf64_Sym), elf_file);
    err = fwrite(&end_sym, 1, sizeof(Elf64_Sym), elf_file);
    err = fwrite(&size_sym, 1, sizeof(Elf64_Sym), elf_file);
    err = fwrite(strtab_sgmt, 1, strtab_hdr.sh_size, elf_file);
    err = fwrite(shstrtab_sgmt, 1, shstrtab_hdr.sh_size, elf_file);
    fclose(elf_file);
}
