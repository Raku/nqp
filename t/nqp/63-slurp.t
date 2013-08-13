#! nqp

plan(1);

my $content := slurp("t/nqp/63-slurp.t");
ok(nqp::chars($content) == 126, "File slurped");

# vim: ft=perl6
