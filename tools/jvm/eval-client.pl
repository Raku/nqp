#! /usr/bin/env perl
use strict;
use warnings;

use IO::Socket::INET;
use Encode ();

sub read_file {
    my $filename = shift;
    open my $IN, '<', $filename or die "Error while reading '$filename': $!";
    local $/;
    my $contents = <$IN>;
    close $IN;
    return $contents;
}

if (@ARGV < 2) {
    print STDERR <<USAGE ;
Usage: tools/jvm/eval-client.pl TOKEN_FILE exit
Usage: tools/jvm/eval-client.pl TOKEN_FILE run args...
USAGE
    exit 1;
}

@ARGV = map( Encode::decode_utf8($_), @ARGV );

my $info = scalar read_file shift @ARGV;
my ($port, $cookie) = $info =~ /(\d+) (\S+)$/m or die "cannot parse cookie file";

my $sock = IO::Socket::INET->new( PeerAddr => '127.0.0.1', PeerPort => $port, Proto => 'tcp' );

$sock->syswrite( Encode::encode_utf8(join("\0", $cookie, @ARGV, "")) ) or die "syswrite: $!\n";
$sock->shutdown(1) or die "shutdown: $!\n"; # perldoc -f shutdown

my $buf;

while (1) {
    defined($sock->sysread($buf, 4096)) or die "read: $!\n";
    syswrite STDOUT, $buf;
    last unless length $buf;
}

close $sock;
