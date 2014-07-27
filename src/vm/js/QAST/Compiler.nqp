use QASTNode;
# vi: filetype=perl6:
# we handle CTXSAVE completely differently from rakudo-parrot as we don't have such control over lexical scopes
class CTXSAVE {
}

#= so we can have methods that either js code or a QAST::Node
class JSFragment is QAST::Node {
    has $!js;
    method js() { $!js }
    method new($js) {
        my $obj := nqp::create(self);
        $obj.BUILD($js);
        $obj
    }
    method BUILD($js) {
        $!js := $js;
    }
}

role SerializeOnce {
    method serialize_sc_without_caching($sc) {
        # Serialize it.
        my $sh := nqp::list_s();
        my $serialized := nqp::serialize($sc, $sh);

        # Now it's serialized, pop this SC off the compiling SC stack.
        nqp::popcompsc();
        [$serialized,$sh];
    }

    method serialize_sc($sc) {
        my $handle := nqp::scgethandle($sc);
        if nqp::ishash(try %*SC_CACHE) {
            if nqp::existskey(%*SC_CACHE,$handle) {
              %*SC_CACHE{$handle};
            } else {
              %*SC_CACHE{$handle}  := self.serialize_sc_without_caching($sc);
            }
        } else {
          self.serialize_sc_without_caching($sc);
        }
    }
}

class QAST::CompilerJS does SerializeOnce {

    #= create a QAST node which compiles to $code
    method js($code) {
        JSFragment.new($code);
    }

    my class BlockInfo {
        has @!vars;      # all the declared QAST::Var nodes
        has @!js_lexicals;      # javascript variables we need to declare for the block
        has %!lexicals;         # QAST::Var nodes of declared lexicals
        has @!params; # the parameters the block takes
        has $!tmp;         # number of temporary js variable we need
        has @!declared_blocks;
        has $!qast;             # The QAST::Block
        has $!outer;            # Outer block's BlockInfo

        has $!ctx; # The object we keep dynamic variables and exception handlers in

        method new($qast, $outer) {
            my $obj := nqp::create(self);
            $obj.BUILD($qast, $outer);
            $obj
        }
        
        method BUILD($qast, $outer) {
            $!qast := $qast;
            $!outer := $outer;
            $!tmp := 0;
            %!lexicals := nqp::hash();
            @!params := nqp::list();
            @!vars := nqp::list();
            @!declared_blocks := nqp::list();
            @!js_lexicals := nqp::list();
        }

        method add_lexical($var) {
            %!lexicals{$var.name} := $var;
        }
        method add_param($param) {
            @!params.push($param);
        }
        method add_var($var) {
            @!vars.push($var);
        }
        method add_tmp() {
            $!tmp := $!tmp + 1;
            'TMP'~$!tmp;
        }
        method add_js_lexical($name) {
            @!js_lexicals.push($name);
        }
        method declare_block($block) {
            @!declared_blocks.push($block);
        }
        method tmps() {
            my @tmps;
            my $i := 1;
            while $i <= $!tmp {
                @tmps.push('TMP'~$i);
                $i := $i+1;
            }
            @tmps;
        }
        method has_lexical($name) {
            nqp::existskey(%!lexicals,$name);
        }
        method get_lexical($name) {
            %!lexicals{$name};
        }
        method params() { @!params }
        method vars() { @!vars }
        method js_lexicals() { @!js_lexicals }
        method lexicals() { 
            my @vars;
            for %!lexicals {
                @vars.push($_.value);
            }
            @vars;
        }
        method outer() { $!outer }
        method qast() { $!qast }
        method declared_blocks() { @!declared_blocks }
        method ctx(*@value) { $!ctx := @value[0] if @value;$!ctx}
    }

    method decorate($tag,$code) {
      "/* $tag ^\{\{\{*/\n" ~ $code ~ "/*\}\}\}^*/\n";
    }

    my $EMPTY := '"EMPTY"';

    # Constant mapping.
    my %const_map := nqp::hash(
        'CCLASS_ANY',           65535,
        'CCLASS_UPPERCASE',     1,
        'CCLASS_LOWERCASE',     2,
        'CCLASS_ALPHABETIC',    4,
        'CCLASS_NUMERIC',       8,
        'CCLASS_HEXADECIMAL',   16,
        'CCLASS_WHITESPACE',    32,
        'CCLASS_PRINTING',      64,
        'CCLASS_BLANK',         256,
        'CCLASS_CONTROL',       512,
        'CCLASS_PUNCTUATION',   1024,
        'CCLASS_ALPHANUMERIC',  2048,
        'CCLASS_NEWLINE',       4096,
        'CCLASS_WORD',          8192,
        
        'HLL_ROLE_NONE',        0,
        'HLL_ROLE_INT',         1,
        'HLL_ROLE_NUM',         2,
        'HLL_ROLE_STR',         3,
        'HLL_ROLE_ARRAY',       4,
        'HLL_ROLE_HASH',        5,
        'HLL_ROLE_CODE',        6,
        
        'CONTROL_TAKE',         32,
        'CONTROL_LAST',         16,
        'CONTROL_NEXT',         4,
        'CONTROL_REDO',         8,
        'CONTROL_SUCCEED',      128,
        'CONTROL_PROCEED',      256,
        'CONTROL_WARN',         64,
        
        'STAT_EXISTS',             0,
        'STAT_FILESIZE',           1,
        'STAT_ISDIR',              2,
        'STAT_ISREG',              3,
        'STAT_ISDEV',              4,
        'STAT_CREATETIME',         5,
        'STAT_ACCESSTIME',         6,
        'STAT_MODIFYTIME',         7,
        'STAT_CHANGETIME',         8,
        'STAT_BACKUPTIME',         9,
        'STAT_UID',                10,
        'STAT_GID',                11,
        'STAT_ISLNK',              12,
        'STAT_PLATFORM_DEV',       -1,
        'STAT_PLATFORM_INODE',     -2,
        'STAT_PLATFORM_MODE',      -3,
        'STAT_PLATFORM_NLINKS',    -4,
        'STAT_PLATFORM_DEVTYPE',   -5,
        'STAT_PLATFORM_BLOCKSIZE', -6,
        'STAT_PLATFORM_BLOCKS',    -7,
     );

    has %!code_objects;

    has %!block_info;
    has %!setting; # Do we need to load the lexical scope from a setting?

    has $!modules;

    has %!cuids;

    has @!post_serialize;
    has $!unique_vars;
    has %!code_ref_indices; # under which index do we place the block in the Code Refs table in the sc

    has @!block_with_static_info;
    has %!static_info_id;

    method BUILD() {
        %!cuids := nqp::hash();
        %!code_objects := nqp::hash();
        %!block_info := nqp::hash();
        @!post_serialize := nqp::list();
        $!modules := '';
        $!unique_vars := 0;
        %!setting := nqp::hash();
        %!code_ref_indices := nqp::hash();
        @!block_with_static_info := nqp::list();
        %!static_info_id := nqp::hash();
    }

    method declare_vars(@vars) {
        if +@vars {
            'var '~nqp::join(",\n",@vars)~";\n";
        } else {
            '';
        }
    }
    method as_js_with_cuids($ast) {
        my $js := self.as_js($ast);
        my @cuids;
        for %!cuids {
            @cuids.push($_.key~' = new nqp.CodeRef()');
        }

        my %ret;
        %ret<cuids> := self.decorate('cuids',self.declare_vars(@cuids));
        %ret<rest> := $js;
        %ret;
    }

    method set_ast($code,$ast) {
        %!code_objects{nqp::where($code)} := $ast;
    }
    method get_ast($code) {
        %!code_objects{nqp::where($code)};
    }
    method has_ast($code) {
        nqp::existskey(%!code_objects,nqp::where($code));
    }

    method set_block_info($node,$block_info) {
        %!block_info{nqp::where($node)} := $block_info;
    }
    method get_block_info($node) {
        %!block_info{nqp::where($node)};
    }
    method has_block_info($node) {
        nqp::existskey(%!block_info,nqp::where($node));
    }

    method set_setting_for_block($node,$setting) {
        %!setting{nqp::where($node)} := $setting;
    }
    method get_setting_for_block($node) {
        %!setting{nqp::where($node)};
    }
    method has_setting_for_block($node) {
        nqp::existskey(%!setting,nqp::where($node));
    }

    method set_code_ref_index($node,$block_info) {
        %!code_ref_indices{nqp::where($node)} := $block_info;
    }
    method get_code_ref_index($node) {
        %!code_ref_indices{nqp::where($node)};
    }
    method has_code_ref_index($node) {
        nqp::existskey(%!code_ref_indices,nqp::where($node));
    }

    #= called when something is Not Yet Inplemented
    method nyi($msg) {
        nqp::die("NYI: "~$msg);
    }

    method flatten_block($block) {
        self.flatten_deeply($block);
    }
    method flatten_deeply($node) {
        my @stmts;
        for $node.list {
            for self.flatten_stmts($_) {
                @stmts.push($_);
            }
        }
        @stmts;
    }

    method flatten_list_of_stmts($list) {
        my @stmts;
        for $list {
            for self.flatten_stmts($_) {
                @stmts.push($_);
            }
        }
        @stmts
    }

    method is_ctxsave($node) {
        +$node.list == 2
        && nqp::istype($node[0], QAST::Op)
        && $node[0].op eq 'bind'
        && +$node[0].list == 2
        && nqp::istype($node[0][0], QAST::Var)
        && $node[0][0].name eq 'ctxsave';
    }


    method is_callmethod($node,$name) {
        nqp::istype($node,QAST::Op)
        && $node.op eq 'callmethod'
        && $node.name eq $name
    }

    method is_parrot_specific_initialisation($node) {
        nqp::istype($node, QAST::Stmts)
        && nqp::istype($node[0], QAST::VM)
        && $node[0].supports('pirop')
        && $node[0].alternative('pirop') eq 'nqp_dynop_setup v';
    }
    # code that sets the main module
    method is_main_tasks($node) {
        nqp::istype($node, QAST::Op)
        && +$node.list == 2
        && nqp::istype($node[0], QAST::Var)
        && $node[0].name eq '@ARGS'
        && nqp::istype($node[1], QAST::Stms)
        && $node.list >= 1
        && nqp::istype($node[1][0], QAST::VM)
        && $node[1][0].supports('pirop')
        && $node[1][0].alternative('pirop') eq 'load_bytecode vs';
    }


    proto method flatten_stmts($node) {*}
    multi method flatten_stmts(QAST::Stmts $node) {
        # we search for ctxsave here, as flattening makes it harder
        if self.is_ctxsave($node) {
            [CTXSAVE.new()];
        } else {
            self.flatten_deeply($node);
        }
    }
    multi method flatten_stmts(QAST::Stmt $node) {
        self.flatten_deeply($node);
    }
    multi method flatten_stmts($node) {
        # we don't register the mainline as a module yet
        if self.is_main_tasks($node) {
            [];
        } else {
            [$node]
        }
    }

    method cuid_for_code($code) {
        if self.has_ast($code) {
            self.cuid(self.get_ast($code));
        } else {
            nqp::die("Can't find ast");
        }
    }

    method cuid($node) {
        my $cuid := subst($node.cuid(),/\./,"_");
        %!cuids{$cuid} := 1;
        $cuid;
    }

    method static_info_id(QAST::Block $block) {
        unless nqp::existskey(%!static_info_id,nqp::where($block)) {
            %!static_info_id{nqp::where($block)} := nqp::elems(@!block_with_static_info);
            nqp::push(@!block_with_static_info,$block);
        }
        'static_info_'~%!static_info_id{nqp::where($block)};

    }
    method setup_static_info() {
        my @static_info;
        my $i := 0;
        while $i < nqp::elems(@!block_with_static_info) {
            @static_info.push('static_info_'~$i~' = '~self.compile_static_info(@!block_with_static_info[$i],0));
            $i := $i + 1;
        }
        self.declare_vars(@static_info);
    }

    method compile_static_info(QAST::Block $node,:$code_ref=0) {
         my @vars_info;
         my $info;
         if self.has_block_info($node) {
             $info := self.get_block_info($node);
             for $info.vars -> $var {
                 nqp::push(@vars_info,self.quote_string($var.name) ~ ':' ~ nqp::objprimspec($var.returns));
             }
         } else {
             return "no_block_info({self.cuid($node)})";
         }

         my $*BLOCK := self.get_block_info($node).outer;
         my $setting := self.get_outer_setting();
         '{'
         ~ 'closure:'~self.closure_generator($node)
         ~ ',name:'~self.quote_string($node.name)
         ~ ($info.outer ?? ',outer:'~self.static_info_id($info.qast) !! '')
         ~ ',vars:{'~nqp::join(',',@vars_info)~'}'
         ~ ($code_ref ?? ',code_ref:'~self.cuid($node) !! '')
         ~ (nqp::isnull($setting) ?? '' !!  ',setting:'~self.quote_string($setting))
         ~ '}';
    }


    #= creates a fresh js variable name
    method unique_var($prefix) {
        $!unique_vars := $!unique_vars + 1;
        $prefix~$!unique_vars;
    }

    method create_fresh_ctx() {
        $*BLOCK.ctx(self.unique_var('ctx'));
        self.create_ctx($*BLOCK.ctx);
    }

    #= returns code to setup a ctx stored in var $name
    method create_ctx($name) {
        "var $name = new nqp.Ctx(caller_ctx,{self.outer_ctx},'$name');\n";
    }

    method look_at($ast) {
        $!modules := $!modules ~ self.as_js($ast) ~ "\n";
    }

    sub want($node, $type) {
        my @possibles := nqp::clone($node.list);
        my $best := @possibles.shift;
        for @possibles -> $sel, $ast {
            if nqp::index($sel, $type) >= 0 {
                $best := $ast;
            }
        }
        $best
    }


    method multi_dispatcher($code) {
        my $js := '1';
        for $code.dispatchees {
            my $cuid := self.cuid_for_code($_);
            # we add 1 to account for the _NAMED first argument
            $js := "(arguments.length >= {$_.arity+1} && arguments.length <= {$_.count+1} ? $cuid\.apply(this,arguments) : $js)";
        }
        $js;
    }

    # XXX think about name
    method stmts_as_js(@stmts) {
        my $i := 0;
        my $n := +@stmts;
        my $code := "";
        my $colon := 0;
        for @stmts {
            my $js := self.as_js($_);
            my $is_return_bind := (nqp::istype($_, QAST::Op) && $_.op eq 'bind' && nqp::istype($_[0], QAST::Var) && $_[0].name eq 'RETURN'); #HACK
            unless $js eq $EMPTY || $is_return_bind {
                $code := $code ~ ",\n" if $colon;
                $code := $code ~ $js;
                $colon := 1;
            }
        }
        if $code eq '' {
            return $EMPTY;
        }
        if +@stmts > 1 {
            return "($code)";
        }

        return $code;
    }

    proto method as_js(*@args, *%_) { * }
    multi method as_js(QAST::Stmts $node) {
        self.stmts_as_js($node.list);
    }
    multi method as_js(QAST::Stmt $node) {
        self.stmts_as_js($node.list);
    }

    # we do not have a $*BLOCK in outermost code
    method ctx() {
        (try $*BLOCK) ?? $*BLOCK.ctx !! 'top_ctx';
    }
    method outer_ctx() {
        $*BLOCK.outer ?? $*BLOCK.outer.ctx !! 'null';
    }

    method compile_positionals(@params,$slurpy) {
        my $i := 2;
        my @js_params;
        my $defaults := "";
        for @params {
            if self.is_dynamic_var($_[0]) {
                my $tmp := self.unique_var('param');
                @js_params.push($tmp);
                my $val := $_[1] ne '' ?? "(arguments.length <= $i ? {$_[1]} : $tmp)" !! $tmp;
                $defaults := $defaults ~ self.bind_var($_[0],self.js($val),1) ~ ";\n";
            } else {
                my $name := self.mangle_name($_[0]);
                if $_[1] ne '' {
                    $defaults := $defaults ~ "if (arguments.length <= $i) $name = "~$_[1]~";\n";
                }
                @js_params.push($name);
            }
            $i := $i + 1;
        }
        if $slurpy {
            $defaults := $defaults ~ self.bind_var($slurpy,self.js("Array.prototype.slice.call(arguments,$i)"),1)~";\n";
        }
        [@js_params,$defaults];
    }

    multi method as_js(QAST::Block $node) {
        if $node.blocktype eq 'immediate' {
            my $code := self.compile_block($node);
            "$code.apply(undefined,[{self.ctx},nqp.empty_named()])";
        } elsif $node.blocktype eq 'declaration' || $node.blocktype eq '' || $node.blocktype eq 'declaration_static' {
            if try $*BLOCK { # the outermost block has no parent
                # we declare the blocks on to of their parent block
                $*BLOCK.declare_block($node);
                self.cuid($node);
            } else {
                self.compile_block_with_cuid($node);
            }
        } else {
            nqp::die("Unknown blocktype '"~$node.blocktype~"'");
        }
    }

    method compile_block($node,:$no_wrap=0) {
        my $outer     := try $*BLOCK;
        self.compile_block_with_outer($node,$outer,$no_wrap);
    }
    method compile_block_with_cuid($node) {
        my $code := self.compile_block($node);
        my $cuid := self.cuid($node);
        "$cuid.update($code)\n";
    }
    method setup_lexicals($node) {
        my $setup := '';
        if self.has_setting_for_block($node) {
            $setup := "{$*BLOCK.ctx}.get_setting({self.quote_string(self.get_setting_for_block($node))});\n";
        } 
        for $*BLOCK.lexicals -> $var {
            if nqp::existskey($node.symtable,$var.name) {
                my $symbol := $node.symbol($var.name);
                if $var.decl eq 'static' && nqp::existskey($symbol,'value') {
                    $setup := $setup ~ self.bind_var($var,QAST::WVal.new(:value($symbol<value>))) ~ ";\n";            
                }
            }
        }
        $setup;
    }
    method compile_block_with_outer(QAST::Block $node,$outer,$no_wrap) {
        my $*BLOCK     := BlockInfo.new($node, $outer);
        self.set_block_info($node,$*BLOCK);
        my $*BINDVAL := 0;

        my $*DISPATCH_MULTI := '';

        my @stmts;
        
        my $create_ctx := self.create_fresh_ctx();

        my $code := self.flatten_block($node);

        my $stmts := self.stmts_as_js($code);


        my $decls := '';
        for $*BLOCK.declared_blocks -> $block {
            my $cuid := self.cuid($block);
            $decls := $decls ~ self.compile_block_with_cuid($block);
        }


        my $tmps := self.declare_vars($*BLOCK.tmps);


        my $sig := self.compile_sig($*BLOCK.params);

        my $name := self.mangle_name($node.name);
        my $compiled_block := "function $name("
        ~ nqp::join(',',$sig<pos>)~') {'
        ~ $create_ctx
        ~ self.setup_lexicals($node)
        ~ $sig<defaults>
        ~ $decls ~';'
        ~ $tmps
        ~ self.declare_vars($*BLOCK.js_lexicals)
        ~ $sig<named>
        ~'return '~$stmts
        ~'}';
        if ($no_wrap) {
            "($compiled_block)";
        } else {
            if self.has_code_ref_index($node) && !$*STATIC_CODE_REF {
                "sc.update_code_ref({self.get_code_ref_index($node)},$compiled_block)"
            } else {
                my $*STATIC_CODE_REF := 1;
                "new nqp.CodeRef($compiled_block,{self.static_info_id($node)}{$outer ?? ",{$outer.ctx}" !! ''})"
            }
        }
    }

    method compile_sig(@params) {
        my $slurpy_named;
        my $slurpy;
        my @named;
        my @pos;

        my $bind_named := '';
        for @params {
            if $_.slurpy {
                if $_.named {
                    $slurpy_named := $_; 
                } else {
                    $slurpy := $_;
                }
            } elsif $_.named {
                unless self.is_dynamic_var($_) {
                    @named.push(self.mangle_name($_.name));
                }
                my $quoted := self.quote_string($_.named);
                my $value := "_NAMED[$quoted]";
                if $_.default {
                    $value := "(_NAMED.hasOwnProperty($quoted) ? $value : {self.as_js($_.default)})";
                }

                $bind_named := $bind_named ~ self.bind_var($_,self.js($value),1) ~ ";\n";
            } else {
                my $default := '';
                if $_.default {
                    $default := self.as_js($_.default);
                }
                @pos.push([$_,$default]);
            }
        }

        if $slurpy_named {
            $bind_named := $bind_named ~ self.bind_var($slurpy_named,self.js('_NAMED'),1) ~ ";\n";
        }

        my $sig := self.compile_positionals(@pos,$slurpy);

        $sig[0].unshift('_NAMED');
        $sig[0].unshift('caller_ctx');
        my %ret;
        %ret<pos> := $sig[0];
        %ret<defaults> := $sig[1];
        %ret<named> := self.declare_vars(@named)~$bind_named;
        %ret;
    }
    
    method wrap_in_lexotic($lexotic,$code) {
        my $exception := self.unique_var('return');
        my $return := self.mangle_name($lexotic);
        $*BLOCK.add_js_lexical($return);
        '(function _() {'~"var $exception = \{\};$return = function _(caller_ctx,NAMED_,value) \{$exception.value = value;throw $exception\};try \{$code\} catch (e) \{if (e === $exception) \{ return $exception.value;\} else \{ throw e\}\}"~'})()'; 
    }

    multi method as_js(QAST::Want $node) {
        self.as_js($node.list[0]);
    }
    multi method as_js(QAST::IVal $ival) {
        '('~$ival.value()~')';
    }
    multi method as_js(QAST::NVal $ival) {
        '('~$ival.value()~')';
    }

    method quote_string($str) {
        # We can not use regexes here as the regex-lib is not yet available at that point

        my $out := '';
        my $quoted := nqp::escape($str);

        # We use a lot of variables to keep track of the state as we can only iterate the chars sequentialy
        # nqp::escape on nqp-p returns \x{..} on parrot which we have to transform 
        my $backslash := 0;
        my $x := 0;
        my $curly := 0;

        my $escape := '';

        for nqp::split('',$quoted~'') -> $c {
            if $backslash && $c eq 'e' {
                $out := $out ~ 'x1b';
            } elsif $backslash && $c eq 'a' {
                $out := $out ~ 'x07';
            } elsif $backslash && $c eq 'x' {
                $x := 1;
            } elsif $x && $c eq '{' {
                $x := 0;
                $curly := 1;
            } elsif $curly && $c eq '}' {
               $out := $out ~ 'u'~nqp::x("0",4-nqp::chars($escape))~$escape;
               $escape := '';
               $curly := 0;
            } elsif $curly {
                $escape := $escape ~ $c;
            } else {
                $out := $out ~ $c;
            }
            $backslash := !$backslash && $c eq '\\';
        }
        "\""~$out~"\"";
    }

    multi method as_js(QAST::SVal $sval) {
        self.quote_string($sval.value());
    }


    # TODO: think about how we are going to do this properly
    method closure_generator(QAST::Block $node) {
        my $outer := self.get_block_info($node).outer;
        my $outer_ctx := $outer ?? $outer.ctx !! 'some_outer';
        "function ($outer_ctx) \{return {self.compile_block($node,1)}\}"
    }


    multi method as_js(QAST::BVal $node) {
        self.cuid($node.value);
    }

    multi method as_js(QAST::WVal $node) {
        self.value_as_js($node.value);
    }

    multi method as_js(QAST::Regex $node) {
        my $*REGEX_LABEL := 2;

        my $done := self.regex_label;
        my $cstack_label := self.regex_label;
        my $restart_label := self.regex_label;

        "(function _() \{\n"
        ~ 'var rep=0,start = '~self.p6_method_call('self','!cursor_start_all',[])
        ~ ",cursor=start[0],target=start[1],pos=start[2],curclass=start[3],bstack=start[4],restart=start[5],cstack,subcur;\n"
        ~ "var label = 1;\n"
        ~ "if (restart == 1) \{label = $restart_label;\}\n"
        ~ "if (pos > target.length) \{label = 0;\}\n"
        ~ "while (1) \{switch (label) \{\n"
        ~ self.regex_case(1)
        ~ self.compile_rx($node)
        ~ self.regex_case($restart_label)
        ~ "cstack = cursor[\"\$!cstack\"];\n" # TODO better attr handling
        ~ self.regex_case(0)
        ~ "if (bstack.length == 0) \{{self.regex_goto($done)}\}\n"
        ~ "var cstack_top = bstack.pop();\n"
        ~ "if (!cstack || nqp.op.isnull({self.ctx},cstack) || cstack.length == 0) \{{self.regex_goto($cstack_label)}\}\n"
        ~ "subcur = cstack[cstack_top-1];\n"
        ~ self.regex_case($cstack_label)
        ~ "rep=bstack.pop();\npos=bstack.pop();\nvar jump=bstack.pop();\n"
        ~ "if (pos < -1) \{{self.regex_goto($done)}\}\n"
        ~ "if (pos < 0) \{{self.regex_fail()}\}\n"
        ~ "if (jump == 0) \{{self.regex_fail()}\}\n"
        ~ "if (!nqp.op.islist({self.ctx},cstack)) \{{self.regex_goto("jump")}\}\n"
        ~ "if (bstack.length == 0) \{cstack.length = 0;{self.regex_goto('jump')}\}\n"
        ~ "cstack.length = bstack[bstack.length-1];\n"
        ~ self.regex_goto('jump')
        ~ self.regex_case($done)
        ~ self.p6_method_call('cursor','!cursor_fail',[]) ~ ";\n"
        ~ "return cursor;\n"
        ~ "\}\}\n"
        ~ "\})()\n";
    }

    #= create a unique regex label
    method regex_label() {
        $*REGEX_LABEL++;
    }
    method regex_case($label) {
        "case $label:\n"
    }
    method regex_goto($label) {
        "label = $label;break;\n"; 
    }
    method regex_commit($label) {
        "nqp.regex_commit(bstack,$label);\n";
    }

    #= push a new backtracking mark on the bstack with label $label, position $pos and count $count.
    #= (all arguments are taken as js code snippets).
    method regex_mark($label,$pos,$count) {
      "bstack.push($label,$pos,$count,bstack.length ? bstack[bstack.length-1] : 0);\n";
    }

    method regex_fail() {
      "label = 0;break;\n";
    }

    method cclass_check($cclass,:$pos='pos',:$negated=0) {
        "if ({$negated ?? '' !! '!'}nqp.op.iscclass({self.ctx},{%const_map{$cclass}},target,$pos)) \{{self.regex_fail}\}\n";
    }

    # TODO proper attr access
    method regex_bind_pos() {
      "cursor['\$!pos\'] = pos;\n"
    }
    method get_pos_from_cursor($cursor) {
      "$cursor['\$!pos\']";
    }

    method regex_peek($mark, *@regs) {
        my $code := "var peek = nqp.rxpeek(bstack, $mark);\n";
        for @regs {
            $code := $code ~ "peek++;\n";
            $code := $code ~ "$_ = bstack[peek]\n;" if $_ ne '*';
        }
        $code;
    }


    method compile_rx($node) {
        if $node.rxtype eq 'concat' {
            my $js := '';
            for $node.list {
                $js := $js ~ self.compile_rx($_);
            }
            $js;
        } elsif $node.rxtype eq 'literal' {
            my $const := $node.subtype eq 'ignorecase' ?? nqp::lc($node[0]) !! $node[0];
            my $qconst := self.quote_string($const);
            my $constlen := nqp::chars($const);
            my $cmpop := $node.negate ?? '==' !! '!=';
            my $str := "target.substr(pos,$constlen)";
            if $node.subtype eq 'ignorecase' {
                $str := "$str.toLowerCase()";
            }
            "if ($str $cmpop $qconst) \{{self.regex_fail}\} else \{pos+=$constlen\}\n";
        } elsif $node.rxtype eq 'qastnode' {
            my $setup := self.regex_bind_pos~"{self.ctx}.bind_contextual(\"\$\¢\",cursor);\n";
            if $node.subtype eq 'zerowidth' {
                $setup ~ "if ({$node.negate ?? '' !! '!'}{self.as_js($node[0])}.Bool({self.ctx})) \{{self.regex_fail}\}\n";
            } else {
                $setup ~ self.as_js($node[0])~";\n";
            }

        } elsif $node.rxtype eq 'subcapture' {
            my $done_label := self.regex_label; 
            my $fail_label := self.regex_label; 
            my $name := QAST::SVal.new(:value($node.name));

            self.regex_mark($fail_label,'pos',0)
            ~ self.compile_rx($node[0])
            ~ "var subcapture_from;\n"
            ~ self.regex_peek($fail_label,'subcapture_from')
            ~ self.regex_bind_pos
            ~ "subcur = "~self.p6_method_call('cursor','!cursor_start_subcapture',[self.js('subcapture_from')]) ~ ";\n"
            ~ self.p6_method_call('subcur','!cursor_pass',[self.js('pos')]) ~ ";\n"
            ~ "cstack = " ~ self.p6_method_call('cursor','!cursor_capture',[self.js('subcur'),$name]) ~ ";\n"
            ~ self.regex_goto($done_label)
            ~ self.regex_case($fail_label)
            ~ self.regex_fail() 
            ~ self.regex_case($done_label);
        } elsif $node.rxtype eq 'pass' {
            my $pos := self.js("pos");
            my $backtrack := QAST::IVal.new(:value($node.backtrack ne 'r'),:named("backtrack"));
            my $code;

            if $node.name() {
                my $name := QAST::SVal.new(:value($node.name));
                $code := self.p6_method_call('cursor','!cursor_pass',[$pos,$name,$backtrack]) ~ ";\n";
            }
            elsif +@($node) == 1 {
                my $dynname := self.as_js($node[0]);

                $code := self.p6_method_call('cursor','!cursor_pass',[$pos,$dynname,$backtrack]) ~ ";\n";
            }
            else {
                $code := self.p6_method_call('cursor','!cursor_pass',[$pos,$backtrack]) ~ ";\n";
            }
            $code ~ "return cursor;\n";

        } elsif $node.rxtype eq 'anchor' {
            if $node.subtype eq 'eos' {
                "if (pos < target.length) \{{self.regex_fail}\}\n";
            } elsif $node.subtype eq 'bos' {
                "if (pos != 0) \{{self.regex_fail}\}\n";
            } elsif $node.subtype eq 'lwb' {
                "if (pos >= target.length) \{{self.regex_fail}\}\n"
                ~ self.cclass_check('CCLASS_WORD')
                ~ self.cclass_check('CCLASS_WORD', :negated(1), :pos('pos-1'));
            } elsif $node.subtype eq 'rwb' {
                "if (pos <= 0) \{{self.regex_fail}\}\n"
                ~ self.cclass_check('CCLASS_WORD', :negated(1), :pos('pos'))
                ~ self.cclass_check('CCLASS_WORD', :pos('pos-1'));
            } elsif $node.subtype eq 'bol' {
                my $done_label := self.regex_label;

                "if (pos == 0) \{{self.regex_goto($done_label)}\}\n"
                ~ "if (pos >= target.length) \{{self.regex_fail}\}\n"
                ~ self.cclass_check('CCLASS_NEWLINE',:pos('pos-1'))
                ~ self.regex_case($done_label);
            } elsif $node.subtype eq 'eol' {
                my $done_label := self.regex_label;

                "if (nqp.op.iscclass({self.ctx},{%const_map<CCLASS_NEWLINE>},target,pos)) \{{self.regex_goto($done_label)}\}\n"
                ~ "if (pos != target.length) \{{self.regex_fail()}\}\n"
                ~ "if (pos == 0) \{{self.regex_goto($done_label)}\}\n"
                ~ self.cclass_check('CCLASS_NEWLINE', :negated(1), :pos('pos-1'))
                ~ self.regex_case($done_label);
            } elsif $node.subtype eq 'pass' {
            } elsif $node.subtype eq 'fail' {
                self.regex_fail;
            } else {
                self.nyi("anchor type: {$node.subtype}");
            }

        } elsif $node.rxtype eq 'dba' {
            my $name := QAST::SVal.new(:value($node.name));
            self.p6_method_call('cursor','!dba',[self.js("pos"),$name])~";\n";
        } elsif $node.rxtype eq 'cclass' {
            my %cclass_code;
            %cclass_code<.>  := %const_map<CCLASS_ANY>;
            %cclass_code<d>  := %const_map<CCLASS_NUMERIC>;
            %cclass_code<s>  := %const_map<CCLASS_WHITESPACE>;
            %cclass_code<w>  := %const_map<CCLASS_WORD>;
            %cclass_code<n>  := %const_map<CCLASS_NEWLINE>;

            my $cclass := %cclass_code{ $node.name };
            my $code := "if (pos >= target.length) \{{self.regex_fail()}\}\n";

            if $node.name ne '.' {
                $code := $code ~ "if ({$node.negate ?? '' !! '!'}nqp.op.iscclass({self.ctx},$cclass,target,pos)) \{{self.regex_fail}\}\n";
                if $node.name eq 'n' {
                    $code := $code ~ "if (target.substr(pos,2) == \"\\r\\n\") \{pos++\}\n";
                } 
            }
            $code := $code ~ "pos++;\n" unless $node.subtype eq 'zerowidth';
            $code;
        } elsif $node.rxtype eq 'subrule' || $node.rxtype eq 'ws' {
            my $captured := 0;
            my $name := QAST::SVal.new(:value(nqp::defined($node.name) ?? $node.name !! ''));

            my $call;
            if nqp::istype($node[0][0], QAST::Block) {
                #TODO think if arguments are possible, etc.
                $call := self.as_js($node[0][0])~".apply(cursor,[{self.ctx},nqp.empty_named(),cursor])";
            }
            else {
                my $args := nqp::clone($node[0].list);
                $call := self.p6_method_call('cursor',$args.shift,$args);
            }

            my $testop := $node.negate ?? '>=' !! '<';

            my $code :=
                self.regex_bind_pos()
                ~ 'subcur = '~$call ~ ";\n"
                ~ "var subpos = {self.get_pos_from_cursor('subcur')};\n"
                ~ "if (subpos $testop 0) \{{self.regex_fail}\}\n";

                
            if $node.subtype ne 'zerowidth' {
                my $pass_label := self.regex_label();
                if $node.backtrack eq 'r' {
                    unless $node.subtype eq 'method' {
                        $code := $code ~ self.regex_mark($pass_label,-1,0) ~ self.regex_case($pass_label);
                    }
                }
                else {
                    my $back_label := self.regex_label; 
                    $code := $code ~
                        self.regex_goto($pass_label)
                        ~ self.regex_case($back_label)
                        ~ 'subcur = '~self.p6_method_call('subcur','!cursor_next',[]) ~ ";\n"
                        ~ "if({self.get_pos_from_cursor('subcur')} $testop 0) \{{self.regex_fail}\};\n"
                        ~ self.regex_case($pass_label);
                    if $node.subtype eq 'capture' {
                        $code := $code ~ 'cstack = '
                            ~ self.p6_method_call('cursor','!cursor_capture',[self.js('subcur'),$name]) ~ ";\n";

                        $captured := 1;
                    }
                    else {
                        $code := $code ~ 'cstack = '
                            ~ self.p6_method_call('cursor','!cursor_push_cstack',[self.js('subcur')])  ~ ";\n"
                            ~ "bstack.push($back_label,0,pos,cstack.length);\n"
                    }
                    
               }
            }
                
            if !$captured && $node.subtype eq 'capture' {
                $code := $code ~ 'cstack = '~self.p6_method_call('cursor','!cursor_capture',
                    [self.js('subcur'),$name])~";\n";
            }
            $code := $code ~ "pos = {self.get_pos_from_cursor('subcur')};\n" 
              unless $node.subtype eq 'zerowidth'; 

            $code;

        } elsif $node.rxtype eq 'scan' {
            my $loop := self.regex_label;
            my $scan := self.regex_label;
            my $done := self.regex_label;

            "if (self['\$!from'] != -1) \{label = $done;break;\}\n"
            ~ "label = $scan;break;\n"
            ~ self.regex_case($loop)
            ~ "pos++;\n"
            ~ "if (pos >= target.length) \{{self.regex_fail}\}\n"
            ~ "cursor['\$!from'] = pos;\n"
            ~ self.regex_case($scan)
            ~ self.regex_mark($loop,'pos',0)
            ~ self.regex_case($done);
        } elsif $node.rxtype eq 'enumcharlist' || $node.rxtype eq 'charrange' {
            my $charlist := self.quote_string($node[0]);
            my $testop := $node.negate ?? '>=' !! '<';

            "if (pos >= target.length) \{{self.regex_fail()}\}"
            ~ "if ($charlist.indexOf(target.substr(pos,1)) $testop 0) \{{self.regex_fail()}\}"
            ~ ($node.subtype eq 'zerowidth' ?? '' !! "pos++;\n")

        } elsif $node.rxtype eq 'conj' || $node.rxtype eq 'conjseq' {
            my $code := ''; 

            my $conj_label := self.regex_label();
            my $first_label := self.regex_label();

            my $iter := nqp::iterator($node.list);
            # make a mark that holds our starting position in the pos slot

            $code := 
                self.regex_mark($conj_label, 'pos', 0)
                ~ self.regex_goto($first_label)
                ~ self.regex_case($conj_label)
                ~ self.regex_fail()

                # call the first child
                ~ self.regex_case($first_label)
                ~ self.compile_rx(nqp::shift($iter))

                ~ "var start_pos;\n"
                # use previous mark to make one with pos=start, rep=end
                ~ self.regex_peek($conj_label, 'start_pos')
                ~ self.regex_mark($conj_label, 'start_pos', 'pos');

            while $iter {
                $code := $code 
                     ~ "pos = start_pos;\n"
                     ~ self.compile_rx(nqp::shift($iter))
                     ~ self.regex_peek($conj_label, 'start_pos', 'end_pos')
                     ~ "if (pos != end_pos) \{{self.regex_fail()}\}\n";
            }
            $code := $code ~ "pos = start_pos;\n" if $node.subtype eq 'zerowidth';

            $code;
        } elsif $node.rxtype eq 'quant' {
            my $min       := $node.min;
            my $max       := $node.max;
            my $needrep   := $min > 1 || $max > 1;
            my $needmark  := $needrep || $node.backtrack eq 'r';
            my $sep       := $node[1];
            my $loop := self.regex_label;
            my $done := self.regex_label;

            if $min == 0 && $max == 0 {
                # Nothing to do, and nothing to backtrack into.
                "";
            } elsif $node.backtrack eq 'f' {
                my $irep := $*BLOCK.add_tmp();
                my $seplabel := self.regex_label;

                "rep = 0;\n"
                 ~ ($min < 1 ?? self.regex_mark($loop,'pos','rep') ~ self.regex_goto($done) !! '')
                 ~ ($sep ?? self.regex_goto($seplabel) !! '')
                 ~ self.regex_case($loop)
                 ~ "$irep = rep;\n"
                 ~ ($sep ?? self.compile_rx($sep) ~ self.regex_case($seplabel) !! '')
                 ~ self.compile_rx($node[0])
                 ~ self.regex_case($loop)
                 ~ "rep = $irep;\n"
                 ~ "rep++;\n"
                 ~ ($min > 1 ?? "if (rep < $min) \{{self.regex_goto($loop)}\}\n" !! '')
                 ~ ($max > 1 ?? "if (rep >= $max) \{{self.regex_goto($done)}\}\n" !! '')
                 ~ ($max != 1 ?? self.regex_mark($loop, 'pos', 'rep') !! '')
                 ~ self.regex_case($done)
            } else {
                my $code;

                if $min == 0 { $code := self.regex_mark($done,'pos',0) }
                elsif $needmark { $code := self.regex_mark($done,-1,0) }

                $code := $code ~ self.regex_case($loop) ~ self.compile_rx($node[0]);

                if $needmark {
                    $code := $code
                        ~ self.regex_peek($done, '*', 'rep')
                        ~ ($node.backtrack eq 'r' ?? self.regex_commit($done) !! '')
                        ~ "rep++;\n"
                        ~ ($max > 1 ?? "if (rep >= {$node.max}) \{{self.regex_goto($done)}\}\n" !! '');
                }
                unless $max == 1 {
                    $code := $code
                       ~ self.regex_mark($done, 'pos', 'rep')
                       ~ ($sep ?? self.compile_rx($sep) !! '')
                       ~ self.regex_goto($loop);
                }

                $code ~ self.regex_case($done) ~ ($min > 1 ?? "if (rep < {+$node.min}) \{{self.regex_fail}\}" !! "");
            }
        } elsif $node.rxtype eq 'altseq' || ($node.rxtype eq 'alt' && !$node.name) {
            my $code := "//altseq\n";

            my $iter     := nqp::iterator($node.list);
            my $endlabel := self.regex_label();
            my $altlabel := self.regex_label();
            my $acode    := self.compile_rx(nqp::shift($iter)) ~ ";\n";

            while $iter {
                $code := $code ~ self.regex_case($altlabel);
                $altlabel := self.regex_label();
                $code := $code 
                    ~ self.regex_mark($altlabel, 'pos', 0)
                    ~ $acode
                    ~ self.regex_goto($endlabel);
                $acode := self.compile_rx(nqp::shift($iter)) ~ ";\n";
            }
            $code ~ self.regex_case($altlabel) ~ $acode ~ self.regex_case($endlabel);

        } elsif $node.rxtype eq 'alt' {
            my $alt_code := '';

            # Calculate all the branches to try, which populates the bstack
            # with the options. Then immediately fail to start iterating it.

            my $end_label := self.regex_label();


            my @alt_labels;

            # Emit all the possible alternations.
            my $iter     := nqp::iterator($node.list);
            while $iter {
                my $alt_label := self.regex_label();

                $alt_code := $alt_code 
                  ~ self.regex_case($alt_label)
                  ~ self.compile_rx(nqp::shift($iter))
                  ~ self.regex_goto($end_label);

                @alt_labels.push($alt_label);
            }

            my $name := QAST::SVal.new(:value($node.name));

            "subcur = [{nqp::join(',',@alt_labels)}];\n"
            ~ self.regex_mark($end_label, -1, 0)
            ~ self.p6_method_call('cursor','!alt',[self.js("pos"), $name, self.js("subcur")]) ~ ";\n"
            ~ self.regex_fail()
            ~ $alt_code
            ~ self.regex_case($end_label)
            ~ ($node.backtrack eq 'r' ?? self.regex_commit($end_label) !! '');

        } else {
            "<Regex {$node.rxtype}>";
        }
    }

    
    method sid_to_js($handle,$id) {
        "nqp.sc({self.quote_string($handle)},$id)";
    }
   
    method value_as_js($value) {
        CATCH {say('//',$value);return "nqp.serialization_error()"}
        my $sc     := nqp::getobjsc($value);
        my $handle := nqp::scgethandle($sc);
        my $idx    := nqp::scgetobjidx($sc, $value);
        self.sid_to_js($handle,$idx) 
    }



    method args($args) {
        my @args;
        my @named;
        my @flat_named;
        my @chunks := [[]];
        for $args -> $arg {
            if nqp::istype($arg,QAST::SpecialArg) {
                if $arg.flat {
                    if $arg.named {
                        @flat_named.push(self.as_js($arg));
                    } else {
                        @chunks.push(self.as_js($arg));
                        @chunks.push([]);
                    }
                }
                elsif $arg.named {
                    @named.push(self.quote_string($arg.named)~":"~self.as_js($arg))
                }
                else {
                    @chunks[@chunks-1].push(self.as_js($arg));
                }
            } else {
                @chunks[@chunks-1].push(self.as_js($arg));
            }
        }
        @flat_named.unshift('{'~nqp::join(',',@named)~'}');
        @chunks[0].unshift("nqp.named({nqp::join(',',@flat_named)})");
        @chunks[0].unshift(self.ctx);
        my @js_args;
        if +@chunks == 1 {
            return nqp::join(',',@chunks[0]);
        }
        for @chunks -> $chunk {
            if nqp::islist($chunk) {
                @js_args.push('['~nqp::join(',',$chunk)~']') if +$chunk
            } else {
                @js_args.push($chunk);
            }
        }
        @js_args;
    }

    method call($callee,$args) {
        my $chunks := self.args($args);
        if nqp::islist($chunks) {
            $callee~'.apply(undefined,'~$chunks.shift~'.concat('~nqp::join(',',$chunks) ~ '))';
        }
        else {
            "$callee.apply(undefined,[$chunks])";
        }
    }

    method op_args($args) {
        my @args;
        @args.push(self.ctx);
        for $args -> $arg {
            @args.push(self.as_js($arg));
        }
        return nqp::join(',',@args);
    }


    # TODO mangle the names properly
    my %mangle;
    %mangle<_> := 'UNDERSCORE';
    %mangle<&> := 'AMPERSAND';
    %mangle<:> := 'COLON';
    %mangle<;> := 'SEMI';
    %mangle<<> := 'LESS';
    %mangle<>> := 'MORE';
    %mangle<{> := 'CURLY_OPEN';
    %mangle<}> := 'CURLY_CLOSE';
    %mangle<[> := 'BRACKET_OPEN';
    %mangle<]> := 'BRACKET_CLOSE';
    %mangle<(> := 'PAREN_OPEN';
    %mangle<)> := 'PAREN_CLOSE';
    %mangle<~> := 'TILDE';
    %mangle<+> := 'PLUS';
    %mangle<=> := 'EQUAL';
    %mangle<?> := 'QUESTION';
    %mangle<!> := 'BANG';
    %mangle</> := 'SLASH';
    %mangle<*> := 'STAR';
    %mangle<-> := 'MINUS';
    %mangle<@> := 'AT';
    %mangle<,> := 'COMMA';
    %mangle<%> := 'PERCENT';
    %mangle<¢> := 'CENT';
    %mangle< > := 'SPACE';
    %mangle<'> := 'SINGLE';
    %mangle<"> := 'QUOTE';
    %mangle<^> := 'CARET';
    %mangle<.> := 'DOT';
    %mangle<|> := 'PIPE';
    %mangle<`> := 'BACKTICK';
    %mangle<$> := 'DOLAR';
    %mangle<\\> := 'BACKSLASH';
    method mangle_name($name) {
        if self.is_reserved_word($name) {$name := "_$name"}
        my $mangled := subst($name,/(\W)/,-> $match {
            if nqp::existskey(%mangle, $match[0]) {
                '_'~%mangle{$match[0]}~'_';
            } else {
                '_'~nqp::ord($match[0])~'_';
            }
        },:global);
        $mangled;
    }

    #= mangle op names
    method op($name) {
        'nqp.op.'~$name;
    }

    #= call a method using p6 calling conventions
    method p6_method_call($invocant,$method,@args) {
        $invocant := nqp::istype($invocant, QAST::Node) ?? self.as_js($invocant) !! $invocant;
        my $call := nqp::istype($method, QAST::Node) 
            ?? '['~self.as_js($method)~']'
            !! self.js_method_call($method);

        my $chunks := self.args(@args);
        if nqp::islist($chunks) {
            "$invocant$call.apply($invocant,{$chunks.shift}.concat({nqp::join(',',$chunks)}))";
        }
        else {
            $invocant~$call~"("~$chunks~')';
        }
    }

    #= call a method using js calling conventions
    method js_method_call($name) {
        if 1 { #TODO: unquoted methods?
            '['~self.quote_string($name)~']';
        } else {
            '.'~$name;
        }
    }

    # List taken from https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Reserved_Words
    my %reserved_words;
    for nqp::split(" ",'break case catch continue debugger default delete do else finally for function if in instanceof new return switch this throw try typeof var void while with implements interface let package private protected public static yield class enum export extends import super') {
        %reserved_words{$_} := 1;
    }
    method is_reserved_word($identifier) {
        nqp::existskey(%reserved_words, $identifier);
    }

    method handle_loop_control_flow($body) {
        # TODO unique names
        my $last := "__control__last";
        my $next := "__control__next";
        my $redo := "__control__redo";
        "var $next = \{\};var $redo = \{\};var $last = \{\};try \{$body\} catch (e) \{if (e === $last) \{break\} else if (e == $next) \{continue\} else if (e == $redo) \{__skip__ = 1;continue\} else \{ throw e\}\}"; 
    }


    method compile_with_argument($node,$arg) {
        if nqp::isnull($arg) {
            self.as_js($node);
        } else {
            my $code := self.compile_block($node,1);
            "$code({self.ctx},nqp.empty_named(),$arg)";
        }
    }
    multi method as_js(QAST::Op $op) {
        if $op.op eq 'call' || $op.op eq 'chain' {
            my $callee;
            my $args := nqp::clone($op.list);
            if $op.name eq '&return' { #hack
                $callee := '';
            } elsif $op.name {
                $callee := self.as_js(QAST::Var.new(:name($op.name),:scope('lexical')));
            } else {
                $callee := self.as_js($args.shift());
            }
            self.call($callee,$args);
        } elsif $op.op eq 'control' {
            "(function() \{throw __control__{$op.name}\})()";
        } elsif $op.op eq 'lexotic' {
            self.wrap_in_lexotic($op.name,'return '~self.as_js($op[0]));
        } elsif $op.op eq 'handle' {
            my @children := nqp::clone($op.list());
            if +@children == 1{
                return self.as_js(@children[0]);
            }
            my $exception := self.unique_var("exception");

            my $outer_block := $*BLOCK;
            # we need a new context to register the handlers, remember that a block can get optimised out
            {
                my $*BLOCK     := BlockInfo.new(NQPMu, $outer_block);
                my $create_ctx := self.create_fresh_ctx();

                my $protected  := self.as_js(@children.shift);


                my %handlers;
                my $handlers := "var $exception = \{\};";
                for @children -> $name, $handler_code {
                    if nqp::existskey(%handlers, $name) {
                        nqp::die("Multiple handlers for $name");
                    }
                    $handlers := $handlers ~ "{self.ctx} = {self.ctx}.handle({self.quote_string($name)},function _(e) \{$exception.ret = {self.as_js($handler_code)};throw $exception;\});\n";
                }
                $handlers := "$handlers;\n";
                my $code := "(function _(caller_ctx) \{var {self.ctx}=caller_ctx;$handlers;try \{return $protected\} catch (e) \{if (e == $exception) \{return e.ret;\} else \{throw e\}\}\})({$outer_block.ctx})";

                # $*BLOCK doesn't get compiled pass to as_js so we need to pass on all the declared block we encountered
                for $*BLOCK.declared_blocks {
                    $outer_block.declare_block($_);
                }
                $code;
            }

        } elsif $op.op eq 'const' {
            if nqp::existskey(%const_map, $op.name) {
                self.as_js(QAST::IVal.new( :value(%const_map{$op.name}) ));
            } else {
                self.nyi("constant "~$op.name);
            }
        } elsif $op.op eq 'for' {
            my $block := self.compile_block($op[1],1);
            my $tmp := $*BLOCK.add_tmp();
            my $list := self.as_js($op[0]);

            my $arity := $op[1].arity || 1;
            my @args;
            @args.push(self.ctx);
            @args.push('nqp.empty_named()');
            my $i := 0;
            while $i < $arity {
                @args.push("$tmp[i+$i]");
                $i := $i + 1;
            }
            my $body := self.handle_loop_control_flow("$block({nqp::join(',',@args)})");
            "($tmp = nqp.iterate_over_as_array($list),(function _() \{for (var i=0;i<$tmp.length;i+=$arity) \{$body\}\})())";
        } elsif $op.op eq 'usecapture' {
            'nqp.op.usecapture(Array.prototype.slice.call(arguments))';
        } elsif $op.op eq 'savecapture' {
            'nqp.op.savecapture(Array.prototype.slice.call(arguments))';
        } elsif $op.op eq 'takeclosure' {
            self.as_js($op[0])~'.repr_clone()';
        } elsif $op.op eq 'callmethod' {
            my $name := $op.name;
            my @args := nqp::clone($op.list);
            self.p6_method_call(@args.shift,$op.name || @args.shift,@args);
        } elsif $op.op eq 'defor'  {
            my $tmp := $*BLOCK.add_tmp();
            '('~$tmp~' = '~self.as_js($op[0])~",nqp.op.defined({self.ctx},$tmp) ? ($tmp) :" ~ self.as_js($op[1])
            ~')';
        } elsif $op.op eq 'bindkey' || $op.op eq 'atkey' {
            my @args := nqp::clone($op.list);
            self.p6_method_call(@args.shift,$op.op eq 'bindkey' ?? 'bind_key' !! 'at_key',@args);
        } elsif $op.op eq 'locallifetime'  {
            self.as_js($op[0]);
        } elsif $op.op eq 'die'  {
            "{self.ctx}.die({self.op_args($op.list)})";
        } elsif $op.op eq 'if' || $op.op eq 'unless' || $op.op eq 'ifnull'  {
            my $operands := +$op.list;
            my $tmp := $*BLOCK.add_tmp();
            nqp::die("Operation '"~$op.op~"' needs either 2 or 3 operands")
                if $operands < 2 || $operands > 3;
            my $then;
            my $else;

            # See if any immediate block wants to be passed the condition.
            my $im_then := (nqp::istype($op[1], QAST::Block) && 
                           $op[1].blocktype eq 'immediate' &&
                           $op[1].arity > 0) ?? $tmp !! nqp::null();
            my $im_else := ($operands == 3 &&
                           nqp::istype($op[2], QAST::Block) && 
                           $op[2].blocktype eq 'immediate' &&
                           $op[2].arity > 0) ?? $tmp !! nqp::null();

            if $op.op eq 'if' || $op.op eq 'ifnull' {
                $then := self.compile_with_argument($op[1], $im_then);
                if $operands == 3 {
                    $else := self.compile_with_argument($op[2], $im_else);
                } else {
                    $else := $tmp;
                }
            } else {
                if $operands == 3 {
                    $then := self.compile_with_argument($op[2], $im_else);
                } else {
                    $then := $tmp;
                }
                $else := self.compile_with_argument($op[1], $im_then);
            }
            my $cond := $op.op eq 'ifnull' ?? "nqp.op.isnull({self.ctx},$tmp)" !! "$tmp.Bool({self.ctx})";
            "($tmp = {self.as_js($op[0])},$cond ? ($then) : $else)";
        } elsif $op.op eq 'while' || $op.op eq 'until' || $op.op eq 'repeat_while' || $op.op eq 'repeat_until' {
            my $neg := ($op.op eq 'until' || $op.op eq 'repeat_until') ?? '!' !! '';
            my $cond := $neg~self.as_js($op[0])~".Bool({self.ctx})";
            my $i := 1;
            my $body := self.handle_loop_control_flow(self.as_js($op[$i]));
            my $repeat := $op.op eq 'repeat_while' || $op.op eq 'repeat_until';
            my $flag := '__skip__'; # TODO make the var unique
            my $after := +$op.list == 3 ?? "($flag || {self.as_js($op[2])})" !! '';
            my $loop := "for (var $flag = $repeat;($flag && $flag--) || $cond;$after) \{$body\}";

            "(function _() \{$loop\})()";
        } elsif $op.op eq 'repeat_while' || $op.op eq 'repeat_until' {
            my $neg := $op.op eq 'until' ?? '!' !! '';
            '(function _() {while ('~$neg~self.as_js($op[0])~".Bool({self.ctx})) \{"~self.as_js($op[1])~'}})()';
        } elsif $op.op eq 'postinc' || $op.op eq 'postdec' {
            my $tmp := $*BLOCK.add_tmp();
            my $var := self.as_js($op[0]);
            my $action := $op.op eq 'postinc' ?? 'add_n' !! 'sub_n';
            my $bind := self.as_js(QAST::Op.new(:op('bind'),$op[0],QAST::Op.new(:op($action),$op[0],QAST::IVal.new(:value(1)))));
            "($tmp = $var,$bind,$tmp)";
        } elsif $op.op eq 'preinc' || $op.op eq 'predec' {
            my $action := $op.op eq 'preinc' ?? 'add_n' !! 'sub_n';
            self.as_js(QAST::Op.new(:op('bind'),$op[0],QAST::Op.new(:op($action),$op[0],QAST::IVal.new(:value(1)))));
        } elsif $op.op eq 'bind' {
            my $*BINDVAL := $op[1];
            self.as_js($op[0])
        } elsif $op.op eq 'exception' {
            return 'e';
        } else {
            self.op($op.op) ~ "(" ~ self.op_args($op.list) ~ ")";
        }
    }


    method as_js_clear_bindval($thing) {
        my $*BINDVAL := 0;
        self.as_js($thing);
    }
    method clear_bindval($cb) {
        my $*BINDVAL := 0;
        $cb();
    }

    method is_dynamic_var(QAST::Var $var) {
        if $var.name eq 'RETURN' {
            0;
        } else {
            1;
        }
    }
    method find_var_ctx(QAST::Var $var) {
        my $info := $*BLOCK;

        while nqp::istype($info, BlockInfo) {
            # we check the symtable because some things are imported from the setting
            if $info.has_lexical($var.name) || $info.qast && nqp::existskey($info.qast.symtable,$var.name) {
                return $info.ctx;
            }
            $info := $info.outer;
        }
        #HACK: think what we are supposed to do
        return 'top_ctx';
    }

    # if $var is a static lexical in $*BLOCK return it's value, else return 0
    method get_static(QAST::Var $var) {
#        my $info := $*BLOCK;
#
#        while nqp::istype($info, BlockInfo) {
#            # we check the symtable because some things are imported from the setting
#            if $info.has_lexical($var.name) {
#                if $info.get_lexical($var.name).decl eq 'static' {
#                    return 0;
#                } else {
#                    return $var.value;
#                }
#            }
#            $info := $info.outer;
#        }
        return 0;
    }

    # if any of $*BLOCK ancestors (or the block itself) has a setting as it's outer return it, else return nqp::null()
    method get_outer_setting() {
        my $info := $*BLOCK;

        while nqp::istype($info, BlockInfo) {
            # we check the symtable because some things are imported from the setting
            if self.has_setting_for_block($info.qast) {
                return self.get_setting_for_block($info.qast);
            }
            $info := $info.outer;
        }
        return nqp::null();
    }

    method bind_var(QAST $var,$value,$decl?) {
        my $*BINDVAL := $value;
        self.compile_var($var,$decl);
    }
    method declare_var(QAST::Var $var) {
        $*BLOCK.add_var($var);
        if $var.decl eq 'param' {
            $*BLOCK.add_lexical($var);
            $*BLOCK.add_param($var);
        }
        if $var.decl eq 'var' || $var.decl eq 'static' {
            $*BLOCK.add_lexical($var);
            if $var.scope eq 'local' || ($var.scope eq 'lexical' && !self.is_dynamic_var($var)) {
                $*BLOCK.add_js_lexical(self.mangle_name($var.name));
            }
        }
        
    }
    method compile_var(QAST::Var $var,$decl?) {
        if ($var.scope eq 'associative') {
            if $*BINDVAL {
                my $bindval := $*BINDVAL;
                self.clear_bindval(-> {
                    self.p6_method_call($var[0],'bind_key',[$var[1],$bindval]);
                });
            } else {
                self.p6_method_call($var[0],'at_key',[$var[1]]);
            }
        } elsif ($var.scope eq 'positional') {
            if $*BINDVAL {
                my $bindval := $*BINDVAL;
                self.clear_bindval(-> {
                    self.p6_method_call($var[0],'bind_pos',[$var[1],$bindval]);
                });
            } else {
                self.p6_method_call($var[0],'at_pos',[$var[1]]);
            }

        } elsif ($var.scope eq 'contextual') {
            my $name := self.quote_string($var.name);
            if $*BINDVAL {
                "{self.ctx}.bind_contextual($name,{self.as_js_clear_bindval($*BINDVAL)})";
            } else {
                "{self.ctx}.lookup_contextual($name)";
            }

        # TODO optimize the lookup when we are not deserializing a closure, and we can't access the outer ctx directly
        } elsif $var.scope eq 'lexical' && self.is_dynamic_var($var) {
            my $name := self.quote_string($var.name);
            my $ctx := self.find_var_ctx($var);
            if $*BINDVAL {
                if $ctx eq self.ctx || $decl {
                  "($ctx[$name] = ({self.as_js_clear_bindval($*BINDVAL)}))";
                } else {
                  "{self.ctx}.bind($name,{self.as_js_clear_bindval($*BINDVAL)})";
                }
            } else {
                if self.get_static($var) -> $value {
                    self.value_as_js($value);
                } elsif $var.decl eq 'var' {
                  "{self.ctx}.declare_var($name)";
                } elsif $ctx eq self.ctx {
                    "$ctx[$name]";
                } else {
                    " {self.ctx}.lookup($name)";
                }
            }
            
        } elsif $var.scope eq 'lexical' || $var.scope eq 'local' {
            if $*BINDVAL {
                '('~self.mangle_name($var.name)~' = ('~self.as_js_clear_bindval($*BINDVAL)~'))';
            } else {
                self.mangle_name($var.name);
            }
        } elsif $var.scope eq 'attribute' {
            # TODO take second argument into account
            my $attr := "{self.as_js_clear_bindval($var[0])}[{self.quote_string($var.name)}]";
            if $*BINDVAL {
                "($attr = ({self.as_js_clear_bindval($*BINDVAL)}))";
            } else {
                "nqp.getattr({self.as_js($var[0])},{self.quote_string($var.name)})";
            }
        } else {
            self.nyi("QAST::Var with scope: {$var.scope}");
        }
    }
    multi method as_js(JSFragment $node) {
        $node.js;
    }
    multi method as_js(QAST::Var $node) {
        self.declare_var($node);
        self.compile_var($node);
    }
    multi method as_js(QAST::VarWithFallback $var) {
        my $code := self.compile_var($var);
        if $*BINDVAL {
            $code;
        } else {
            my $tmp := $*BLOCK.add_tmp();
            "($tmp = $code,nqp.op.isnull({self.ctx},$tmp) ? {self.as_js_clear_bindval($var.fallback)} : $tmp)"
        }
    }
    method pirop($node) {
        my $op := $node.alternative("pirop");
        if $op eq 'get_hll_global Ps' && $node[0].value() eq 'ModuleLoader' {
            'nqp.ModuleLoader';
        } elsif $op eq 'nqp_decontainerize PP' {
            self.as_js($node[0]); 
        } elsif $op eq 'nqp_get_package_through_who PPs' {
            self.as_js(QAST::Var.new(:scope('associative'),QAST::Op.new(:op('who'),$node[0]),$node[1]));
        } else {
            "(1) /* VM pirop:{$node.alternative('pirop')} */";
        }
    }
    multi method as_js(QAST::VM $node) {
        if $node.supports("pirop") {
            self.pirop($node);
        } elsif $node.supports("pir") {
            my $pir := $node.alternative('pir');
            my $match := $pir ~~ regex lexinfo {.*\.const \s+ \"LexInfo\" \s+ \%r \s+ \= \s+ (\".*\")};
            if $match {
                "nqp.lexinfo({$match[0]})";
            } else {
                "(1) /*VM pir:$pir*/";
            }
        # we always load everything we can for now
        } elsif $node.supports("loadlibs") {
           $EMPTY; 
        } else {
            "(1) /*VM*/";
        }
    }
    multi method as_js(CTXSAVE $node) {
        "nqp.ctxsave(module.exports,{$*BLOCK.ctx})";
    }

    multi method as_js(QAST::Node $unknown) {
        nqp::die("Unknown QAST node type");
    }
    multi method as_js($unknown) {
        nqp::die("Unknown thing passed to as_js");
    }
    method strict() {
        "\"use strict\";\n";
    }


    method create_sc($ast) {
        my @sh;
        my $sc := $ast.sc;

        my $sc_tuple := self.serialize_sc($sc);
        my $sc_data := $sc_tuple[0];
        my $sc_sh := $sc_tuple[1];

        my $i := 0;
        while $i < nqp::elems($sc_sh) {
            @sh.push(self.quote_string($sc_sh[$i]));
            $i := $i + 1;
        }



        my @code_ref_blocks;
        for $ast.code_ref_blocks {
            @code_ref_blocks.push(self.cuid($_));
        }

        # we do that before setting up the static info, as we may end some new entries
        my $fill_code_refs := self.fill_sc_code_ref_table($ast.code_ref_blocks);

        self.decorate("create the sc",
        "var sh=[{nqp::join(',',@sh)}];\n"
        ~ "var code_refs=[{nqp::join(',',@code_ref_blocks)}];\n"
        ~ self.setup_static_info()
        ~ "var sc = nqp.op.createsc(top_ctx,{self.quote_string(nqp::scgethandle($sc))});\n"
        ~ "nqp.op.scsetdesc(top_ctx,sc,{self.quote_string(nqp::scgetdesc($sc))});\n"
        ~ $fill_code_refs
        ~ "nqp.op.deserialize(top_ctx,{self.quote_string($sc_data)},sc,sh,code_refs,nqp.op.null(top_ctx));\n");
    }
    method deserialize($ast) {
        my $pre := '';
        my $post := '';
        my $*STATIC_LEXICALS := 0;
        for self.flatten_list_of_stmts($ast.pre_deserialize) {
            if self.is_parrot_specific_initialisation($_) {
            } elsif nqp::istype($_,QAST::Op) && $_.op eq 'forceouterctx' {
                my $setting := $_[1][1].value;
                my $block := $_[0].value;
                $pre := $pre~"nqp.load_setting({self.quote_string($setting)});\n";
            } else {
                $pre := $pre~self.as_js($_)~";//PRE \n"; 
            }
        }
        for self.flatten_list_of_stmts($ast.post_deserialize) {
            if nqp::istype($_,QAST::Op) && $_.op eq 'setstaticlex' {
            } else {
                my $*STATIC_LEXICALS := 1;
                $post := $post~self.as_js($_)~";\n"; 
            }
        }

        self.decorate('pre_deserialize',$pre)
        ~ self.create_sc($ast)
        ~ self.decorate('post_deserialize',$post)
    }

    # discover which code blocks are used as static code refs, so that they can be updated in the sc when their lexicals are initialized
    method mark_code_refs($ast) {
        my $i := 0;
        # we don't always have code blocks, especially in qast snippets unit tests
        if $ast.code_ref_blocks -> $blocks {
            for $blocks -> $block {
                self.set_code_ref_index($block,$i);
                $i := $i+1;
            }
        }
    }

    method emit($ast) {
        my $*STATIC_CODE_REF := 0;

        # we need to find the setting before compiling all the blocks
        for self.flatten_list_of_stmts($ast.pre_deserialize) {
            if nqp::istype($_,QAST::Op) && $_.op eq 'forceouterctx' {
                my $setting := $_[1][1].value;
                my $block := $_[0].value;
                self.set_setting_for_block($block,$setting);
            }
        }

        
        my $rest := '';

        self.mark_code_refs($ast);

        # Should have a single child which is the outer block.
        if +@($ast) != 1 || !nqp::istype($ast[0], QAST::Block) {
            nqp::die("QAST::CompUnit should have one child that is a QAST::Block");
        }

        # make sure we create all the cuids needed for deserialization
        if nqp::defined($ast.sc) {
            for $ast.code_ref_blocks {
                self.cuid($_);
            }
        }

        my $code := self.as_js_with_cuids($ast[0]);


        if nqp::defined($ast.load) {
            my $load_block := QAST::Block.new(
                :blocktype('immediate'),
                $ast.load,
                QAST::Op.new( :op('null') )
            );
            $rest := $rest ~ self.decorate('load','if (require.main !== module) {' ~ self.as_js($load_block) ~ "\}\n");
        }

        if nqp::defined($ast.main) {
            my $main_block := QAST::Block.new(
                $ast.main,
                QAST::Op.new( :op('null') )
            );
            $rest := $rest ~ self.decorate('main','if (require.main === module) {' ~  self.compile_block($main_block)~ ".apply(undefined,[top_ctx,nqp.empty_named()].concat(process.argv.slice(1)))\}\n");
        }

        "var nqp = require('nqp-runtime');\n"
        ~ "\nvar top_ctx = nqp.top_context();\n"
        ~ $code<cuids>
        ~ self.decorate('main block',$code<rest>~';')
        ~ self.decorate('deserialize',nqp::defined($ast.sc) ?? self.deserialize($ast) !! self.setup_static_info())
        ~ $rest;
    }
    method fill_sc_code_ref_table(@code_ref_blocks) {
        my $*STATIC_CODE_REF := 1;
        my @blocks;
        for @code_ref_blocks {
            @blocks.push(self.compile_static_info($_,1));
        }
        self.decorate('set_code_refs',"nqp.set_code_refs(code_refs,[{nqp::join(',',@blocks)}]);\n")
    }
    method emit_with_setting($ast,$setting) {
        my $code := self.as_js_with_cuids($ast);
        self.strict~$code[0]~subst($setting,/'(1) /*CTXSAVE*/'/,$code[1]);
    }
}
