#!/usr/bin/perl
# Copyright (C) 2013, The Perl Foundation.

use strict;
use warnings;
use 5.008;
use File::Spec;

my ($prefix) = @ARGV;

unless (File::Spec->file_name_is_absolute($prefix)) {
    $prefix = File::Spec->rel2abs($prefix);
}

if ($^O eq 'MSWin32') {
    my $install_to = File::Spec->catfile($prefix, 'nqp.bat');
    open my $fh, ">", $install_to;
    print $fh '@java -Xbootclasspath/a:' . $prefix . ';' . $prefix . '\\nqp-runtime.jar;' .
              $prefix . '\\asm-4.1.jar;' . $prefix . '\\jline-1.0.jar -cp ' . $prefix . ' nqp %*' . "\n";
    close $fh;
}
else {
    my $install_to = File::Spec->catfile($prefix, 'nqp');
    open my $fh, ">", $install_to;
    print $fh "#!/bin/sh\n";
    print $fh 'exec java -Xbootclasspath/a:' . $prefix . ':' . $prefix . '/nqp-runtime.jar:' .
              $prefix . '/asm-4.1.jar:' . $prefix . '/jline-1.0.jar -cp ' . $prefix . ' nqp "$@"' . "\n";
    close $fh;
    chmod 0755, $install_to;
}
