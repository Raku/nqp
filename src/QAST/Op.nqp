class QAST::Op is QAST::Node {
    has str $!op;
    
    method op(*@value) { $!op := @value[0] if @value; $!op }
}
