#! nqp

=begin

Regex methods and functions

=end

=begin item match
Match C<$text> against C<$regex>.  If the C<$global> flag is
given, then return an array of all non-overlapping matches.
=end item

our sub match ($text, $regex, :$global?) {
    my $match := $text ~~ $regex;
    my @matches;
    if $global {
        while $match {
            @matches.push($match);
            $match := $match.CURSOR.parse($text, :rule($regex), :c($match.to));
        }
    }
    elsif $match {
        @matches.push($match);
    }
    @matches;
}


=begin item subst
Substitute an match of C<$regex> in C<$text> with C<$replacement>,
returning the substituted string.  If C<$global> is given, then
perform the replacement on all matches of C<$text>.
=end item

our sub subst ($text, $regex, $repl, :$global?) {
    my @matches := match($text, $regex, $global);

    my $is_code := pir::isa($repl, 'Sub');
    my $offset  := 0;
    my $result  := pir::new__Ps('StringBuilder');

    for @matches -> $match {
        pir::push($result, pir::substr($text, $offset, $match.from - $offset))
            if $match.from > $offset;
        pir::push($result, $is_code ?? $repl($match) !! $repl);
        $offset := $match.to;
    }

    my $chars := pir::length($text);
    pir::push($result, pir::substr($text, $offset, $chars))
        if $chars > $offset;

    ~$result;
}

# vim: ft=perl6
