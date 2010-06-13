#! nqp

pir::load_bytecode('nqp-setting.pbc');

plan(1);

my $content := slurp("t/setting/03-io.t");
ok($content, "File slurped");

# vim: ft=perl6
