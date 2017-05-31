#! nqp

# Test nqp::op file operations.

plan(106);

ok( nqp::stat('CREDITS', nqp::const::STAT_EXISTS) == 1, 'nqp::stat exists');
ok( nqp::stat('AARDVARKS', nqp::const::STAT_EXISTS) == 0, 'nqp::stat not exists');

ok( nqp::stat('t', nqp::const::STAT_ISDIR) == 1, 'nqp::stat is directory');
ok( nqp::stat('CREDITS', nqp::const::STAT_ISDIR) == 0, 'nqp::stat not directory');

ok( nqp::stat('CREDITS', nqp::const::STAT_ISREG) == 1, 'nqp::stat is regular file');
ok( nqp::stat('t', nqp::const::STAT_ISREG) == 0, 'nqp::stat not regular file');


my $credits := open('CREDITS', :r, :!chomp);
ok( $credits, 'open for read');
ok( $credits.tell == 0, 'tell start of file');
ok( !$credits.eof, 'Not at EOF after open');
my $line := $credits.get;
ok( !$credits.eof, 'Not at EOF after first line read');
ok( nqp::chars($line) == 5 || nqp::chars($line) == 6, 'get line to read'); # =pod\r?\n
ok( $credits.tell == 5 || nqp::tellfh($credits) == 6, 'tell line two');
my $rest := $credits.slurp;
ok( $credits.eof, 'At EOF after slurp');
ok( nqp::chars($rest) > 100, 'slurp read a lot');
ok( nqp::substr($rest,0,4) ne '=pod', 'slurp after get did not read line twice');
ok( $credits.tell >= nqp::chars($line) + nqp::chars($rest), 'tell end of file');

ok( nqp::chars($credits.get) == 0, 'get end of file');
ok( nqp::chars($credits.get) == 0, 'get end of file repeat');
ok( nqp::chars($credits.slurp) == 0, 'slurp end of file');
ok( nqp::chars($credits.get) == 0, 'get end of file repeat');

ok( !$credits.t, ".t on a regular file");

ok( nqp::defined(close($credits)), 'close');

# setinputlinesep tests

{
    my $data := open('t/nqp/19-setinputlinesep.txt', :r, :!chomp);
    $data.set-nl-in(["a"]);
    my $line1 := $data.get;
    my $line2 := $data.get;
    is($line1, 'This is a', "setinputlinesep with a input separator containing of one character... reading first line");
    is($line2, ' ra', "setinputlinesep with a input separator containing of one character... reading first line");
    close($data);
}

{
    my $data := open('t/nqp/19-setinputlinesep.txt', :r, :!chomp);
    $data.set-nl-in(["ba"]);
    my $line1 := $data.get;
    my $line2 := $data.get;
    my $line3 := $data.get;
    is($line1, 'This is a random line ending with ba', "setinputlinesep with a input separator containing of two character... reading first line");
    my $long := ' and not a newline...............................................................ba';
    is($line2, $long, '... reading second line');
    ok(nqp::substr($line3, 0, 9) eq '123456789' && (nqp::chars($line3) == 10 || nqp::chars($line3) == 11), '... reading last line not ending with input separator');
    close($data);
}

ok( nqp::defined(nqp::getstdin()), 'nqp::getstdin');
ok( nqp::defined(nqp::getstdout()), 'nqp::getstdout');
ok( nqp::defined(nqp::getstderr()), 'nqp::getstderr');

ok( nqp::istrue(nqp::getstdin()), 'nqp::getstdin');
ok( nqp::istrue(nqp::getstdout()), 'nqp::getstdout');
ok( nqp::istrue(nqp::getstderr()), 'nqp::getstderr');

## open, print, slurp, close
my $test-file := 'test-nqp-19';
nqp::unlink($test-file) if nqp::stat($test-file, 0); # XXX let mvm die on nonexistent file

my $fh := open($test-file, :w);
ok($fh, 'we can open a nonexisting file for writing');
close($fh);

$fh := open($test-file, :w);
ok($fh, 'we can open an existing file for writing');
close($fh);

$fh := open($test-file, :r);
is($fh.slurp, '', 'test file is empty');
close($fh);

$fh := open($test-file, :a);
ok($fh.print("awesome") == 7, 'appended a string to that file');
ok($fh.print(" thing!!") == 8, 'appended a string to that file... again');
close($fh);

$fh := open($test-file, :r);
is($fh.slurp, "awesome thing!!", 'test file contains the strings');
ok($fh.tell == 15, 'tellfh gives correct position');
close($fh);

my $size := nqp::stat($test-file, nqp::const::STAT_FILESIZE);
$fh := open($test-file, :r);
$fh.seek(0, 2);
ok($fh.tell == $size, 'seekfh to end gives correct position');
$fh.seek(8, 0);
ok($fh.tell == 8, 'seekfh relative to start gives correct position');
is($fh.slurp, "thing!!", 'seekfh relative to start gives correct content');
$fh.seek(-7, 2);
ok($fh.tell == 8, 'seekfh relative to end gives correct position');
is($fh.slurp, "thing!!", 'seekfh relative to end gives correct content');
$fh.seek(-8, 1);
ok($fh.tell == 7, 'seekfh relative to current pos gives correct position');
is($fh.slurp, " thing!!", 'seekfh relative to current pos gives correct content');
my $ok := 1;
try { $fh.seek(-5, 0); $ok := 0; 1 }
ok($ok, 'seekfh before start of file fails');
$ok := 1;
try { $fh.seek(0, 5); $ok := 0; 1 }
ok($ok, 'seekfh with invalid whence fails');
close($fh);

$fh := open($test-file, :w);
close($fh);
$fh := open($test-file, :r);
is($fh.slurp(), '', 'opening for writing truncates the file');
close($fh);


$fh := open($test-file, :w);
$fh.print("pretty awesome");
$fh.print(" th");
$fh.print("i");
$fh.print("n");
$fh.print("g!");
$fh.print("!");
close($fh);

$fh := open($test-file, :r);
is($fh.slurp, "pretty awesome thing!!", 'test file contains the string after multiple write with w mode');
ok($fh.tell == 22, 'tellfh gives correct position');
close($fh);

## :enc
$fh := open($test-file, :w, :enc<utf8>);
ok($fh.print("ä") == 2, 'umlauts are printed as two bytes');
close($fh);

$fh := open($test-file, :r, :enc<utf8>);
my $str := $fh.slurp;
ok(nqp::chars($str) == 1, 'utf8 means one char for an umlaut');
is($str, "ä", 'utf8 reads the umlaut correct');
close($fh);

$fh := open($test-file, :r, :enc<iso-8859-1>);
ok(nqp::chars($fh.slurp) == 2, 'switching to ansi results in 2 chars for an umlaut');
close($fh);

## chdir
if nqp::getcomp('nqp').backend.name eq 'jvm' {
    skip("chdir is not possible on jvm", 4);
}
else {
    nqp::chdir('t');
    $fh := open('../' ~ $test-file, :r);
    ok(nqp::chars($fh.slurp) == 1, 'we can chdir into a subdir');
    close($fh);

    nqp::chdir('..');
    $fh := open($test-file, :r);
    ok(nqp::chars($fh.slurp) == 1, 'we can chdir back to the parent dir');
    close($fh);

    ## mkdir
    nqp::mkdir($test-file ~ '-dir', 0o777);
    nqp::chdir($test-file ~ '-dir');
    $fh := open('../' ~ $test-file, :r);
    ok(nqp::chars($fh.slurp) == 1, 'we can create a new directory');
    close($fh);
    nqp::chdir('..');

    nqp::rmdir($test-file ~ '-dir');
    nqp::unlink($test-file);

    my $parts := [$test-file ~ '-dir-nested1', 'nested2', 'nested4', 'nested5', 'nested6', 'nested7'];


    my $nested := nqp::join('/', $parts);
    nqp::mkdir($nested, 0o777);

    {
        my $wfh := open("$nested/test-file", :w);
        $wfh.print("hi");
        close($wfh);

        my $rfh := open("$nested/test-file", :r);
        my $input := $rfh.slurp;
        is($input, "hi", "can read and write to a file in our nested directory");
        close($rfh);

        nqp::unlink("$nested/test-file");
    }

    my @delete;
    my $path := nqp::shift($parts);
    nqp::unshift(@delete, $path);
    for $parts -> $part {
        $path := $path ~ "/$part";
        nqp::unshift(@delete, $path);
    }

    for @delete -> $dir {
        nqp::rmdir($dir);
    }

}

# file times
my $mtime := nqp::stat('t/nqp/019-file-ops.t', nqp::const::STAT_MODIFYTIME);
ok($mtime > 0, 'integer mtime');
my $atime := nqp::stat('t/nqp/019-file-ops.t', nqp::const::STAT_ACCESSTIME);
ok($atime > 0, 'integer atime');
my $ctime := nqp::stat('t/nqp/019-file-ops.t', nqp::const::STAT_CHANGETIME);
ok($ctime > 0, 'integer ctime');

my $backend := nqp::getcomp('nqp').backend.name;
if $backend eq 'moar' || $backend eq 'js' || $backend eq 'jvm' {
    my $mtime_n := nqp::stat_time('t/nqp/019-file-ops.t', nqp::const::STAT_MODIFYTIME);
    ok($mtime_n >= $mtime, 'float mtime >= integer');
    my $atime_n := nqp::stat_time('t/nqp/019-file-ops.t', nqp::const::STAT_ACCESSTIME);
    ok($atime_n >= $mtime, 'float atime >= integer');
    my $ctime_n := nqp::stat_time('t/nqp/019-file-ops.t', nqp::const::STAT_CHANGETIME);
    ok($ctime_n >= $mtime, 'float ctime >= integer');
}
else {
    skip("no stat_time op on $backend", 3);
}

# copy
nqp::unlink($test-file ~ '-copied') if nqp::stat($test-file ~ '-copied', nqp::const::STAT_EXISTS);
$fh := open($test-file, :w);
$fh.print('Hello');
close($fh);
nqp::copy($test-file, $test-file ~ '-copied');
$fh := open($test-file ~ '-copied', :r);
is($fh.slurp, "Hello", 'copied file has expected content');
close($fh);
$fh := open($test-file, :w);
$fh.print('Holla');
close($fh);
nqp::copy($test-file, $test-file ~ '-copied');
$fh := open($test-file ~ '-copied', :r);
is($fh.slurp, "Holla", 'copied file (overwritten) has expected content');
close($fh);
nqp::unlink($test-file);
nqp::unlink($test-file ~ '-copied');

# rename/move
nqp::unlink($test-file ~ '-moved') if nqp::stat($test-file ~ '-moved', nqp::const::STAT_EXISTS);
$fh := open($test-file, :w);
$fh.print('Hello');
close($fh);
nqp::rename($test-file, $test-file ~ '-moved');
$fh := open($test-file ~ '-moved', :r);
is($fh.slurp, "Hello", 'moved file has expected content');
close($fh);
$fh := open($test-file, :w);
$fh.print('Holla');
close($fh);
nqp::rename($test-file, $test-file ~ '-moved');
$fh := open($test-file ~ '-moved', :r);
is($fh.slurp, "Holla", 'moved file (overwritten) has expected content');
close($fh);
nqp::unlink($test-file);
nqp::unlink($test-file ~ '-moved');

# link
nqp::unlink($test-file ~ '-linked') if nqp::stat($test-file ~ '-linked', nqp::const::STAT_EXISTS);
$fh := open($test-file, :w);
$fh.print('Hello');
close($fh);
nqp::link($test-file, $test-file ~ '-linked');
ok(nqp::stat($test-file ~ '-linked', nqp::const::STAT_EXISTS), 'the hard link should exist');
ok(nqp::stat($test-file, nqp::const::STAT_PLATFORM_DEV) == nqp::stat($test-file ~ '-linked', nqp::const::STAT_PLATFORM_DEV), "a hard link should share the original's device number");
ok(nqp::stat($test-file, nqp::const::STAT_PLATFORM_INODE) == nqp::stat($test-file ~ '-linked', nqp::const::STAT_PLATFORM_INODE), "a hard link should share the original's inode number");
nqp::unlink($test-file);
nqp::unlink($test-file ~ '-linked');

# symlink

my $tmp-file := "tmp";
my $env := nqp::getenvhash();
$env<NQP_SHELL_TEST_ENV_VAR> := "123foo";
nqp::shell("echo %NQP_SHELL_TEST_ENV_VAR% > $tmp-file",nqp::cwd(),$env, nqp::null(), nqp::null(), nqp::null(),
    nqp::const::PIPE_INHERIT_IN + nqp::const::PIPE_INHERIT_OUT + nqp::const::PIPE_INHERIT_ERR
);
my $output := slurp($tmp-file);
nqp::unlink($tmp-file);
my $is-windows := $output ne "%NQP_SHELL_TEST_ENV_VAR%\n";

if $is-windows {
    skip("symlink not tested on Windows", 9);
}
else {
    nqp::unlink($test-file ~ '-symlink') if nqp::stat($test-file ~ '-symlink', nqp::const::STAT_EXISTS);
    $fh := open($test-file, :w);
    $fh.print('Hello');
    close($fh);
    nqp::symlink($test-file, $test-file ~ '-symlink');
    ok(!nqp::fileislink($test-file), 'nqp::fileislink on a file that is not a symbolic link');
    ok(nqp::fileislink($test-file ~ '-symlink'), 'nqp::fileislink on a symbolic link');
    is(nqp::readlink($test-file ~ '-symlink'), $test-file, 'nqp::readlink');
    ok(nqp::stat($test-file ~ '-symlink', nqp::const::STAT_EXISTS), 'the symbolic link should exist');
    ok(nqp::lstat($test-file ~ '-symlink', nqp::const::STAT_EXISTS), 'the symbolic link should exist');
    ok(nqp::stat($test-file ~ '-symlink', nqp::const::STAT_ISLNK), 'the symbolic link should actually *be* a symbolic link');
    ok(!nqp::stat($test-file, nqp::const::STAT_ISLNK), 'the normal test file should not *be* a symbolic link');
    nqp::unlink($test-file);
    nqp::unlink($test-file ~ '-symlink');

    nqp::symlink($test-file~'missing', $test-file ~ '-missing-symlink');
    ok( nqp::stat( $test-file ~ '-missing-symlink', nqp::const::STAT_EXISTS) == 0, 'nqp::stat exists on symlink');
    ok( nqp::lstat( $test-file ~ '-missing-symlink', nqp::const::STAT_EXISTS) == 1, 'nqp::lstat exists on symlink pointing to missing file');

    nqp::unlink($test-file ~ '-missing-symlink') if nqp::lstat($test-file ~ '-missing-symlink', nqp::const::STAT_EXISTS);
}

my $crlf-conversion := $backend eq 'moar' || $backend eq 'js';
if $crlf-conversion {
    my $wfh := open($test-file, :w);
    $wfh.print("abc\ndef\r\nghi");
    close($wfh);

    my $fh := open($test-file, :r);
    my $input := $fh.slurp;
    is($input, "abc\ndef\nghi", "reading a whole file");
    close($fh);
} else {
    skip("slurp doesn't convert \\r\\n on $backend");
}
nqp::unlink($test-file) if nqp::stat($test-file, nqp::const::STAT_EXISTS); # clean up test-file

if $is-windows || ($backend ne 'moar' && $backend ne 'js' && $backend ne 'jvm') {
    skip("symlink test not tested on Windows or $backend", 9);
}
else {

    my $symlink := $test-file ~ '-symlink';
    my $file := 't/nqp/019-file-ops.t';

    nqp::symlink('t/nqp/019-file-ops.t', $symlink);


    for [nqp::const::STAT_MODIFYTIME, nqp::const::STAT_ACCESSTIME, nqp::const::STAT_CHANGETIME] -> $flag {
      ok(nqp::stat_time($file, $flag) == nqp::lstat_time($file, $flag), 'stat_time works as lstat_time on regular file');
      ok(nqp::stat($file, $flag) == nqp::lstat($file, $flag), 'stat works as lstat on regular file');
      ok(nqp::stat_time($symlink, $flag) == nqp::lstat_time($file, $flag), 'stat_time follows symlink');
      ### This test was added between 2015.12 and 2016.01, but was failing.
      # since it's something new, commenting out for 2016.01 release.
      #ok(nqp::lstat_time($symlink, $flag) != nqp::lstat_time($file, $flag), 'lstat_time doesn\'t follow symlink');
    }


    if nqp::lstat($symlink, nqp::const::STAT_EXISTS) {
        nqp::unlink($symlink);
    }

}

{
    my $fh := open('t/nqp/019-chars.txt', :r);
    is($fh.readchars(3), 'lin', 'readchars');
    is($fh.readchars(2), 'π1', 'readchars the second time with a multi byte character');
    $fh.get;
    is($fh.readchars(5), 'line3', 'readchars after get');
    is($fh.readchars(150), "line4\n", 'readchars with more chars then they are in the file');
    close($fh);
}

my sub buf_dump($buf) {
    my @parts;
    my $i := 0;
    while $i < nqp::elems($buf) {
        @parts.push(~nqp::atpos_i($buf, $i));
        $i := $i + 1;
    }
    nqp::join(",", @parts);
}

my sub create_buf($type) {
    my $buf := nqp::newtype(nqp::null(), 'VMArray');
    nqp::composetype($buf, nqp::hash('array', nqp::hash('type', $type)));
    nqp::setmethcache($buf, nqp::hash('new', method () {nqp::create($buf)}));
    $buf;
};

{
    my $fh := nqp::open('t/nqp/019-chars.txt', 'r');
    my $buf := create_buf(uint8).new;
    ok(nqp::eqaddr(nqp::readfh($fh, $buf, 5), $buf), 'nqp::readfh should return the buffer');
    is(buf_dump($buf), '108,105,110,207,128', 'nqp::readfh read in correct unsigned bytes');
    is(buf_dump(nqp::readfh($fh, $buf, 4)), '49,46,108,105', 'nqp::readfh read in the next bytes correctly');
    nqp::closefh($fh);
}

{
    my $fh := nqp::open('t/nqp/019-chars.txt', 'r');
    my $buf := create_buf(int8).new;
    ok(nqp::eqaddr(nqp::readfh($fh, $buf, 5), $buf), 'nqp::readfh should return the buffer');
    is(buf_dump($buf), '108,105,110,-49,-128', 'nqp::readfh read in correct signed bytes');
    is(buf_dump(nqp::readfh($fh, $buf, 4)), '49,46,108,105', 'nqp::readfh read in the next signed bytes correctly');
    nqp::closefh($fh);
}

{
    my $out := nqp::open($test-file, 'w');

    my $buf1 := create_buf(uint8).new;
    nqp::push_i($buf1, 108);
    nqp::push_i($buf1, 105);
    nqp::push_i($buf1, 110);
    nqp::push_i($buf1, 207);
    nqp::push_i($buf1, 128);

    my $buf2 := create_buf(uint8).new;
    nqp::push_i($buf2, 49);
    nqp::push_i($buf2, 46);
    nqp::push_i($buf2, 108);
    nqp::push_i($buf2, 105);

    nqp::writefh($out, $buf1);
    nqp::writefh($out, $buf2);

    nqp::closefh($out);

    my $in := open($test-file, :r);
    my $line := $in.get;
    is($line, 'linπ1.li', 'reading with get stuff written by nqp::writefh');
    close($in);

    nqp::unlink($test-file);
}

{ # RT#131301: https://rt.perl.org/Ticket/Display.html?id=131301
    nqp::closedir(my $fh := nqp::opendir(".")); try nqp::nextfiledir($fh);
    ok( 1, 'no segfault when trying to nextfiledir() a closed dir handle' );

    my $dir := 'test-nqp-dir';

    nqp::mkdir($dir, 0o777);
    nqp::mkdir($dir, 0o777);

    ok(1, 'mkdir lives when the dir we create already exists');

    my $file1 := nqp::open($dir ~ '/file1', 'w');
    nqp::closefh($file1);

    my $file2 := nqp::open($dir ~ '/file2', 'w');
    nqp::closefh($file2);

    my $opened_dir := nqp::opendir($dir);

    my %got;

    while nqp::nextfiledir($opened_dir) -> $file {
      %got{$file} := 1;
    }

    nqp::closedir($opened_dir);

    ok(%got<file1> && %got<file2>, 'found the files we created');

    nqp::unlink($dir ~ '/file1');
    nqp::unlink($dir ~ '/file2');
    nqp::rmdir($dir);
}
