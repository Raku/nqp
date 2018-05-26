# flattened arguments

plan(12);

sub xyz($x, $y, $z) {
    ok( $x == 7, 'first argument');
    ok( $y == 8, 'second argument');
    ok( $z == 9, 'third argument');
}

sub ijk(:$i, :$j, :$k) {
    ok( $i == 1, 'first named argument');
    ok( $j == 2, 'second named argument');
    ok( $k == 3, 'third named argument');
}

my @a := [7,8,9];
xyz(|@a);

my %a;
%a<i> := 1;
%a<j> := 2;
%a<k> := 3;
ijk(|%a);

sub int_args(int $x, int $y) {
    ok( $x == 7, 'first int argument');
    ok( $y == 8, 'second int argument');
}
my $int_args := nqp::list_i(7, 8);
int_args(|$int_args);

sub num_args(num $x, num $y) {
    ok( $x == 7.2, 'first num argument');
    ok( $y == 8.3, 'second num argument');
}
my $num_args := nqp::list_n(7.2, 8.3);
num_args(|$num_args);

sub str_args(str $x, str $y) {
    ok( $x eq 'a', 'first str argument');
    ok( $y eq 'b', 'second str argument');
}
my $str_args := nqp::list_s('a', 'b');
str_args(|$str_args);
