=begin

IO Methods and Functions

=end

my $NQPBuf := nqp::newtype(nqp::knowhow(), 'VMArray');
nqp::setdebugtypename($NQPBuf, 'NQPBuf');
nqp::composetype($NQPBuf, nqp::hash('array', nqp::hash('type', uint8)));

my class NQPDecoder is repr('Decoder') {
    method new(str $encoding, :$translate-nl) {
        nqp::decoderconfigure(nqp::create(self), $encoding,
            $translate-nl ?? nqp::hash('translate_newlines', 1) !! nqp::null())
    }

    method add-bytes($bytes) {
        nqp::decoderaddbytes(self, nqp::decont($bytes));
        NQPMu
    }

    method consume-available-chars() {
        nqp::decodertakeavailablechars(self)
    }

    method consume-all-chars() {
        nqp::decodertakeallchars(self)
    }

    method consume-exactly-chars(int $chars) {
        my str $result := nqp::decodertakechars(self, $chars);
        nqp::isnull_s($result) ?? NQPMu !! $result
    }

    method set-line-separators(@seps) {
        my $sep-strs := nqp::list_s();
        nqp::push_s($sep-strs, ~$_) for @seps;
        nqp::decodersetlineseps(self, $sep-strs);
        NQPMu
    }

    method consume-line-chars(:$chomp = 0, :$eof = 0) {
        my str $line := nqp::decodertakeline(self, $chomp, $eof);
        nqp::isnull_s($line) ?? NQPMu !! $line
    }

    method is-empty() {
        nqp::decoderempty(self)
    }

    method bytes-available() {
        nqp::decoderbytesavailable(self)
    }

    method consume-exactly-bytes(int $bytes) {
        nqp::ifnull(nqp::decodertakebytes(self, $NQPBuf, $bytes), $NQPBuf)
    }
}

my class NQPFileHandle {
    has $!vmio;
    has $!decoder;
    has $!encoding;
    has $!chomp;
    has $!nl-in;

    method open($filename, :$r, :$w, :$a, :$bin, :$enc, :$chomp) {
        my $mode := $w ?? 'w' !! ($a ?? 'wa' !! 'r');
        self.wrap(nqp::open($filename, $mode), :$bin, :$enc, :$chomp)
    }

    method wrap($handle, :$bin, :$enc, :$chomp) {
        $!vmio := $handle;
        if $bin {
            nqp::die("Cannot pass open with :bin and :enc<...>") if $enc;
        }
        else {
            $!encoding := $enc // 'utf8';
            $!chomp := $chomp // 1;
            $!decoder := NQPDecoder.new($!encoding, :translate-nl);
            $!nl-in := ["\n", "\r\n"];
            $!decoder.set-line-separators($!nl-in);
        }
        self
    }

    method set-nl-in(@list) {
        $!nl-in := @list;
        $!decoder.set-line-separators($!nl-in);
    }

    method set-encoding($new-encoding) {
        if $new-encoding {
            return $!encoding if $!encoding && $new-encoding eq $!encoding;
        }
        else {
            $new-encoding := 'bin';
        }
        if $!decoder {
            # We're switching encoding, or back to binary mode. First grab any
            # bytes the current decoder is holding on to but has not yet done
            # decoding of.
            my $available := $!decoder.bytes-available;
            if $new-encoding ne 'bin' {
                my $prev-decoder := $!decoder;
                $!decoder := NQPDecoder.new($new-encoding, :translate-nl);
                $!decoder.set-line-separators($!nl-in);
                $!decoder.add-bytes($prev-decoder.consume-exactly-bytes($available))
                    if $available;
            }
            else {
                nqp::seekfh($!vmio, -$available, SeekFromCurrent) if $available;
                $!decoder := NQPDecoder;
            }
            $!encoding := $new-encoding;
        }
        else {
            # No previous decoder; make a new one if needed, otherwise no change.
            if $new-encoding ne 'bin' {
                $!decoder := NQPDecoder.new($new-encoding, :translate-nl);
                $!decoder.set-line-separators($!nl-in);
            }
            $!encoding := $new-encoding;
        }
    }

    method get() {
        $!decoder || nqp::die("Cannot 'get' on a binary file handle");
        $!decoder.consume-line-chars(:$!chomp) // self.'!get-slow-path'()
    }

    method !get-slow-path() {
        my $line := NQPMu;
        while 1 {
            my $buf := nqp::readfh($!vmio, nqp::create($NQPBuf), 0x100000);
            if nqp::elems($buf) {
                $!decoder.add-bytes($buf);
                $line := $!decoder.consume-line-chars(:$!chomp);
                last if nqp::isconcrete($line);
            }
            else {
                $line := $!decoder.consume-line-chars(:$!chomp, :eof)
                    unless nqp::eoffh($!vmio) && $!decoder.is-empty;
                last;
            }
        }
        $line
    }

     method slurp() {
        $!decoder || nqp::die("Cannot 'slurp' on a binary file handle");
        while nqp::elems(my $buf := nqp::readfh($!vmio, nqp::create($NQPBuf), 0x100000)) {
            $!decoder.add-bytes($buf);
        }
        $!decoder.consume-all-chars()
    }

    method readchars($chars) {
        $!decoder || nqp::die("Cannot 'readchars' on a binary file handle");
        $!decoder.consume-exactly-chars($chars) // self.'!readchars-slow-path'($chars)
    }

    method !readchars-slow-path($chars) {
        my $result := '';
        unless nqp::eoffh($!vmio) && $!decoder.is-empty {
            while 1 {
                my $buf := nqp::readfh($!vmio, nqp::create($NQPBuf), 0x100000);
                if nqp::elems($buf) {
                    $!decoder.add-bytes($buf);
                    $result := $!decoder.consume-exactly-chars($chars);
                    last if nqp::isconcrete($result);
                }
                else {
                    $result := $!decoder.consume-all-chars();
                    last;
                }
            }
        }
        $result
    }

    method print($str) {
        $!decoder || nqp::die("Cannot 'print' on a binary file handle");
        nqp::writefh($!vmio, nqp::encode($str, $!encoding, nqp::create($NQPBuf)));
    }

    method say($str) {
        self.print($str ~ "\n")
    }

    method flush() {
        nqp::flushfh($!vmio)
    }

    method tell() {
        nqp::tellfh($!vmio) - ($!decoder ?? $!decoder.bytes-available !! 0)
    }

    method seek($offset, $whence) {
        my int $rewind := 0;
        if $!decoder {
            # consider bytes we pre-read, when seeking from current position:
            $rewind := $!decoder.bytes-available if $whence == 1;

            # Freshen decoder, so we won't have stuff left over from earlier reads
            # that were in the wrong place.
            $!decoder := NQPDecoder.new($!encoding, :translate-nl);
            $!decoder.set-line-separators($!nl-in);
        }
        nqp::seekfh($!vmio, $offset - $rewind, $whence);
    }

    method t() {
        nqp::isttyfh($!vmio)
    }

    method eof() {
        $!decoder
            ?? $!decoder.is-empty && nqp::eoffh($!vmio)
            !! nqp::eoffh($!vmio)
    }

    method close() {
        nqp::closefh($!vmio);
        1
    }
}

=begin item open
Open file.
=end item

sub open($filename, *%options) {
    my $handle := NQPFileHandle.new;
    $handle.open($filename, |%options);
    $handle
}

my $IN := NQPFileHandle.new.wrap(nqp::getstdin());
my $OUT := NQPFileHandle.new.wrap(nqp::getstdout());
my $ERR := NQPFileHandle.new.wrap(nqp::getstderr());
sub stdin() { $IN }
sub stdout() { $OUT }
sub stderr() { $ERR }

=begin item close
Close handle
=end item

sub close($handle) {
    $handle.close;
}

=begin item slurp
Returns the contents of C<$filename> as a single string.
=end item

sub slurp ($filename) {
    my $handle := open($filename, :r);
    my $contents := $handle.slurp;
    $handle.close;
    $contents
}

=begin item spew
Write the string value of C<$contents> to C<$filename>.
=end item

sub spew($filename, $contents) {
    my $handle := open($filename, :w);
    $handle.print($contents);
    $handle.close;
}

sub print(*@args) {
    stdout().print(join('', @args));
    1;
}

sub say(*@args) {
    stdout().say(join('', @args));
    1;
}

sub note(*@args) {
    stderr().say(join('', @args));
    1;
}

sub join($delim, @things) {
    my @strs := nqp::list_s();
    for @things { nqp::push_s(@strs, ~$_) }
    nqp::join($delim, @strs)
}

# vim: ft=perl6
