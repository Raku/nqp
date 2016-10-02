#! nqp

plan(7);

my $str := 'hello';

is(subst($str, /h/, 'f'), 'fello', 'We can use subst');
is($str, 'hello', '.. without side effect');

is(subst($str, /l/, 'r', :global), 'herro', 'We can use subst to replace all matches');

my $i := 0;
is(subst($str, /l/, -> $m {$i++}), 'he0lo', 'We can have a closure as replacement');
ok($i == 1, '.. and $i updated');

is(subst($str, /FOO/, 'BAR'), 'hello', "Non-existing string doesn't clobber string");
is(subst($str, /FOO/, 'BAR', :global), 'hello', "Non-existing string doesn't clobber string globally");

# vim: ft=perl6

