#!/usr/bin/perl
# Copyright (C) 2009, Patrick R. Michaud.

use strict;
use warnings;


foreach my $file (@ARGV) {
    make_bootstrap($file);
}

0;

sub make_bootstrap {
    my $filename = shift;
    open my $fh, '<', $filename or die "Unable to read $filename\n";

    while (<$fh>) {
        if (m{^\.include '(src/[^']*)'}) { 
            print "### $_";
            make_bootstrap($1); 
        }
        else { print; }
    }
}
        

