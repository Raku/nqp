#!/usr/bin/perl
# Copyright (C) 2013, The Perl Foundation.

use strict;
use warnings;
use 5.008;
use File::Spec;

if ($^O eq 'MSWin32') {
    my $install_to = 'nqp-js.bat';    
    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    print $fh '@ node nqp-js-on-js/nqp-bootstrapped.js %*' . "\n";
    close $fh
        or die "Could not close $install_to: $!";
}
else {
    my $install_to = 'nqp-js';
    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    print $fh <<'EOS';
#!/bin/sh
exec node nqp-js-on-js/nqp-bootstrapped.js "$@"
EOS
    close $fh
        or die "Could not close $install_to: $!";
    chmod 0755, $install_to;
}
