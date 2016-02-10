use QASTNode;

# turn a string into a javascript literal
sub quote_string($str, :$json) {
    my $out := '';
    my $quoted := nqp::escape($str);

    my $backslash := 0;

    my $escape := '';

    for nqp::split('',$quoted~'') -> $c {
        if $backslash && $c eq 'e' {
            $out := $out ~ 'x1b';
        } elsif $backslash && $c eq 'a' {
            $out := $out ~ 'x07';
        } elsif $backslash && $c eq 'n' {
            $out := $out ~ ($json ?? "n" !! "n\\\n");
        } else {
            if ($c eq "\x[2028]") {
                $out := $out ~ "\\u2028";
            } elsif ($c eq "\x[2029]") {
                $out := $out ~ "\\u2029";
            } else {
                $out := $out ~ $c;
            }
        }
        $backslash := !$backslash && $c eq '\\';
    }
    "\""~$out~"\"";
}

# TODO benchmark keeping a constant version of this
sub known_named(@known_named) {
    my @pairs;
    for @known_named -> $named {
        @pairs.push($named ~ ": true");
    }
    '{' ~ nqp::join(',', @pairs) ~ '}'
}





