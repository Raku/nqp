class QAST::Stmts is QAST::Node {
    has $!resultchild;

    method resultchild(*@value) { $!resultchild := @value[0] if @value; $!resultchild }
}
