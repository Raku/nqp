#!/usr/bin/env perl
# Copyright (C) 2013, The Perl Foundation.

use strict;
use warnings;
use 5.008;
use File::Spec;

my $relocatable = 1;

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
    print $fh '@ "' . $moar . '" --execname="%%\~dpf0" --libpath="' . $lib_dir . '" "' . $nqp_mvm . '" %*' . "\n";
    close $fh
        or die "Could not close $install_to: $!";
}
else {
    my $install_to = File::Spec->catfile($realpath, 'bin', 'nqp-m');
    open my $fh, ">", $install_to
        or die "Could not open $install_to: $!";
    if ($relocatable) {
        printf $fh <<'EOS', $moar;
#!/bin/bash

# Sourced from https://stackoverflow.com/a/246128/1975049
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null && pwd )"

exec $DIR/moar  --execname="$0" --libpath="$DIR/../share/nqp/lib" $DIR/../share/nqp/lib/nqp.moarvm "$@"
EOS
    }
    else {
        print $fh "#!/bin/sh\n";
        print $fh "exec $moar --execname=\"\$0\" --libpath=$lib_dir $nqp_mvm \"\$\@\"\n";
    }
    close $fh
        or die "Could not close $install_to: $!";
    chmod 0755, $install_to;
}
