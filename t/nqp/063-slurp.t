plan(1);

my $content := slurp("t/nqp/063-slurp.t");
ok(nqp::chars($content) == 150 || nqp::chars($content) == 156, "File slurped");

# vim: ft=perl6
