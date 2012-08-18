class QAST::Unquote is QAST::Node {
    has int $!position;

    method position(*@value) {
        @value ?? ($!position := @value[0]) !! $!position
    }

    method evaluate_unquotes(@unquotes) {
        say('unquote');
        @unquotes[$!position];
    }
}
