=begin

Regex methods and functions

=end

=begin item match
Match C<$text> against C<$regex>.  If the C<$global> flag is
given, then return an array of all non-overlapping matches.
=end item

sub match ($text, $regex, :$global?) {
    my $match := $text ~~ $regex;
    if $global {
        my @matches;
        while $match {
            nqp::push(@matches, $match);
            $match := $match.CURSOR.parse($text, :rule($regex), :c($match.to));
        }
        @matches;
    }
    else {
        $match;
    }
}


=begin item subst
Substitute an match of C<$regex> in C<$text> with C<$replacement>,
returning the substituted string.  If C<$global> is given, then
perform the replacement on all matches of C<$text>.
=end item

sub subst ($text, $regex, $repl, :$global?) {
    my @matches := $global ?? match($text, $regex, :global)
                           !! [ $text ~~ $regex ];
    my $is_code := nqp::isinvokable($repl);
    my $offset  := 0;
    my @result;

    for @matches -> $match {
        if $match {
            nqp::push(@result, nqp::substr($text, $offset, $match.from - $offset))
                if $match.from > $offset;
            nqp::push(@result, $is_code ?? ~$repl($match) !! ~$repl);
            $offset := $match.to;
        }
    }

    my $chars := nqp::chars($text);
    nqp::push(@result, nqp::substr($text, $offset, $chars))
        if $chars > $offset;

    nqp::join("", @result);
}

# vim: ft=perl6
