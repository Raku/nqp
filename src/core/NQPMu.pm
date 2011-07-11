my class NQPMu {
    method CREATE() {
        pir::repr_instance_of__PP(self)
    }

    method bless(NQPMu:U $self: *%attributes) {
        my $instance := self.CREATE();
        $instance.BUILDALL(|%attributes);
        $instance
    }

    method BUILDALL(NQPMu:D $self: *%attributes) {
        for $self.HOW.parents($self) -> $class {
            $self.BUILD_MAGIC($class, |%attributes);
        }
    }

    method BUILD_MAGIC(NQPMu:D $self: $type, *%attributes) {
        for $type.HOW.attributes($type, :local) {
            my $name := $_.name;
            my $shortname := pir::substr($name, 2);
            if pir::exists(%attributes, $shortname) {
                pir::setattribute__vPPsP($self, $type, $name, %attributes{$shortname});
            }
        }
    }

    method new(*%attributes) {
        self.bless(|%attributes);
    }

    proto method Str() is parrot_vtable('get_string') { * }
    multi method Str(NQPMu:U $self:) {
        self.HOW.name(self) ~ '()'
    }

    proto method ACCEPTS($topic) { * }
    multi method ACCEPTS(NQPMu:U $self: $topic) {
        pir::type_check__IPP($topic, self.WHAT)
    }
    
    method () is parrot_vtable('get_bool') {
        pir::repr_defined__IP(self)
    }

    method isa($type) {
        self.HOW.isa(self, $type)
    }

    method __dump($dumper, $label) {
        my $subindent := $dumper.'newIndent'();
        print('{');
        for self.HOW.parents(self) -> $type {
            for $type.HOW.attributes($type, :local) {
                my $name := $_.name;
                my $attrtype := $_.type;
                print("\n", $subindent, $type.HOW.name($type), "::", $name, " => ");
                if $attrtype =:= int {
                    $dumper.'dump'($label, nqp::getattr_i(self, $type, $name));
                }
                elsif $attrtype =:= num {
                    $dumper.'dump'($label, nqp::getattr_n(self, $type, $name));
                }
                elsif $attrtype =:= str {
                    $dumper.'dump'($label, nqp::getattr_s(self, $type, $name));
                }
                else {
                    $dumper.'dump'($label, nqp::getattr(self, $type, $name));
                }
            }
        }
        print("\n", $dumper.indent, '}');
        $dumper.deleteIndent();
    }
}
