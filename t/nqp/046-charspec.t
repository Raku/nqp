# check literals

plan(4);

is("\c111\c107 \c49", 'ok 1', '\c###');
is("\c[111,107,32,50]", 'ok 2', '\c[##,##,##]');
is("\c[LATIN SMALL LETTER O, LATIN SMALL LETTER K, SPACE, DIGIT THREE]", 'ok 3', '\c[name,name]');
is("\e", "\c[27]", '\e');
