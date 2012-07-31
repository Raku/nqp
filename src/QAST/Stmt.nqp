class QAST::Stmt is QAST::Node {
    has $!resultchild;

    method resultchild(*@value) { $!resultchild := @value[0] if @value; $!resultchild }
    
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
