#!/usr/bin/perl
# Copyright (C) 2013, The Perl Foundation.

use strict;
use warnings;
use 5.008;
use File::Spec;

my ($moar) = @ARGV;

if ($^O eq 'MSWin32') {
    my $install_to = 'nqp-m.bat';    
    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    print $fh '@ "' . $moar . '" nqp.moarvm %*' . "\n";
    close $fh
        or die "Could not close $install_to: $!";
}
else {
    my $install_to = 'nqp-m';
    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    print $fh "#!/bin/sh\n";
    print $fh "exec $moar nqp.moarvm \"\$\@\"\n";
    close $fh
        or die "Could not close $install_to: $!";
    chmod 0755, $install_to;
}
