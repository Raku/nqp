class QAST::Op is QAST::Node {
    has str $!name;
    has str $!op;
    has str $!childorder;
    
    method name(*@value)       { $!name := @value[0] if @value; $!name || "" }
    method op(*@value)         { $!op := @value[0] if @value; $!op }
    method childorder(*@value) { $!childorder := @value[0] if @value; $!childorder || "" }
    
    method substitute_inline_placeholders(@fillers) {
        my $result := self.shallow_clone();
        my $i := 0;
        my $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].substitute_inline_placeholders(@fillers);
            $i := $i + 1;
        }
        $result
    }
}
