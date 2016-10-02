plan(6);

proto foo($a, $b?) { * }
multi foo($a) { 1 }
multi foo($a, $b) { 2 }
ok(foo('omg') == 1);
ok(foo('omg', 'wtf') == 2);

proto bar($a?) { 'omg' ~ {*} ~ 'bbq' }
multi bar() { 'wtf' }
multi bar($a) { 'lol' }
is(bar(), 'omgwtfbbq');
is(bar(42), 'omglolbbq');

proto multi_with_named($a?, :$named) { * }
multi multi_with_named(:$named) { 'hello ' ~ $named}
multi multi_with_named($type, :$named) { 'your ' ~ $type ~ ' kind is not welcome here '~ $named}

is(multi_with_named('funny', :named('stranger')), 'your funny kind is not welcome here stranger');
is(multi_with_named(:named('stranger')), 'hello stranger');
