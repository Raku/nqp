class QAST::Block is QAST::Node {
    has str $!blocktype;
    
    method blocktype(*@value) { $!blocktype := @value[0] if @value; $!blocktype }
}
