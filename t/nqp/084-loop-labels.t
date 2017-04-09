plan(15);

my $i := 0; # counter
my $k := 0; # counter
my $t := 0; # test variable

# sanity
while $i++ < 7 { while $k++ < 3 { $t := $i * $k } }
is($t, 3, 'basic nested while loop sanity check');

$i := 0;
$t := 0;
while $i++ < 7 { $k := 0; while $k++ < 3 { $t := $i * $k } }
is($t, 21, 'basic nested while loop sanity check #2');

# without label in inner loop
$i := 0;
$t := 0;
while $i++ < 7 { $k := 0; while $k++ < 3 { $t := $i * $k; last } }
is($t, 7, 'last without label in inner loop');

$i := 0;
$t := 0;
while $i++ < 7 { $k := 0; while $k++ < 3 { $t := $i * $k; redo if $i++ == 7 } }
is($t, 24, 'redo without label in inner loop');

$i := 0;
$t := 0;
while $i++ < 7 { $k := 0; while $k++ < 3 { next if $k == 3; $t := $i * $k } }
is($t, 14, 'next without label in inner loop');

# without label in outer loop
$i := 0;
$t := 0;
while $i++ < 7 { $k := 0; while $k++ < 3 { $t := $i * $k }; last if $i == 2 }
is($t, 6, 'last without label in outer loop');

$i := 0;
$t := 0;
while $i++ < 7 { $k := 0; while $k++ < 3 { $t := $i * $k }; redo if $i == 7 && ($i := $i + 2) }
is($t, 27, 'redo without label in outer loop');

$i := 0;
$t := 0;
while $i++ < 7 { next if $i > 5; $k := 0; while $k++ < 3 { $t := $i * $k } }
is($t, 15, 'next without label in outer loop');

# with outer loop's label in inner loop
$i := 0;
$t := 0;
TESTA: while $i++ < 7 { $k := 0; while $k++ < 3 { $t := $i * $k; last TESTA if $i == 2 && $k == 3 } }
is($t, 6, "last with outer loop's label in inner loop");

$i := 0;
$t := 0;
TESTB: while $i++ < 7 { $k := 0; while $k++ < 3 { $t := $i * $k; redo TESTB if $i == 7 && ($i := $i + 2) } }
is($t, 27, "redo with outer loop's label in inner loop");

$i := 0;
$t := 0;
TESTC: while $i++ < 7 { $k := 0; while $k++ < 3 { next TESTC if $i > 5; $t := $i * $k } }
is($t, 15, "next with outer loop's label in inner loop");

$i := 0;
$t := '';
TESTD1: for ["foo"] {
    $t := $t ~ $_;
    TESTD2: for ["bar"] {
        $t := $t ~ $_;
        redo TESTD1 unless $i++
    }
}
is($t, 'foobarfoobar', 'redoing outer for loop');

my @skip;
@skip[0] := 4;
@skip[1] := 6;
@skip[2] := 7;
my @not_skipped;


$i := 0;
MAIN_LOOP: while $i < 10 {
    $i := $i + 1;
    my $j := 0;
    while $j < 3 {
        my $check := @skip[$j];
        $j := $j + 1;
        if $check == $i {
            next MAIN_LOOP;
        }
    }
    nqp::push(@not_skipped, ~$i);
}
is(nqp::join(',', @not_skipped), '1,2,3,5,8,9,10', 'testing next with a loop label');

{
    my @out;
    my $i := 0;
    OUTER: while $i < 3 {
        $i := $i + 1;
        my $j := 0;
        INNER: while $j < 5 {
            $j := $j + 1;
            my $next_outer := sub () {next OUTER};
            my $next_inner := sub () {next INNER};
            my $next := sub () {next};
            $next_outer() if $i == 2 && $j == 3;
            $next_inner() if $i == 1 && $j == 2;
            $next_inner() if $i == 3 && $j == 3;
            nqp::push(@out, "$i:$j");
        }
    }
    is(nqp::join(',', @out), '1:1,1:3,1:4,1:5,2:1,2:2,3:1,3:2,3:4,3:5', 'loop labels in nested subs' );
}

my @out;
for nqp::split('', '12345678') {
    next if $_ == 3;
    last if $_ == 6;
    @out.push($_);
}
is(nqp::join(',', @out), '1,2,4,5', 'next and last work inside for');
