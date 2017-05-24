#!/usr/bin/perl
# Copyright (C) 2013, The Perl Foundation.

use strict;
use warnings;
use 5.008;
use File::Spec;

my ($where, $install_what, $link_what, $link) = @ARGV;

unless (File::Spec->file_name_is_absolute($install_what)) {
    $install_what = File::Spec->rel2abs($install_what);
}

chdir($where);
if ($link) {
    system("npm link $link_what");
}
else {
    system("npm install $install_what");
}

