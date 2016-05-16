#! nqp

plan(1);

my $content := slurp("t/nqp/063-slurp.t");
ok(nqp::chars($content) == 158 || nqp::chars($content) == 166, "File slurped");

# vim: ft=perl6
