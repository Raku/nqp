package NQP::Config::NQP;
use v5.10.1;
use strict;
use warnings;
use Cwd;
use IPC::Cmd qw<run>;
use NQP::Config qw<slurp read_config_from_command cmp_rev system_or_die
  run_or_die>;

use base qw<NQP::Config>;

sub configure_backends {
    my $self            = shift;
    my $options         = $self->{options};
    my $passed_backends = $self->opt('backends');
    if ($passed_backends) {
        my @use_backend = $self->parse_backends($passed_backends);

        for my $be (@use_backend) {
            unless ( $self->known_backend($be) ) {
                die "Unknown backend: '$be'; Known backends: "
                  . join( ', ', $self->known_backends ) . "\n";
            }
            $self->use_backend($be);
        }
    }
    else {
        my $have_gen_moar = defined $options->{'gen-moar'};
        my $moar_exe      = $self->is_executable( $self->moar_config->{moar} );
        if ( $moar_exe || $have_gen_moar ) {
            $self->note(
                "WARNING!",
                "No backends specified on the command line.\n",
                "Using 'moar' because we found '$moar_exe' executable."
            ) unless $have_gen_moar || $options->{'with-moar'};
            $self->use_backend('moar');
        }
        else {
            $self->sorry( "No backends specified on the command line.\n"
                  . "Please use --backends or --gen-moar" );
        }
    }
    if ( $self->active_backend('js') and !$self->active_backend('moar') ) {
        $self->sorry(
                "When building the js backend you must also build moar\n"
              . "Please build with --backends=moar,js\n" );
    }
}

sub configure_refine_vars {
    my $self   = shift;
    my $config = $self->{config};

    unless ( $self->cfg('prefix') ) {
        my $moar_conf   = $self->moar_config;
        my $moar_prefix = $moar_conf->{moar_prefix};
        my $moar        = $moar_conf->{moar};
        if ($moar_prefix) {
            $self->set( prefix => $moar_prefix );
            $self->note(
                'ATTENTION',
                "No --prefix supplied, ",
                "building and installing to '$moar_prefix'\n",
                "Based on found executable $moar"
            );
        }
    }

    $self->SUPER::configure_refine_vars(@_);

    $config->{nqp_home} = $self->nfp(
        File::Spec->rel2abs(
            $config->{nqp_home}
              || File::Spec->catdir( $config->{'prefix'}, 'share', 'nqp' )
        )
    );

    $config->{static_nqp_home} = $config->{relocatable} eq 'reloc' ? '' : $config->{nqp_home};
}

sub configure_misc {
    my $self   = shift;
    $self->SUPER::configure_misc(@_);
    my $config = $self->{config};

    if ( $self->active_backend('moar') ) {
        ( $config->{moar_want} ) =
          split(
            ' ',
            slurp(
                $self->template_file_path( 'MOAR_REVISION', required => 1 )
            )
          );
    }

    $config->{moar_stage0} = $self->nfp( "src/vm/moar/stage0", no_quote => 1 );
    $config->{jvm_stage0}  = $self->nfp( "src/vm/jvm/stage0",  no_quote => 1 );
}

sub configure_moar_backend {
    my $self   = shift;
    my $imoar  = $self->{impls}{moar};
    my $config = $self->{config};

    $self->gen_moar;

    my $moar_config = $self->moar_config;

    $self->{config}{moar} = $imoar->{config}{moar};

    $self->sorry( "No moar executable found in " . $self->cfg('prefix') )
      unless $self->is_executable( $self->{config}{moar} );

    if ( $config->{relocatable} eq 'reloc' ) {
        $imoar->{config}{static_nqp_home}        = '';
        $imoar->{config}{static_nqp_home_define} = '';
    }
    else {
        my $qchar = $config->{quote};
        $imoar->{config}{static_nqp_home} = $config->{static_nqp_home};
        $imoar->{config}{static_nqp_home_define} =
            '-DSTATIC_NQP_HOME='
          . $qchar
          . $self->c_escape_string( $imoar->{config}{static_nqp_home} )
          . $qchar;
    }

    # Strip rpath from ldflags so we can set it differently ourself.
    $imoar->{config}{ldflags} = $moar_config->{'moar::ldflags'};
    $imoar->{config}{ldflags} =~ s/\Q$moar_config->{'moar::ldrpath'}\E ?//;
    $imoar->{config}{ldflags} =~
      s/\Q$moar_config->{'moar::ldrpath_relocatable'}\E ?//;
    if ( $self->cfg('prefix') ne '/usr' ) {
        $imoar->{config}{ldflags} .= ' '
          . (
              $config->{relocatable} eq 'reloc'
            ? $moar_config->{'moar::ldrpath_relocatable'}
            : $moar_config->{'moar::ldrpath'}
          );
    }
    $imoar->{config}{ldlibs}        = $moar_config->{'moar::ldlibs'};
    $imoar->{config}{mingw_unicode} = '';

    my @c_runner_libs;
    if ( $self->is_win ) {
        if ( File::Spec->catdir( $config->{prefix}, 'bin' ) ne
            $moar_config->{'moar::libdir'} )
        {
            $config->{m_install} = "\t"
              . q<$(CP) @nfpq(@moar::libdir@/@moar::moar@)@ @nfpq($(DESTDIR)$(PREFIX)/bin)@>;
        }
        if ( $moar_config->{'moar::os'} eq 'mingw32' ) {
            $imoar->{config}{mingw_unicode} = '-municode';
        }
        push @c_runner_libs,
          sprintf( $moar_config->{'moar::ldusr'}, 'Shlwapi' );
    }
    $imoar->{config}{c_runner_libs} = join( " ", @c_runner_libs );
    $imoar->{config}{moar_lib}      = sprintf(
        (
              $moar_config->{'moar::ldimp'}
            ? $moar_config->{'moar::ldimp'}
            : $moar_config->{'moar::ldusr'}
        ),
        $moar_config->{'moar::name'}
    );
}

sub configure_js_backend {
    my $self      = shift;
    my $config    = $self->{config};
    my $options   = $self->{options};
    my $ijs       = $self->{impls}{js};
    my $js_config = $ijs->{config};

    $ijs->{ok} = 1;

    $js_config->{link} = $options->{link};
    my $node = $self->probe_node;
    unless ($node) {
        $self->sorry("No node.js found. Please, install it first.");
        $ijs->{ok} = 0;
    }
    if ( $node eq 'nodejs' ) {
        $self->sorry( 'You have a broken node.js.'
              . ' Please install node.js as node instead of nodejs.' );
        $ijs->{ok} = 0;
    }
    $js_config->{node} = $node;

    my $node_version = run_or_die( [ $node, q<--version> ] );
    my ( $major, $minor, $path ) = $node_version =~ /v(\d+)\.(\d+)\.(\d+)/;
    unless ( $major > 10 || $major == 10 && $minor >= 10 ) {
        chomp($node_version);
        $self->sorry("Need at least node.js v10.10.0 (got $node_version)");
        $ijs->{ok} = 0;
    }

    $self->backend_config(
        'js',
        js_build_dir =>
          $self->nfp( "$config->{base_dir}/gen/js", no_quote => 1 ),
        js_blib => "node_modules",
    );
}

sub configure_jvm_backend {
    my $self     = shift;
    my $ijvm     = $self->{impls}{jvm};
    my $j_config = $ijvm->{config};
    my @errors;

    my $got;
    my @jvm_info  = `java -showversion 2>&1`;
    my $jvm_found = 0;
    my $jvm_ok    = 0;
    for (@jvm_info) {
        print "got: $_";
        if (/(?:java|jdk) version "(\d+)(?:\.(\d+))?/) {
            $jvm_found = 1;
            if ( $1 > 1 || $1 == 1 && $2 >= 9 ) {
                $ijvm->{ok} = $jvm_ok = 1;
            }
            $got = $_;
            last;
        }
    }

    if ( !$jvm_found ) {
        push @errors, "No JVM (java executable) in path; cannot continue";
    }
    elsif ( !$jvm_ok ) {
        push @errors, "Need at least JVM 1.9 (got $got)";
    }
    $self->sorry(@errors) if @errors;

    print "Using $got\n";

    $j_config->{'runner'} = $self->batch_file('nqp');
}

sub configure_jars {
    my $self    = shift;

    $self->SUPER::configure_jars(
        {
            asm => [qw<3rdparty asm asm-4.1.jar>],
            'asm-tree' => [qw<3rdparty asm asm-tree-4.1.jar>],
            jline => [qw<3rdparty jline jline-1.0.jar>],
            jna => [qw<3rdparty jna jna-4.0.0.jar>],
        }
    );
}

sub post_active_backends {
    my $self = shift;

    my @errors;
    for my $b ( $self->active_backends ) {
        push @errors, $self->backend_errors($b);
    }

    $self->sorry(@errors) if @errors;
}

sub moar_config {
    my $self        = shift;
    my $moar_config = $self->backend_config('moar');

    return $moar_config if $moar_config && keys %{$moar_config} > 2;

    my $prefix = $self->cfg('prefix');
    my $moar_prefix;
    my $moar_exe;

    if ( $self->opt('with-moar') ) {
        $moar_exe = File::Spec->rel2abs( $self->opt('with-moar') );
    }
    else {
        if ($prefix) {
            my $sdkroot = $self->cfg('sdkroot');
            $moar_prefix =
              $sdkroot ? File::Spec->catdir( $sdkroot, $prefix ) : $prefix;
            $moar_exe ||= File::Spec->catfile( $moar_prefix, 'bin',
                "moar" . $self->cfg('exe') );
        }

        #elsif ( !defined $self->opt('sysroot') ) {    # Pick from PATH
        #    $moar_exe = can_run('moar');
        #}
    }

    if ( !$moar_prefix && $moar_exe ) {
        my ( $vol, $dir, undef ) = File::Spec->splitpath($moar_exe);
        $moar_prefix = File::Spec->catpath( $vol,
            File::Spec->catdir( $dir, File::Spec->updir ) );
    }

    my %c;
    if ( $self->is_executable( $self->nfp($moar_exe) ) ) {
        %c =
          read_config_from_command( '"'
              . $self->nfp($moar_exe) . '"'
              . ' --libpath='
              . $self->nfp('src/vm/moar/stage0') . ' '
              . $self->nfp('src/vm/moar/stage0/nqp.moarvm')
              . ' --bootstrap --show-config' );
        %c = map { rindex( $_, 'moar::', 0 ) == 0 ? ( $_ => $c{$_} ) : () }
          keys %c;
    }

    return $self->backend_config( 'moar',
        { %c, moar => $moar_exe, moar_prefix => $moar_prefix, } );
}

sub gen_moar {
    my $self = shift;

    return unless $self->active_backend('moar');

    my $options = $self->{options};
    my $config  = $self->config;

    my $moar_want = $config->{moar_want};
    my $moar_have;
    my @errors;

    my $prefix        = $config->{prefix};
    my $gen_moar      = $options->{'gen-moar'};
    my $force_rebuild = $options->{'force-rebuild'};
    my $has_gen_moar  = defined $gen_moar;
    my @opts          = @{ $options->{'moar-option'} || [] };
    push @opts, "--optimize";
    push @opts, '--relocatable' if $options->{relocatable};
    push @opts,
        '--git-cache-dir=' . File::Spec->rel2abs($options->{'git-cache-dir'})
        if $options->{'git-cache-dir'};
    my $startdir     = $config->{base_dir};
    my $git_protocol = $options->{'git-protocol'} || 'https';
    my $try_generate;
    my $moar_exe            = $self->moar_config->{moar};
    my $moar_version_output = "";

    if ( $force_rebuild && !$has_gen_moar ) {
        $self->note( "WARNING",
"Command line option --force-rebuild is ineffective without --gen-moar"
        );
    }

    if ( $self->is_executable($moar_exe) ) {
        $moar_version_output = run_or_die( [ $moar_exe, '--version' ] );

        if ($moar_version_output) {
            $moar_have = $moar_version_output =~ /version (\S+)/ ? $1 : undef;
        }
    }
    else {
        $try_generate = $has_gen_moar;
    }

    unless ($force_rebuild) {
        my $moar_ok =
          $moar_have && cmp_rev( $moar_have, $moar_want, "MoarVM" ) >= 0;
        if ($moar_ok) {
            $self->msg(
                "Found $moar_exe version $moar_have, which is new enough.\n");
        }
        elsif ($moar_have) {
            push @errors,
              "Found $moar_exe version $moar_have, which is too old. "
              . "Wanted at least $moar_want\n";
            $try_generate = $has_gen_moar unless $options->{'ignore-errors'};
        }
        elsif ($moar_version_output
            && $moar_version_output =~ /This is MoarVM version/i )
        {
            push @errors,
                "Found a MoarVM binary "
              . " but was not able to get its version number.\n"
              . "If running `git describe` inside the MoarVM repository does not work,\n"
              . "you need to make sure to checkout tags of the repository and run \n"
              . "Configure.pl and make install again\n";
            $try_generate = $has_gen_moar;
        }
    }

    if (@errors) {
        if ($try_generate) {
            $self->note( "ATTENTION!", $_ ) foreach @errors;
        }
        else {
            $self->sorry(@errors);
        }
    }

    if ( $try_generate || ( $has_gen_moar && $force_rebuild ) ) {

        # Don't expect any particular commit in MoarVM/ if the repo is already
        # checked out.
        my $expected_spec =
          -d File::Spec->catdir( $self->cfg('base_dir'), 'MoarVM', '.git' )
          ? undef
          : $moar_want;

        my $moar_repo =
          $self->git_checkout( 'moar', 'MoarVM', $gen_moar || $moar_want );

        unless ( 0 <= cmp_rev( $moar_repo, $moar_want, "moar" )
            and !$options->{'ignore-errors'} )
        {
            # But, now you come to me, and you say: "NQP, give me the MoarVM."
            # But you don't ask with respect.
            die "You asked me to build MoarVM"
              . ", but $moar_repo is not new enough to satisfy version "
              . "$moar_want\n";
        }

        my $cwd = cwd;
        chdir( $self->base_path('MoarVM') ) or die $!;

        print "\nConfiguring and building MoarVM ...\n";
        my @cmd = ( $^X, "Configure.pl", @opts, qq{--prefix=$prefix},
            '--make-install' );
        print "@cmd\n";
        system_or_die(@cmd);

        chdir($cwd);
    }

    $self->{impls}{moar}{ok} = 1;

# XXX What'd be the point of overriding the autodetected make with
# autodetected by MoarVM Configure?
#    my $libpath    = $self->base_path("src/vm/moar/stage0");
#    my $nqp_moarvm = $self->base_path("$libpath/nqp.moarvm");
#    my $make =
#`$moar_path --libpath="$libpath" "$nqp_moarvm" -e "print(nqp::backendconfig()<make>)"`;
}

sub probe_node {
    my $self = shift;

    # Debian ships a 'node' binary that is related to amateur radio.
    # the javascript thingy is called 'nodejs' there
    for my $binary (qw/node nodejs /) {
        my $version_str;
        my $ok = run(
            command => [ $binary, '-v' ],
            buffer  => \$version_str
        );
        if ( $ok && $version_str =~ /^v\d/ ) {
            return $binary;
        }
    }
    return;
}

package NQP::Macros::NQP;
use strict;
use warnings;

sub _m_for_stages {
    my $self = shift;
    my $text = shift;

    my $out  = "";
    my $bpfx = $self->cfg->cfg('backend_prefix');
    foreach my $stage ( 1 .. 2 ) {
        my $prev_stage = $stage - 1;
        my $lc_stage   = "stage$stage";
        my $lc_prev    = "stage$prev_stage";
        my %config     = (
            stage          => $stage,
            ucstage        => uc($lc_stage),
            lcstage        => $lc_stage,
            prev_stage     => $prev_stage,
            ucprev_stage   => uc($lc_prev),
            lcprev_stage   => $lc_prev,
            stage_dir      => '$(' . uc($bpfx) . "_STAGE${stage}_DIR)",
            prev_stage_dir => '$(' . uc($bpfx) . "_STAGE${prev_stage}_DIR)",
        );
        my $stage_ctx = {
            stage   => $stage,
            configs => [ \%config ],
        };
        my $s = $self->cfg->push_ctx($stage_ctx);
        $out .= $self->_expand($text);
    }

    return $out;
}

sub _m_stage_gencat {
    my $self = shift;
    my $text = shift;
    return $self->expand(<<TPL);
$text
\t\@echo(+++ Generating\t\$\@)@
\t\$(NOECHO)\@bpm(\@ucstage\@_GEN_CAT)\@ \@prereqs\@ > \$\@
TPL
}

sub _m_stage_precomp {
    my $self = shift;
    my $text = shift;
    $self->set_in_receipe( 'nqp_setting', 'NQPCORE' );
    $self->set_in_receipe( 'setting_path_param',
        ' --setting-path=@stage_dir@' );
    $self->set_in_receipe( 'module_path_param', ' --module-path=@stage_dir@' );
    return $self->expand(<<TPL);
$text
\t\@echo(+++ Compiling\t\$\@)@
\t\$(NOECHO)\@bpm(STAGE\@prev_stage\@_NQP)\@\@expand(\@setting_path_param\@\@module_path_param\@)\@ --no-regex-lib --target=\@btarget\@ --setting=\@nqp_setting\@ \@bpm(PRECOMP_\@ucstage\@_FLAGS)\@ --output=\$\@ \@prereqs\@
TPL
}

# Set nqp_setting variable for precomp receipe
sub _m_setting {
    my $self = shift;
    my $text = shift;
    $self->set_in_receipe( 'nqp_setting', $text );
    if ( $self->expand($text) eq 'NULL' ) {
        $self->set_in_receipe( 'setting_path_param', '' );
    }
    return "";
}

# Set module_path_param variable for precomp receipe
sub _m_no_module_path {
    my $self = shift;
    $self->set_in_receipe( 'module_path_param', '' );
    return "";
}

NQP::Macros->register_macro(
    'stage_gencat', \&_m_stage_gencat,
    in_receipe => 1,
    preexapnd  => 0,
);
NQP::Macros->register_macro(
    'stage_precomp', \&_m_stage_precomp,
    in_receipe => 1,
    preexpand  => 0,
);
NQP::Macros->register_macro( 'for_stages', \&_m_for_stages, preexapnd => 0 );
NQP::Macros->register_macro( 'setting',    \&_m_setting,    preexapnd => 1 );
NQP::Macros->register_macro( 'no_module_path', \&_m_no_module_path );

1;

# vim: ft=perl
