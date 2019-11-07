my %const_map := nqp::hash(
    'CCLASS_ANY',           65535,
    'CCLASS_UPPERCASE',     1,
    'CCLASS_LOWERCASE',     2,
    'CCLASS_ALPHABETIC',    4,
    'CCLASS_NUMERIC',       8,
    'CCLASS_HEXADECIMAL',   16,
    'CCLASS_WHITESPACE',    32,
    'CCLASS_PRINTING',      64,
    'CCLASS_BLANK',         256,
    'CCLASS_CONTROL',       512,
    'CCLASS_PUNCTUATION',   1024,
    'CCLASS_ALPHANUMERIC',  2048,
    'CCLASS_NEWLINE',       4096,
    'CCLASS_WORD',          8192,

    'HLL_ROLE_NONE',        0,
    'HLL_ROLE_INT',         1,
    'HLL_ROLE_NUM',         2,
    'HLL_ROLE_STR',         3,
    'HLL_ROLE_ARRAY',       4,
    'HLL_ROLE_HASH',        5,
    'HLL_ROLE_CODE',        6,

    'CONTROL_ANY',          2,
    'CONTROL_NEXT',         4,
    'CONTROL_REDO',         8,
    'CONTROL_LAST',         16,
    'CONTROL_RETURN',       32,
    'CONTROL_TAKE',         128,
    'CONTROL_WARN',         256,
    'CONTROL_SUCCEED',      512,
    'CONTROL_PROCEED',      1024,
    'CONTROL_LABELED',      4096,
    'CONTROL_AWAIT',        8192,
    'CONTROL_EMIT',         16384,
    'CONTROL_DONE',         32768,

    'STAT_EXISTS',             0,
    'STAT_FILESIZE',           1,
    'STAT_ISDIR',              2,
    'STAT_ISREG',              3,
    'STAT_ISDEV',              4,
    'STAT_CREATETIME',         5,
    'STAT_ACCESSTIME',         6,
    'STAT_MODIFYTIME',         7,
    'STAT_CHANGETIME',         8,
    'STAT_BACKUPTIME',         9,
    'STAT_UID',                10,
    'STAT_GID',                11,
    'STAT_ISLNK',              12,
    'STAT_PLATFORM_DEV',       -1,
    'STAT_PLATFORM_INODE',     -2,
    'STAT_PLATFORM_MODE',      -3,
    'STAT_PLATFORM_NLINKS',    -4,
    'STAT_PLATFORM_DEVTYPE',   -5,
    'STAT_PLATFORM_BLOCKSIZE', -6,
    'STAT_PLATFORM_BLOCKS',    -7,

    'P6INT_C_TYPE_CHAR',        -1,
    'P6INT_C_TYPE_SHORT',       -2,
    'P6INT_C_TYPE_INT',         -3,
    'P6INT_C_TYPE_LONG',        -4,
    'P6INT_C_TYPE_LONGLONG',    -5,
    'P6INT_C_TYPE_BOOL',        -6,
    'P6INT_C_TYPE_SIZE_T',      -7,
    'P6INT_C_TYPE_ATOMIC_INT',  -8,
    'P6INT_C_TYPE_WCHAR_T',     -9,
    'P6INT_C_TYPE_WINT_T',      -10,
    'P6INT_C_TYPE_CHAR16_T',    -11,
    'P6INT_C_TYPE_CHAR32_T',    -12,

    'P6NUM_C_TYPE_FLOAT',       -32,
    'P6NUM_C_TYPE_DOUBLE',      -33,
    'P6NUM_C_TYPE_LONGDOUBLE',  -34,

    'P6STR_C_TYPE_CHAR',        -64,
    'P6STR_C_TYPE_WCHAR_T',     -65,
    'P6STR_C_TYPE_CHAR16_T',    -66,
    'P6STR_C_TYPE_CHAR32_T',    -67,

    'TYPE_CHECK_CACHE_DEFINITIVE',  0,
    'TYPE_CHECK_CACHE_THEN_METHOD', 1,
    'TYPE_CHECK_NEEDS_ACCEPTS',     2,

    'NORMALIZE_NONE',            0,
    'NORMALIZE_NFC',             1,
    'NORMALIZE_NFD',             2,
    'NORMALIZE_NFKC',            3,
    'NORMALIZE_NFKD',            4,

    'BINARY_ENDIAN_NATIVE',       0,
    'BINARY_ENDIAN_LITTLE',       1,
    'BINARY_ENDIAN_BIG',          2,

    'BINARY_SIZE_8_BIT',          0,
    'BINARY_SIZE_16_BIT',         4,
    'BINARY_SIZE_32_BIT',         8,
    'BINARY_SIZE_64_BIT',        12,

    'UNAME_SYSNAME',              0,
    'UNAME_RELEASE',              1,
    'UNAME_VERSION',              2,
    'UNAME_MACHINE',              3,

    'SOCKET_FAMILY_UNSPEC', 0,
    'SOCKET_FAMILY_INET',   1,
    'SOCKET_FAMILY_INET6',  2,
    'SOCKET_FAMILY_UNIX',   3
);
