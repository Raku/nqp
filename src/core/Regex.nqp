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
            $match := $match.parse($text, :rule($regex), :c($match.to));
        }
        @matches;
    }
    else {
        $match;
    }
}


=begin item subst
Substitute a match of C<$regex> in C<$text> with C<$repl>,
returning the substituted string.  If C<$global> is given, then
perform the replacement on all matches of C<$text>.
=end item

sub subst ($text, $regex, $repl, :$global?) {
    my @matches := $global
      ?? match($text, $regex, :global)
      !! nqp::list($text ~~ $regex);

    my int $offset;
    my $result := nqp::list_s;

    my int $m := nqp::elems(@matches);
    my int $i;
    if nqp::isinvokable($repl) {
        while $i < $m {
            if nqp::atpos(@matches, $i) -> $match {
                nqp::push_s(
                  $result,
                  nqp::substr($text, $offset, $match.from - $offset)
                ) if $match.from > $offset;

                nqp::push_s($result, ~$repl($match));
                $offset := $match.to;
            }
            ++$i;
        }
    }
    else {
        while $i < $m {
            if nqp::atpos(@matches, $i) -> $match {
                nqp::push_s(
                  $result,
                  nqp::substr($text, $offset, $match.from - $offset)
                ) if $match.from > $offset;

                nqp::push_s($result, ~$repl);
                $offset := $match.to;
            }
            ++$i;
        }
    }

    my int $chars := nqp::chars($text);
    nqp::push_s($result, nqp::substr($text, $offset, $chars))
      if $chars > $offset;

    nqp::join("", $result);
}
