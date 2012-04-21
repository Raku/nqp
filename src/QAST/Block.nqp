class QAST::Block is QAST::Node {
    has str $!blocktype;
    has int $!lexical;
    has str $!cuid;
    
    method blocktype(*@value) { $!blocktype := @value[0] if @value; $!blocktype }
    method lexical(*@value)   { $!lexical := @value[0] if @value; $!lexical }
    method cuid(*@value)      { $!cuid := @value[0] if @value; $!cuid }
}
