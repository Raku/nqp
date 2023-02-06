# This test file is self-referential and shouldn't be changed.
# Please put other tests for slurp in another file.
plan(1);

my $content := slurp("t/nqp/063-slurp.t");
ok(nqp::chars($content) == 234, "File slurped");

# vim: ft=perl6
