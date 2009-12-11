INIT {
    pir::load_bytecode('PCT/HLLCompiler.pbc');
}


class HLL::Compiler is PCT::HLLCompiler {

    has $!language;

    my sub value_type($value) {
        pir::isa($value, 'NameSpace') 
        ?? 'namespace'
        !! (pir::isa($value, 'Sub') ?? 'sub' !! 'var')
    }
        
    method get_exports($module, :$tagset, *@symbols) {
        # convert a module name to a namespace, if needed
        if (!pir::isa($module, 'NameSpace')) {
            $module := self.get_module($module);
        }

        # read symbols from 'ALL' if there are any, 'DEFAULT'
        $tagset := $tagset // (@symbols ?? 'ALL' !! 'DEFAULT');
        my %exports;
        my %source := $module{'EXPORT'}{$tagset} // {};
        if @symbols {
            for @symbols {
                my $value := %source{$_};
                %exports{value_type($value)}{$_} := $value;
            }
        }
        else {
            for %source {
                my $value := $_.value;
                %exports{value_type($value)}{$_.key} := $value;
            }
        }
        %exports;
    }

    method get_module($module) {
        my @name := self.parse_name($module);
        @name.unshift(pir::downcase($!language));
        pir::get_hll_namespace__PP(@name);
    }

}
