#!/usr/bin/env nqp

# test regexes for deleting and normalizing whitespace in text
# interspersed with comments
my $txt := 'blah  # comment
                # comment

          blah';

my $rx := /
            <!after \S>
            \h*
            [
            | [\h* '#' \N* \n]
            | [\h* \n]
            ]*
            \h*
          /;

my $s := subst($txt, $rx, ' ');
say("original text = '$txt'");
say("new text = '$s'");
