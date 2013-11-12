class QAST::Op is QAST::Node {
    has str $!name;
    has str $!op;
    has str $!childorder;
    has int $!arity;
    
    method name(*@value) {
        $!name := @value[0] if @value;
        nqp::isnull_s($!name) ?? "" !! $!name
    }
    method op(*@value) {
        $!op := @value[0] if @value;
        nqp::isnull_s($!op) ?? "" !! $!op
    }
    method childorder(*@value) {
        $!childorder := @value[0] if @value;
        nqp::isnull_s($!childorder) ?? "" !! $!childorder
    }
    method arity(*@value)      { $!arity := @value[0] if @value; $!arity }
    
    method substitute_inline_placeholders(@fillers) {
        my $result := self.shallow_clone();
        my $i := 0;
        my $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].substitute_inline_placeholders(@fillers)
                unless nqp::isstr(self[$i]);
            $i := $i + 1;
        }
        $result
    }

    method evaluate_unquotes(@unquotes) {
        my $result := self.shallow_clone();
        my $i := 0;
        my $elems := +@(self);
        while $i < $elems {
            $result[$i] := self[$i].evaluate_unquotes(@unquotes)
                unless nqp::isstr(self[$i]);
            $i := $i + 1;
        }
        $result
    }

    method dump_extra_node_info() {
        !nqp::isnull_s($!name) && nqp::chars($!name)
            ?? "$!op $!name"
            !! $!op;
    }
}
