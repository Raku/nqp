#! nqp

# Testing nqp::openpipe on JVM.

plan(7);

my $p := nqp::openpipe('echo aardvarks', nqp::cwd(), nqp::getenvhash(), '');
ok( nqp::defined($p) == 1, 'nqp::openpipe' );

my $pstr := nqp::readallfh($p);
ok( $pstr ~~ / 'aardvarks' /, 'nqp::readallfh with a pipe');

ok( nqp::closefh($p), 'nqp::closefh with a pipe');
ok( nqp::closefh($p), 'nqp::closefh with a pipe already closed');

my $q := nqp::openpipe('doesnotexist', nqp::cwd(), nqp::getenvhash(), '');
ok( nqp::defined($q) == 1, 'nqp::openpipe nonexistent cmd');

my $qstr := nqp::readallfh($q);
ok( $qstr ~~ / 'command not found' | 'not recognized' /, 'nqp::readallfh with a pipe nonexistent command');

ok( nqp::closefh($q), 'nqp::closefh with a pipe nonexistent command');
