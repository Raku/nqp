#! nqp

# check literals

plan(3);

is("\c111\c107 \c49", 'ok 1', '\c###');
is("\c[111,107,32,50]", 'ok 2', '\c[##,##,##]');

# TODO: This test only fails for nqp-p :-(
# is("\c[LATIN SMALL LETTER O, LATIN SMALL LETTER K, SPACE, DIGIT THREE]", 'ok 3', '\c[name,name]');

is("\e", "\c[27]", '\e');
