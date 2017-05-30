#! nqp

# Test line reading operations.

plan(18);

my $test-file := 'line-seps-test-file';

{
    my $wfh := open($test-file, :w);
    $wfh.print('abc|def>ghi');
    close($wfh);
    
    my $rfh := open($test-file, :r, :!chomp);
    $rfh.set-nl-in(nqp::list('|', '>'));
    ok($rfh.get eq "abc|", 'first separator used');
    ok($rfh.get eq "def>", 'second separator used');
    ok($rfh.get eq "ghi", 'final read to end of file worked');
    close($rfh);
    
    $rfh := open($test-file, :r);
    $rfh.set-nl-in(nqp::list('|', '>'));
    ok($rfh.get eq "abc", 'first separator used and chomped');
    ok($rfh.get eq "def", 'second separator used and chomped');
    ok($rfh.get eq "ghi", 'final read to end of file worked');
    close($rfh);
    
    nqp::unlink($test-file);
}

{
    my $wfh := open($test-file, :w);
    $wfh.print('abc|def||ghi>jkl>>mno');
    close($wfh);
    
    my $rfh := open($test-file, :r, :!chomp);
    $rfh.set-nl-in(nqp::list('||', '>>'));
    ok($rfh.get eq "abc|def||", 'first multi-char separator used');
    ok($rfh.get eq "ghi>jkl>>", 'second multi-char separator used');
    ok($rfh.get eq "mno", 'final read to end of file worked');
    close($rfh);
    
    $rfh := open($test-file, :r);
    $rfh.set-nl-in(nqp::list('||', '>>'));
    ok($rfh.get eq "abc|def", 'first multi-char separator used and chomped');
    ok($rfh.get eq "ghi>jkl", 'second multi-char separator used and chomped');
    ok($rfh.get eq "mno", 'final read to end of file worked');
    close($rfh);
    
    nqp::unlink($test-file);
}

{
    my $wfh := open($test-file, :w);
    $wfh.print("abc\ndef\r\nghi");
    close($wfh);

    my $rfh := open($test-file, :r, :!chomp);
    $rfh.set-nl-in(nqp::list("\n", "\r\n"));
    ok($rfh.get eq "abc\n", '\n separator used');
    ok($rfh.get eq "def\n", '\r\n separator used'); # \n due to translation
    ok($rfh.get eq "ghi", 'final read to end of file worked');
    close($rfh);

    $rfh := open($test-file, :r);
    $rfh.set-nl-in(nqp::list("\n", "\r\n"));
    ok($rfh.get eq "abc", '\n separator used and chomped');
    ok($rfh.get eq "def", '\r\n separator used and chomped');
    ok($rfh.get eq "ghi", 'final read to end of file worked');
    close($rfh);

    nqp::unlink($test-file);
}
