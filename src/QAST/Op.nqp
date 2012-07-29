class QAST::Op is QAST::Node {
    has str $!name;
    has str $!op;
    has str $!childorder;
    
    method name(*@value)       { $!name := @value[0] if @value; $!name || "" }
    method op(*@value)         { $!op := @value[0] if @value; $!op }
    method childorder(*@value) { $!childorder := @value[0] if @value; $!childorder || "" }
}
