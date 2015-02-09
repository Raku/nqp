#plan(11);
plan(9);
{
    my $node := QAST::Stmts.new();
    ok(nqp::elems($node.list) == 0,"QAST::Stmts start with 0 children");
    $node.push(2);
    $node.push(3);
    ok(nqp::elems($node.list) == 2,"QAST::Stmts.push adds elements");
    ok($node.list[0] == 2,"first element is correct after QAST::Stmts.pushes");
    ok($node.list[1] == 3,"second element is correct after QAST::Stmts.pushes");
    $node.unshift(1);
    ok($node.list[0] == 1,"QAST::Stmts.unshift adds the element");
    ok($node.shift() == 1,"QAST::Stmts.shift returns the element");
    ok($node.list[0] == 2,"QAST::Stmts.shift removes the element");
    ok($node.pop == 3,"QAST::Stmts.pop returns the element");
    ok(nqp::elems($node.list) == 1,"QAST::Stmts.pop removes the element");
}
#{
#    my $node := QAST::Var.new( :name('$?CLASS'), :scope('typevar') );
#    ok($node.has_compile_time_value == 0,"a QAST::Node has no compile time value when created");
#    $node.set_compile_time_value("foo");
#    ok($node.has_compile_time_value == 1,"we can set a compile time value");
#}
