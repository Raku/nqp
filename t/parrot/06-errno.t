plan(3);

sub mkdir($filename) {
    pir::new__PS('OS').mkdir($filename, 0o777);
    return True;
    CATCH {
        return False;
    }
}

sub rmdir($filename) {
    pir::new__PS('OS').rmdir($filename);
    return True;
    CATCH {
        return False;
    }
}

my $test-dir := 'errno-test-dir';

rmdir($test-dir);
ok(mkdir($test-dir) eq True, 'mkdir should succeed');
ok(mkdir($test-dir) eq False, 'mkdir of an existing directory should fail');
ok(nqp::x_posixerrno() == pir::const::POSIX_EEXIST, 'errno should be equal to EEXIST');

rmdir($test-dir);
