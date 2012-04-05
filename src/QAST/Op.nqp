class QAST::Op is QAST::Node {
    has str $!qasttype;
    
    method qasttype(*@value) { $!qasttype := @value[0] if @value; $!qasttype }
}
