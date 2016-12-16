#!/usr/bin/perl
# Copyright (C) 2013, The Perl Foundation.

use strict;
use warnings;
use 5.008;
use File::Spec;

my ($destdir, $prefix, $lib_dir, $moar) = @ARGV;
my $realpath = $destdir.$prefix;

unless (File::Spec->file_name_is_absolute($prefix)) {
    $prefix = File::Spec->rel2abs($prefix);
}

my $nqp_mvm = File::Spec->catfile($lib_dir, 'nqp.moarvm');

if ($^O eq 'MSWin32') {
    my $install_to = File::Spec->catfile($realpath, 'bin', 'nqp-m.bat');
    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    print $fh '@ "' . $moar . '" --libpath="' . $lib_dir . '" "' . $nqp_mvm . '" %*' . "\n";
    close $fh
        or die "Could not close $install_to: $!";
}
else {
    my $install_to = File::Spec->catfile($realpath, 'bin', 'nqp-m');
    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    print $fh "#!/bin/sh\n";
    print $fh "exec $moar --libpath=$lib_dir $nqp_mvm \"\$\@\"\n";
    close $fh
        or die "Could not close $install_to: $!";
    chmod 0755, $install_to;
}
