#! nqp

plan(4);

ok(Regex::Cursor.parse('a', :rule(/<alpha>/), :p(0)),
        'Can parse "a" with <alpha> and :p(0)');

ok(!Regex::Cursor.parse('a', :rule(/<alpha>/), :p(1)),
        'Can parse "a" with <alpha> :p(off-range)');

ok(!Regex::Cursor.parse('a', :rule(/<alpha>/), :c(1)),
        'Can parse "a" with <alpha> :c(off-range)');

ok(!Regex::Cursor.parse('a', :rule(/<alpha>/), :p(5)),
        'Can parse "a" with <alpha> :p(far-off-range)');
