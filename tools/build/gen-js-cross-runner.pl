#!/usr/bin/perl
# Copyright (C) 2013, The Perl Foundation.

use strict;
use warnings;
use 5.008;
use File::Spec;

my ($m_runner) = @ARGV;

if ($^O eq 'MSWin32') {
    my $install_to = 'nqp-js-cross.bat';    
    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    print $fh '@ "' . $m_runner . '" --module-path gen/js/stage1/ src/vm/js/bin/nqp-js.nqp %*' . "\n";
    close $fh
        or die "Could not close $install_to: $!";
}
else {
    my $install_to = 'nqp-js-cross';
    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    printf $fh <<'EOS', $m_runner;
#!/bin/sh
exec %s --module-path gen/js/stage1/ src/vm/js/bin/nqp-js.nqp "$@"
EOS
    close $fh
        or die "Could not close $install_to: $!";
    chmod 0755, $install_to;
}
