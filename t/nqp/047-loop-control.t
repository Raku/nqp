#! nqp

plan(11);

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
{
    my int $i := 5;
    my @log;
    my sub check($arg) {
        @log.push("check($arg)");
        $arg >= 0;
    }

    repeat while check($i) {
        @log.push("[$i]");
        $i := $i - 1;
        next if $i % 2 == 0 ;
        @log.push("even");
    }

    is(nqp::join(',', @log), '[5],check(4),[4],even,check(3),[3],check(2),[2],even,check(1),[1],check(0),[0],even,check(-1)', 'next works with repeat while');
}

{
    my int $i := 5;
    my @log;
    my sub check($arg) {
        @log.push("check($arg)");
        $arg < 0;
    }

    repeat until check($i) {
        @log.push("[$i]");
        $i := $i - 1;
        next if $i % 2 == 0;
        @log.push("even");
    }

    is(nqp::join(',', @log), '[5],check(4),[4],even,check(3),[3],check(2),[2],even,check(1),[1],check(0),[0],even,check(-1)', 'next works with repeat while');
}

{
    my int $i := 5;
    my @log;
    my sub check($arg) {
        @log.push("check($arg)");
        $arg < 0;
    }

    repeat until check($i) {
        @log.push("[$i]");
        $i := $i - 1;
        last if $i == 2;
    }

    is(nqp::join(',', @log), '[5],check(4),[4],check(3),[3]', 'last works with repeat until');
}

{
    my int $i := 5;
    my @log;
    my sub check($arg) {
        @log.push("check($arg)");
        $arg >= 0;
    }

    repeat while check($i) {
        @log.push("[$i]");
        $i := $i - 1;
        last if $i == 2;
    }

    is(nqp::join(',', @log), '[5],check(4),[4],check(3),[3]', 'last works with repeat while');
}

{
    my int $i := 5;
    my @log;
    my sub check($arg) {
        @log.push("check($arg)");
        $arg >= 0;
    }

    repeat while check($i) {
        @log.push("[$i]");
        $i := $i - 1;
        redo if $i % 2 == 0 ;
        @log.push("even");
    }

    is(nqp::join(',', @log), '[5],[4],even,check(3),[3],[2],even,check(1),[1],[0],even,check(-1)', 'redo works with repeat while');
}

{
    my int $i := 5;
    my @log;
    my sub check($arg) {
        @log.push("check($arg)");
        $arg < 0;
    }

    repeat until check($i) {
        @log.push("[$i]");
        $i := $i - 1;
        redo if $i % 2 == 0;
        @log.push("even");
    }

    is(nqp::join(',', @log), '[5],[4],even,check(3),[3],[2],even,check(1),[1],[0],even,check(-1)', 'redo works with repeat while');
}
