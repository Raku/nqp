class QAST::Op is QAST::Node {
    has str $!name;
    has str $!op;
    has str $!childorder;
    
    method name(*@value)       { $!name := @value[0] if @value; $!name || "" }
    method op(*@value)         { $!op := @value[0] if @value; $!op }
    method childorder(*@value) { $!childorder := @value[0] if @value; $!childorder || "" }

    method evaluate_unquotes(@unquotes) {
        say('op');
        my $result := pir::repr_clone__PP(self);
        my $i := 0;
        my $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].evaluate_unquotes(@unquotes);
            $i := $i + 1;
        }
        $result
    }
}
