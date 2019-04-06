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
        print $fh <<'EOS';
#!/bin/sh

# Sourced from https://stackoverflow.com/a/29835459/1975049
rreadlink() (
  target=$1 fname= targetDir= CDPATH=
  { \unalias command; \unset -f command; } >/dev/null 2>&1
  [ -n "$ZSH_VERSION" ] && options[POSIX_BUILTINS]=on
  while :; do
      [ -L "$target" ] || [ -e "$target" ] || { command printf '%s\n' "ERROR: '$target' does not exist." >&2; return 1; }
      command cd "$(command dirname -- "$target")"
      fname=$(command basename -- "$target")
      [ "$fname" = '/' ] && fname=''
      if [ -L "$fname" ]; then
        target=$(command ls -l "$fname")
        target=${target#* -> }
        continue
      fi
      break
  done
  targetDir=$(command pwd -P)
  if [ "$fname" = '.' ]; then
    command printf '%s\n' "${targetDir%/}"
  elif  [ "$fname" = '..' ]; then
    command printf '%s\n' "$(command dirname -- "${targetDir}")"
  else
    command printf '%s\n' "${targetDir%/}/$fname"
  fi
)

DIR=$(dirname -- "$(rreadlink "$0")")

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
