plan(1);

my $content := slurp("VERSION");
ok(nqp::chars($content) == 8 || nqp::chars($content) == 9, "File slurped");

# vim: ft=perl6
