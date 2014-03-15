class NQP::Optimizer {
    has @!block_stack;
    has %!adverbs;
    has $!no_grasp_on_lexicals;

    method optimize($ast, *%adverbs) {
        %!adverbs := %adverbs;
        @!block_stack := [$ast[0]];
        self.visit_children($ast);
        $ast;
    }

    method visit_block($block, :$is_for?) {
        @!block_stack.push($block);
        my @defined_var_names := nqp::list_s();

        my $has_definitions := 0;
        my $can_transform := 1;
        my $scared_off_by_twigils;

        # if we already know this is not a block we can turn into a Stmt, or if
        # we're looking at the second argument to a for op, we can bail out
        # a bit earlier.
        if ($block.blocktype ne 'immediate' && $block.blocktype ne 'immediate_static') || $is_for {
            $can_transform := 0;
        }

        my %usages;
        # Push all the lexically declared variables into our shallow vars hash.
        # Currently we limit ourselves to natives, because they are guaranteed
        # not to have some weird setup that we have to be careful about.
        if (nqp::istype($block[0], QAST::Stmts)
            || nqp::istype($block[1], QAST::Stmts) && nqp::istype($block[0], QAST::Var) && $block[0].decl eq 'param')
            && !($!no_grasp_on_lexicals) {

            my $stmts := $block[0];
            if nqp::istype($stmts, QAST::Var) {
                $stmts := $block[1];
            }
            my int $idx := 0;
            #say("THE BLOCK:::::::::::::::::::::::::::::::::::::::::::::::");
            #say($block.dump);
            #say(":::::::::::::::::::::::::::::::::::::::::::::::THE BLOCK");
            while $idx < +@($stmts) {
                my $var := $stmts[$idx];
                if nqp::istype($var, QAST::Op) && $var.op eq 'bind' {
                    # variables are initialised on the spot in nqp.
                    $var := $var[0]
                }
                if nqp::istype($var, QAST::Var) && $var.scope eq 'lexical' {
                    if $var.decl eq 'var' || $var.decl eq 'param' {
                        # also make sure we don't turn dynamic vars into locals
                        my $twigil := nqp::substr($var.name, 1, 1);
                        my $sigil := nqp::substr($var.name, 0, 1);
                        if $twigil eq '?' {
                            $scared_off_by_twigils := 1
                        }
                        if $sigil eq '$'  && $twigil ne '*' && $twigil ne '?'
                                && $var.name ne '$_' && $var.name ne '$/' && $var.name ne '$!' && $var.name ne '$¢' {

                            nqp::push_s(@defined_var_names, $var.name);
                            %usages{$var.name} := nqp::list($var);
                        }
                    }
                }
                $has_definitions++;
                $idx := $idx + 1;
            }
        }
        self.visit_children($block);

        # when we reach this spot, we're near the leaf nodes first, so we
        # can now cascade var-searching outwards and perhaps inline our
        # block. That way, when the next outer block reaches this piece of
        # code, the inner block will already have been inlined and it can
        # properly look for vars again.

        my $do_transform := 0;
        my %filter := nqp::hash();
        if $has_definitions > 0 && !$scared_off_by_twigils {
            for @defined_var_names {
                %filter{$_} := 1
            }
            if self.collect_vars($block[1], 1, %filter, %usages) {
                $do_transform := 1;
            }
        } elsif $has_definitions == 0 && $can_transform {
            $do_transform := 1
        }

        my $succ := 0;
        if !($!no_grasp_on_lexicals) || +@!block_stack == 1 {
            for %usages {
                my $name := $_.key;
                say("usage of $name");
                if %filter{$name} == 1 {
                    my $first_char := nqp::findcclass(nqp::const::CCLASS_WORD, $name, 0, 4);
                    my $last_valid := nqp::index($name, '-', $first_char);
                    my $newname;
                    if $last_valid == -1 {
                        $newname := $block.unique('ltol_' ~ nqp::substr($name, $first_char) ~ +@!block_stack);
                    } else {
                        $newname := $block.unique('ltol_' ~ nqp::substr($name, $first_char, $last_valid - $first_char) ~ +@!block_stack);
                    }
                    my @usages := $_.value;
                    #say("found " ~ +@usages ~ " usages for $name");
                    for @usages -> $var {
                        #say($var.scope ~ ": " ~ $var.name ~ " <- old");
                        $var.scope('local');
                        $var.name($newname);
                        #if $var.decl eq 'var' {
                            #$var.decl('static');
                        #}
                    }
                    $succ++;
                    say("turned $name into a local ($newname), yippie");
                }
            }
        }
        #if $succ {
            #say($block.dump);
        #}

        say("$succ is succ, $has_definitions is has_definitions.");
        say($block.dump);
        say("----");
        if $do_transform && $succ == $has_definitions && +@!block_stack > 1 {
            my $newblock := QAST::Stmt.new();
            for @($block) {
                $newblock.push($_);
            }
            $block := $newblock;
            say("turned a block into an stmt!");
        }

        @!block_stack.pop();

        $block;
    }

    # the filter tells us, in which lexicals we're interested,
    # the antifilter handles shadowed variables
    # it will return 1 if none of the filtered variables have been found in
    # nested blocks, 0 otherwise. It will short-circuit.
    my $EMPTY_LIST := nqp::list();
    method collect_vars($node, $depth, %filter, %usages, %antifilter = nqp::hash()) {
        my %new-antifilter := %antifilter;
        if nqp::istype($node, QAST::Node) {
            if nqp::istype($node, QAST::Block) {
                $depth++;
                %new-antifilter := nqp::clone(%antifilter);
                if nqp::istype($node[0], QAST::Stmts) {
                    for @($node[0]) -> $var {
                        if nqp::istype($var, QAST::Op) && $var.op eq 'bind' {
                            $var := $var[0];
                        }
                        if nqp::istype($var, QAST::Var) {
                            %new-antifilter{$var.name} := 1;
                        }
                    }
               }
            } elsif nqp::istype($node, QAST::Regex) {
                $depth++;
            } elsif nqp::istype($node, QAST::Var) {
                if $node.scope eq 'lexical' && nqp::existskey(%filter, $node.name) {
                    if !nqp::existskey(%antifilter, $node.name) {
                        %filter{$node.name} := $depth if $depth > %filter{$node.name};
                        if $depth > 1 {
                            %usages{$node.name} := $EMPTY_LIST;
                        } else {
                            if !nqp::existskey(%usages, $node.name) {
                                %usages{$node.name} := nqp::list();
                            }
                            nqp::push(%usages{$node.name}, $node);
                        }
                    }
                }
            }

            for @($node) {
                self.collect_vars($_, $depth, %filter, %usages, %new-antifilter);
            }
        }
    }

    method lexical_depth($name) {
        my int $i := +@!block_stack;
        while $i > 0 {
            $i := $i - 1;
            my $block := @!block_stack[$i];
            my %sym := $block.symbol($name);
            if +%sym {
                return $i;
            }
        }
        -1
    }

    method find_lex($name) {
        my int $d := self.lexical_depth($name);
        if $d >= 0 {
            my $block := @!block_stack[$d];
            my %sym := $block.symbol($name);
            %sym;
        } else {
            NQPMu;
        }
    }

    my %opt_n_i := nqp::hash('add', 1, 'sub', 1, 'mul', 1, 'iseq', 1, 'isne', 1,
                             'islt', 1, 'isle', 1, 'isgt', 1, 'isge', 1, 'cmp', 1);
    method visit_op($op) {
        # Handle op needs special handling.
        # for op needs to ensure the second arg to it doesn't get
        # transformed into a Stmt.
        my str $opname := $op.op;
        if $opname eq 'handle' {
            return self.visit_handle($op);
        } elsif $opname eq 'for' {
            self.visit_children($op, :skip_for(1));
        } else {
            # Visit children first.
            self.visit_children($op);
        }

        # Consider numeric ops we can simplify.
        my $typeinfo := nqp::chars($opname) > 2
            ?? nqp::substr($opname, nqp::chars($opname) - 2, 2)
            !! "";
        my int $und := nqp::index($opname, '_');
        my str $asm := $und > 0 ?? nqp::substr($opname, 0, $und) !! '';
        if $typeinfo eq '_n' && nqp::existskey(%opt_n_i, $asm) {
            self.num_to_int($op, $asm);
        }
        
        # Calls to fixed names that are compile-time known can be simplified.
        elsif $opname eq 'call' && $op.name {
            my %sym := self.find_lex($op.name);
            if !(%sym =:= NQPMu) {
                if %sym<declared> {
                    # It's known at compile time, and so fixed, so we can do a more
                    # optimal call.
                    $op.op('callstatic');
                }
            }
            else {
                # XXX Can detect missing subs at CHECK-time by doing some kind of
                # error reporting in this branch.
            }
        }
        
        # Enrich various ops with int/num/str annotations.
        elsif $typeinfo eq '_i' {
            $op.returns(int);
        } elsif $typeinfo eq '_s' {
            $op.returns(str);
        } elsif $opname eq 'numify' {
            # if we can establish that the argument is a list, we are good
            # to claim it returns an int.
            if nqp::istype($op[0], QAST::Var) {
                my $sigil := nqp::substr($op[0].name, 0, 1);
                if $sigil eq '@' || $sigil eq '%' {
                    $op.returns(int)
                }
            }
        }

        #/[cur|ctx][get|set]?[lex[pad]?][dyn|caller|rel]*['_'[i|n|s]]?/;
        #if NQPCursor.parse($op.op, /[cur|ctx][get|set]?[lex[pad]?][dyn|caller|rel]*['_'[i|n|s]]?/, :c(0)) {
        if nqp::index($op.op, "lex") >= 0 ||
           nqp::index($op.op, "dyn") >= 0 ||
           nqp::index($op.op, "ctx") >= 0 {
            if $op.op ne 'lexotic' {
                $!no_grasp_on_lexicals := 1;
                #say("no hope for turning lex -> local: " ~ $op.op);
            }
        }

        $op;
    }

    method visit_var($var) {
        if nqp::istype($var, QAST::VarWithFallback) {
            self.visit_children($var);
        }

        $var;
    }
    
    method num_to_int($op, $asm) {
        sub returns_int($node) {
            if nqp::objprimspec($node.returns) == 1 {
                return 1
            }
            if nqp::istype($node, QAST::Op) {
                my $typeinfo := nqp::chars($node.op) >= 2
                                ?? nqp::substr($node.op, nqp::chars($node.op) - 2, 2)
                                !! "";
                if $typeinfo eq "_i" {
                    return 1
                } elsif $node.op eq 'chars' || $node.op eq 'ord' || $node.op eq 'elems' {
                    return 1
                }
            } elsif nqp::istype($node, QAST::IVal) {
                return 1
            } elsif nqp::istype($node, QAST::Var) && $node.scope eq 'lexical' {
                my %sym := self.find_lex($node.name);
                if !(%sym =:= NQPMu) && nqp::existskey(%sym, 'type') && nqp::objprimspec(%sym<type>) == 1 {
                    return 1
                }
            }
            return 0;
        }

        if returns_int($op[0]) && returns_int($op[1]) {
            my $newopn := $asm ~ "_i";
            $op.op($newopn);
            $op.returns(int);
        } else {
            $op.returns(num);
        }
    }

    method visit_handle($handle) {
        self.visit_children($handle, :skip_selectors);
        $handle;
    }

    method visit_children($node, :$skip_selectors, :$skip_for=-1) {
        my int $i := 0;
        unless nqp::isstr($node) {
            while $i < +@($node) {
                unless $skip_selectors && $i % 2 {
                    my $visit := $node[$i];
                    if nqp::istype($visit, QAST::Op) {
                        $node[$i] := self.visit_op($visit)
                    } elsif nqp::istype($visit, QAST::Block) {
                        if $skip_for == $i {
                            $node[$i] := self.visit_block($visit, :is_for(1))
                        } else {
                            $node[$i] := self.visit_block($visit)
                        }
                    } elsif nqp::istype($visit, QAST::Var) {
                        $node[$i] := self.visit_var($visit);
                    } elsif nqp::istype($visit, QAST::Want) {
                        self.visit_children($visit, :skip_selectors)
                    } elsif nqp::istype($visit, QAST::Regex) {
                        QRegex::Optimizer.new().optimize($visit, @!block_stack[+@!block_stack - 1], |%!adverbs);
                    } else {
                        self.visit_children($visit);
                    }
                }
                $i := $i + 1;
            }
        }
    }

    method find_sym($name) {
        my %sym := self.find_lex($name);
        if !(%sym =:= NQPMu) && nqp::existskey(%sym, 'value') {
            return %sym<value>;
        }
        else {
            nqp::die("No compile-time value for $name");
        }
    }
}
