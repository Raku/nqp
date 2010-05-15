#! nqp

pir::load_bytecode('nqp-setting.pbc' );

plan(4);

my $str := 'hello';

ok(subst($str, /h/, 'f') eq 'fello', 'We can use subst');
ok($str                  eq 'hello', '.. withouth side effect');

#ok(subst($str, /l/, 'r', 1) eq 'ferro', 'We can use subst to replace all matches');

my $i := 0;
ok(subst($str, /l/, {$i++}) eq 'he0lo', 'We can have a closure as replacement');
ok($i == 1, '.. and $i updated');

