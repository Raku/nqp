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

my $lib_dir = File::Spec->catfile($prefix, 'share', 'nqp', 'lib');
my $nqp_mvm = File::Spec->catfile($prefix, 'share', 'nqp', 'lib', 'nqp.moarvm');

if ($^O eq 'MSWin32') {
    my $install_to = File::Spec->catfile($realpath, 'bin', 'nqp-m.bat');
    my $moar       = File::Spec->catfile($prefix, 'bin', 'moar.exe');
    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    print $fh '@ "' . $moar . '" --libpath="' . $lib_dir . '" "' . $nqp_mvm . '" %*' . "\n";
    close $fh
        or die "Could not close $install_to: $!";
}
else {
    my $install_to = File::Spec->catfile($realpath, 'bin', 'nqp-m');
    my $moar       = File::Spec->catfile($prefix, 'bin', 'moar');
    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    print $fh "#!/bin/sh\n";
    print $fh "exec $moar --libpath=$lib_dir $nqp_mvm \"\$\@\"\n";
    close $fh
        or die "Could not close $install_to: $!";
    chmod 0755, $install_to;
}
