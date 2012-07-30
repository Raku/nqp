# This indicates a place in a QAST tree that has been stashed for later
# inlining where one of the arguments to the inlined routine was used.
class QAST::InlinePlaceholder is QAST::Node {
    has int $!position;
    
    method position(*@value) {
        @value ?? ($!position := @value[0]) !! $!position
    }
    
    method substitute_inline_placeholders(@fillers) {
        $!position < +@fillers
            ?? @fillers[$!position]
            !! nqp::die("Inline placeholder index out of range")
    }
}
