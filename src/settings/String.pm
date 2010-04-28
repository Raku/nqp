

=begin

These functions add more power to the basic regex matching capability,
including doing global matches and global substitutions.

=over 4

=item @matches := all_matches($regex, $text)

=end

sub all_matches($regex, $text) {
    my @matches;

    my  $match := $text ~~ $regex;
    while $match {
        @matches.push($match);
        $match := $match.CURSOR.parse($text, :rule($regex), :c($match.to));
    }

    return @matches;
}

=begin

=item $edited := subst($original, $regex, $replacement)

Substitute all matches of the C<$regex> in the C<$original> string with the
C<$replacement>, and return the edited string.  The C<$regex> must be a regex
object as returned by C</.../>.

The C<$replacement> may be either a simple string or a sub that will be called
with each match object in turn, and must return the proper replacement string
for that match.

=end

sub subst($original, $regex, $replacement) {
    my @matches := all_matches($regex, $original);
    my $edited  := pir::clone($original);
    my $is_sub  := pir::isa($replacement, 'Sub');
    my $offset  := 0;

    for @matches -> $match {
        my $replace_string := $is_sub ?? $replacement($match) !! $replacement;
	my $replace_len    := pir::length($replace_string);
	my $match_len      := $match.to - $match.from;
	my $real_from      := $match.from + $offset;

	Q:PIR{
             $P0 = find_lex '$edited'
	     $S0 = $P0
	     $P1 = find_lex '$real_from'
	     $I0 = $P1
	     $P2 = find_lex '$match_len'
	     $I1 = $P2
	     $P3 = find_lex '$replace_string'
	     $S1 = $P3
	     substr $S0, $I0, $I1, $S1
	     $P0 = $S0
	};

	$offset := $offset - $match_len + $replace_len;
    }

    return $edited;
}


# vim: ft=perl6
