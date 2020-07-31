class HLL::SysConfig {
    has %!build-config;
    has $!nqp-home;
    has $!path-sep;

    method BUILD() {
        %!build-config := nqp::hash();
        hll-config(%!build-config);

        $!path-sep := nqp::backendconfig<osname> eq 'MSWin32' ?? '\\' !! '/';

        # Determine NQP home
#?if jvm
        # TODO could be replaced by nqp::execname() after the next bootstrap for JVM
        my $execname := nqp::atkey(nqp::jvmgetproperties,'nqp.execname') // '';
#?endif
#?if !jvm
        my $execname := nqp::execname;
#?endif
        my $install-dir := $execname eq ''
            ?? %!build-config<prefix>
            !! nqp::substr($execname, 0, nqp::rindex($execname, $!path-sep, nqp::rindex($execname, $!path-sep) - 1));

        $!nqp-home := nqp::getenvhash<NQP_HOME>
            // %!build-config<static-nqp-home>
            || $install-dir ~ '/share/nqp';
        if nqp::substr($!nqp-home, nqp::chars($!nqp-home) - 1) eq $!path-sep {
            $!nqp-home := nqp::substr($!nqp-home, 0, nqp::chars($!nqp-home) - 1);
        }
    }

    method path-sep() { $!path-sep }

    method nqp-build-config() { %!build-config }

    method nqp-home() { $!nqp-home }
}

