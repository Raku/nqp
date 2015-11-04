#!/usr/bin/perl
# Copyright (C) 2013, The Perl Foundation.

use strict;
use warnings;
use 5.008;
use File::Spec;

my ($destdir, $prefix) = @ARGV;
my $realpath = $destdir.$prefix;

unless (File::Spec->file_name_is_absolute($prefix)) {
    $prefix = File::Spec->rel2abs($prefix);
}

if ($^O eq 'MSWin32') {
    my $jar_dir = File::Spec->catfile($prefix, 'share', 'nqp', 'runtime');
    my $lib_dir = File::Spec->catfile($prefix, 'share', 'nqp', 'lib');
    my $install_to = File::Spec->catfile($realpath, 'bin', 'nqp-j.bat');

    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    print $fh '@java -Xss1m -Xmx512m -Xbootclasspath/a:' . $jar_dir . '\\nqp-runtime.jar;' .
              "$jar_dir\\asm-4.1.jar;$jar_dir\\jline-1.0.jar;$lib_dir\\nqp.jar -cp $lib_dir nqp %*\n";
    close $fh
        or die "Could not close $install_to: $!";
}
else {
    my $nqp_dir = File::Spec->catfile($prefix, qw/share nqp/);
    my $jar_dir = File::Spec->catfile('${NQP_DIR}', 'runtime');
    my $lib_dir = File::Spec->catfile('${NQP_DIR}', 'lib');
    my $jars = "$jar_dir/nqp-runtime.jar:$jar_dir/asm-4.1.jar:$jar_dir/jline-1.0.jar:$lib_dir/nqp.jar";
    my $install_to = File::Spec->catfile($realpath, 'bin', 'nqp-j');

    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    print $fh "#!/bin/sh\n";
    print $fh ": \${NQP_DIR:=\"$nqp_dir\"}\n";
    print $fh ": \${NQP_JARS:=\"$jars\"}\n";
    print $fh "exec java -Xss1m -Xmx512m -Xbootclasspath/a:\${NQP_JARS} -cp $lib_dir nqp \"\$\@\"\n";
    close $fh
        or die "Could not close $install_to: $!";
    chmod 0755, $install_to;
}
