# Script to be run whenever a section or an op is added or removed
# from ops.markdown.  Or just before every commit.  It makes sure
# that all sections and all entries are alphabetically sorted for
# easier lookup, while the Miscellaneous section is always last.

my @in = "ops.markdown".IO.slurp.lines(:!chomp);
my $line;
my @out;

my %sections;

class Section {
    has $.name;
    has $.label;
    has %.ops;

    method toc() {
        my $ops := %!ops.keys.sort.map( {
            my $name := .words.head;
            my $label := .subst(/ \s* '`' (\w+) '`' /, { "-$0" }, :g );
            "[$name](#$label)"
        } ).join(" |\n");
        "## [$!name](#$!label)\n\n$ops\n\n"
    }

    method doc() {
        my $doc := %!ops.sort(*.key).map( -> (:key($name), :value($text)) {
            "## $name\n$text"
        } ).join;
        "# <a id=\"$!label\"></a> $!name\n\n$doc"
    }
}

# until we get to the table of contents
@out.push($line)
  until ($line := @in.shift).starts-with('## [');

# skip the table of contents
Nil until ($line := @in.shift).starts-with('# <a id="');

# until the end of the file
while @in {
    my $label   := ~$line.match(/ '"' <( .* )> '"' /);
    my $name    := $line.match(/ 'a>' \s* <( .*/).chomp;
    my $section := %sections{$label} //= Section.new(:$label,:$name);
    
    # skip empty lines until first op
    Nil until ($line := @in.shift).starts-with('## ');

    # handle ops until end of file or next section
    repeat {
        my $op := $line.substr(3).chomp;
        my @lines;
        @lines.push($line)
          until !@in
            || ($line := @in.shift).starts-with('## ')
            || $line.starts-with('# <a id="');
        $section.ops{$op} = @lines.join;

    } until !@in || $line.starts-with('# <a id="');
}

# Make sure <misc> comes last
my @labels  = %sections.keys.sort: { $_ eq 'misc' ?? 'zzz' !! $_ };

# push labels and then sections
@out.push(%sections{$_}.toc) for @labels;
@out.push(%sections{$_}.doc) for @labels;

"ops.markdown".IO.spurt(@out.join);
