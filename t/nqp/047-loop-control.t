#! nqp

plan(5);

my $runs := 0;

while $runs < 5 {
    $runs++;
    last if $runs == 3;
}

ok($runs == 3, "last works in while");

$runs := 0;
my $i := 0;
while $runs < 5 {
    $runs++;
    next if $runs % 2;
    $i++;
}

ok($i == 2, "next works in while");

$runs := 0;
$i := 0;
while $i < 5 {
    $runs++;
    redo if $runs % 2;
    $i++;
}

ok($runs == 10, "redo works in while");

$runs := 0;
my $list := (1,20,300,4000,50000);
my $sum := 0;
for $list {
    $runs++;
    if $_ == 4000 {
        last;
    }
    $sum := $_ + $sum;
}
ok($runs == 4 && $sum == 321, "last works in for");

{
    my int $i := 10;
    my $log := '';
    nqp::while($i >= 0, nqp::stmts(
        $log := $log ~ "$i",
        $i := $i-1,
        nqp::if($i % 2 == 0, next),
        $log := $log ~ ":even",
    ), $log := $log ~ '|');
    is($log,'10:even|9|8:even|7|6:even|5|4:even|3|2:even|1|0:even|', 'next works correctly with 3 argument while');
}
