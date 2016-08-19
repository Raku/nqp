# t/moar/argument-truncation.t

plan(8);

sub pos8(int8  $i) {
    ok($i==42, 'int8 pos argument works')
}
sub pos16(int16  $i) {
    ok($i==42, 'int16 pos argument works')
}
sub pos32(int32  $i) {
    ok($i==42, 'int32 pos argument works')
}
sub pos64(int64  $i) {
    ok($i==42, 'int64 pos argument works')
}
pos8(42);
pos16(42);
pos32(42);
pos64(42);

sub named8(int8  :$i) {
    ok($i==42, 'int8 named argument works')
}
sub named16(int16  :$i) {
    ok($i==42, 'int16 named argument works')
}
sub named32(int32  :$i) {
    ok($i==42, 'int32 named argument works')
}
sub named64(int64  :$i) {
    ok($i==42, 'int64 named argument works')
}
named8(:i(42));
named16(:i(42));
named32(:i(42));
named64(:i(42));

