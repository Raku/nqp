# while, until statements

plan(21);

my $a; my $sum;

$a := 1; $sum := 0;
while $a != 10 {
    $sum := $sum + $a;
    $a := $a + 1;
}
ok($sum == 45, 'basic while loop test');

$a := 1; $sum := 0;
$sum := $sum + $a++ while $a < 10;
ok($sum == 45, 'basic while statement modifier');

$a := 1; $sum := 0;
until $a == 10 {
    $sum := $sum + $a;
    $a := $a + 1;
}
ok($sum == 45, 'basic until loop test');

$a := 1; $sum := 0;
$sum := $sum + $a++ until $a > 9;
ok($sum == 45, 'basic until statement modifier');

$a := 1; $sum := 0;
while $a != 1 {
    $sum := 99;
    $a := 1;
}
ok($sum == 0, 'while loop exits initial false immediately');

$a := 1; $sum := 0;
until $a == 1 {
    $sum := 99;
    $a := 1;
}
ok($sum == 0, 'until loop exits initial true immediately');

$a := 1; $sum := 0;
repeat {
    $sum := $sum + $a;
    $a := $a + 1;
} while $a != 10;
ok($sum == 45, 'basic repeat_while loop');

$a := 1; $sum := 0;
repeat {
    $sum := $sum + $a;
    $a := $a + 1;
} until $a == 10;
ok($sum == 45, 'basic repeat_until loop');

$a := 1; $sum := 0;
repeat while $a != 10 {
    $sum := $sum + $a;
    $a := $a + 1;
};
ok($sum == 45, 'basic repeat_while loop');

$a := 1; $sum := 0;
repeat until $a == 10 {
    $sum := $sum + $a;
    $a := $a + 1;
};
ok($sum == 45, 'basic repeat_until loop');

$a := 1; $sum := 0;
repeat {
    $sum := 99;
} while $a != 1;
ok($sum == 99, 'repeat_while always executes at least once');

$a := 1; $sum := 0;
repeat {
    $sum := 99;
} until $a == 1;
ok($sum == 99, 'repeat_until always executes at least once');

$a := 1; $sum := 0;
repeat while $a != 1 {
    $sum := 99;
};
ok($sum == 99, 'repeat_while always executes at least once');

$a := 1; $sum := 0;
repeat until $a == 1 {
    $sum := 99;
};
ok($sum == 99, 'repeat_until always executes at least once');

my $i := 4;
my $log := '';
while $i*10 -> $cond {
    $i := $i - 1;
    $log := $log ~ $cond ~ ';';
}
is($log, '40;30;20;10;', 'while ... -> $param {...}');

my $str := 'hello there';
while $str -> $got {
    is($got, 'hello there', 'regression test for a bug in type conversion');
    $str := '';
}

if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip('repeat until seems to have a bug on the jvm', 2);
} else {
    my $x := 0;
    repeat until $x >= 2 -> $another_x {
      if $x == 0 {
        ok(nqp::isnull($another_x), 'repeat until -> get null before condition');
      } else {
        is($another_x, 0, 'repeat until -> gets condition');
      }
      $x := $x + 1;
    }
}

sub cond($y) {
  $y == 1 ?? 100 !! 0;
}
my $y := 0;
repeat while cond($y) -> $cond {
  if $y == 0 {
    ok(nqp::isnull($cond), 'repeat while -> get null before condition');
  } else {
    is($cond, 100, 'repeat while -> gets condition');
  }
  $y := $y + 1;
}

{
    my int $i := 10;
    my $log := '';
    nqp::while($i >= 0, nqp::stmts(
        $log := $log ~ "|$i",
        $i := $i-1,
        nqp::if($i % 2 == 0, redo),
        $log := $log ~ ":ev",
    ), $log := $log ~ 'en');
    is($log,'|10:even|9|8:even|7|6:even|5|4:even|3|2:even|1|0:even', 'redo works correctly with 3 argument while');
}
