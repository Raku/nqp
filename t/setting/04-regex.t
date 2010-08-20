#! nqp

pir::load_bytecode('nqp-setting.pbc');

plan(2);

my @a := split(/\d/, 'a23b5d');
ok(+@a == 4, 'split produced 4 chunks');
ok((pir::join__SSP('!',@a) eq 'a!!b!d'), 'got right chunks');

# vim: ft=perl6
