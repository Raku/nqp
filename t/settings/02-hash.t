#! nqp

pir::load_bytecode('nqp-settings.pbc');

my %hash;
%hash<foo> := 1;
%hash<bar> := 2;
%hash<baz> := 42;

say('1..17');

say(%hash.exists('foo') ?? "ok 1" !! "nok 2");
say(%hash.exists('bang') ?? "nok 2" !! "ok 2");

my @keys := %hash.keys;
say(+@keys == 3 ?? 'ok 3' !! 'nok 3');

my @sorted := <bar baz foo>;
for @keys.sort -> $key {
    my $expected := @sorted.shift;
    say($expected == $key ?? 'ok' !! 'nok');
}

my %expected;
%expected<foo> := 1;
%expected<bar> := 2;
%expected<baz> := 42;

my %values;

for %hash.kv -> $k, $v {
    say(%expected.exists($k) ?? 'ok' !! 'nok');
    say(%expected{$k} == $v  ?? 'ok' !! 'nok');
    %expected.delete($k);
    %values{$v} := 1
}

say(+%expected.keys == 0 ?? 'ok' !! 'nok');

for %hash.values -> $v {
    say(%values.exists($v) ?? 'ok' !! 'nok');
    %values.delete($v);
}

say(+%values.keys == 0 ?? 'ok' !! 'nok');

# vim: ft=perl6
