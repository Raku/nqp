use NQPP6QRegex;

class NQP::Optimizer {
    # Variable declarations and usages within a block.
    my class BlockVars {
        # Hash mapping variable names declared in the block to the QAST::Var
        # of its declaration.
        has %!decls;

        # Usages of variables in this block, or unioned in from an inlined
        # immediate block.
        has %!usages_flat;

        # Usages of variables in this block, or unioned in from a non-inlined
        # immediate block or a declaration block.
        has %!usages_inner;

        # If lowering is, for some reason, poisoned.
        has $!poisoned;

        method add_decl($var) {
            if $var.scope eq 'lexical' {
                %!decls{$var.name} := $var;
            }
        }

        method add_usage($var) {
            if $var.scope eq 'lexical' {
                my $name   := $var.name;
                my @usages := %!usages_flat{$name};
                unless @usages {
                    @usages := [];
                    %!usages_flat{$name} := @usages;
                }
                nqp::push(@usages, $var);
            }
        }

        method poison_lowering() { $!poisoned := 1; }

        method get_decls() { %!decls }

        method get_usages_flat() { %!usages_flat }

        method get_usages_inner() { %!usages_inner }

        method is_flattenable() {
            for %!decls {
                return 0 if $_.value.scope eq 'lexical';
                return 0 if $_.value.decl eq 'param';
            }
            1
        }

        method incorporate_inner($vars_info, $flattened) {
            # We'll exclude anything that the inner or flattened thing has as
            # a declaration, since those are its own.
            my %decls := $vars_info.get_decls;

            # Inner ones always go into our inners set.
            add_to_set(%!usages_inner, $vars_info.get_usages_inner, %decls);

            # Flat ones depend on if we flattened this block into ourself.
            add_to_set($flattened ?? %!usages_flat !! %!usages_inner,
                $vars_info.get_usages_flat, %decls);

            sub add_to_set(%set, %to_add, %exclude) {
                for %to_add {
                    my $name := $_.key;
                    next if nqp::existskey(%exclude, $name);
                    my @existing := %set{$name};
                    if @existing {
                        for $_.value { nqp::push(@existing, $_) }
                        #nqp::splice(@existing, $_.value, 0, 0);
                    }
                    else {
                        %set{$name} := $_.value;
                    }
                }
            }
        }

        method lexicals_to_locals() {
            return 0 if $!poisoned;
            for %!decls {
                # We're looking for lexical var or param decls.
                my $qast := $_.value;
                my str $scope := $qast.scope;
                next unless $scope eq 'lexical';
                my str $decl := $qast.decl;
                next unless $decl eq 'param' || $decl eq 'var';

                # Consider name. Can't lower if it's used by any nested blocks.
                my str $name := $_.key;
                unless nqp::existskey(%!usages_inner, $name) {
                    # Lowerable if it's a normal variable.
                    next if nqp::chars($name) < 2;
                    if $name ne 'self' && $name ne '$/' && $name ne '$_' {
                        my str $sigil := nqp::substr($name, 0, 1);
                        next unless $sigil eq '$' || $sigil eq '@' || $sigil eq '%';
                        next unless nqp::iscclass(nqp::const::CCLASS_ALPHABETIC, $name, 1);
                    }

                    # Seems good; lower it.
                    my $new_name := $qast.unique('__lowered_lex');
                    $qast.scope('local');
                    $qast.name($new_name);
                    if %!usages_flat{$name} {
                        for %!usages_flat{$name} {
                            $_.scope('local');
                            $_.name($new_name);
                        }
                    }
                }
            }
        }
    }

    has @!block_stack;
    has @!block_var_stack;
    has %!adverbs;

    method optimize($ast, *%adverbs) {
        %!adverbs := %adverbs;
        @!block_stack := [$ast[0]];
        @!block_var_stack := [BlockVars.new];
        self.visit_children($ast);
        $ast;
    }

    method visit_block($block) {
        # Push block and a new block vars tracking block.
        @!block_stack.push($block);
        @!block_var_stack.push(BlockVars.new);

        # Visit all children, which includes nested blocks.
        self.visit_children($block);

        # Methods with late-bound names poison lowering.
        if nqp::substr($block.name, 0, 12) eq '!!LATENAME!!' {
            self.poison_lowering();
        }

        # Pop the block and the vars info.
        @!block_stack.pop();
        my $vars_info := @!block_var_stack.pop();

        # Lower any declarations we can.
        $vars_info.lexicals_to_locals();

        # If the block has no lexical declarations remaining, and it was an
        # immediate block, then flatten it in.
        my int $flattened := 0;
        if $block.blocktype eq 'immediate' || $block.blocktype eq 'immediate_static' {
            if $vars_info.is_flattenable {
                my @innards := $block.list;
                $block := QAST::Stmts.new( |@innards );
                $flattened := 1;
            }
        }

        # Incorporate this block's info into outer block's info.
        @!block_var_stack[nqp::elems(@!block_var_stack) - 1].incorporate_inner($vars_info, $flattened);

        $block;
    }

    my %opt_n_i := nqp::hash('add', 1, 'sub', 1, 'mul', 1, 'mod', 1, 'neg', 1, 'abs', 1, 'iseq', 1, 'isne', 1,
                             'islt', 1, 'isle', 1, 'isgt', 1, 'isge', 1, 'cmp', 1);

    my %op_poisons_lowering := nqp::hash('ctx', 1, 'curlexpad', 1, 'takedispatcher', 1, 'getlexouter', 1);

    method visit_op($op) {
        # Handle op needs special handling.
        my str $opname := $op.op;
        if $opname eq 'handle' {
            return self.visit_handle($op);
        }

        # A for loop may be something we can simplify.
        if $opname eq 'for' {
            my $handled := 0;
            my $orig := $op[1].blocktype;
            if $op[1].arity == 1 && $orig eq 'immediate' {
                # Find the iteration parameter.
                my $stmts := $op[1][0];
                my int $i := 0;
                my int $n := nqp::elems($stmts);
                my $itvar;
                while $i < $n {
                    my $item := $stmts[$i];
                    if nqp::istype($item, QAST::Var) && $item.decl eq 'param' {
                        $itvar := $item;
                        last;
                    }
                    $i++;
                }

                # Provided we found it, turn it from param to decl, so it will
                # not prevent inlining. Then visit the children.
                if $itvar {
                    $itvar.decl('var');
                    self.visit_children($op);
                    if nqp::istype($op[1], QAST::Stmts) {
                        # Inlined. Replace iteration var declaration with a lookup of itself.
                        $stmts[$i] := QAST::Var.new( :name($itvar.name), :scope($itvar.scope) );

                        # Produce a while loop that iterates.
                        my $it_name := QAST::Node.unique('lowered_for_it_');
                        return QAST::Stmts.new(
                            QAST::Op.new(
                                :op('bind'),
                                QAST::Var.new( :name($it_name), :scope('local'), :decl('var') ),
                                QAST::Op.new(
                                    :op('iterator'),
                                    $op[0]
                                )
                            ),
                            QAST::Op.new(
                                :op('while'),
                                QAST::Var.new( :name($it_name), :scope('local') ),
                                QAST::Stmts.new(
                                    QAST::Op.new(
                                        :op('bind'),
                                        $itvar,
                                        QAST::Op.new(
                                            :op('shift'),
                                            QAST::Var.new( :name($it_name), :scope('local') )
                                        )),
                                    $op[1]
                                )));
                    }
                    else {
                        # Restore parameter nature of the thing; no inline happened.
                        $itvar.decl('param');
                    }
                    $handled := 1;
                }
            }
            unless $handled {
                $op[1].blocktype('declaration');
                self.visit_children($op);
                $op[1].blocktype($orig);
            }
        }
        else {
            self.visit_children($op);
        }

        # nqp::ctx and nqp::curlexpad capture the current context and so poisons lowering
        if %op_poisons_lowering{$opname} {
            self.poison_lowering();
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
            my @sym := self.find_lex_scope_level($op.name);
            if @sym {
                if (@sym[0]<declared> || nqp::existskey(@sym[0], 'value')) && @sym[1] <= 1 {
                    # It's known at compile time and not closure-ish, so we can
                    # use a more optimal call op.
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
        }
        if $opname eq 'numify' {
            # if we can establish that the argument is a list, we are good
            # to claim it returns an int.
            if nqp::istype($op[0], QAST::Var) {
                my $sigil := nqp::substr($op[0].name, 0, 1);
                if $sigil eq '@' || $sigil eq '%' {
                    $op.returns(int)
                }
            }
        }

        $op;
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
                if nqp::existskey(%sym, 'type') && nqp::objprimspec(%sym<type>) == 1 {
                    return 1
                }
            }
            return 0;
        }

        if returns_int($op[0]) && (nqp::elems($op) == 1 || returns_int($op[1])) {
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

    method visit_var($var) {
        my str $scope := $var.scope;
        if $scope eq 'attribute' || $scope eq 'positional' || $scope eq 'associative' {
            self.visit_children($var);
        } else {
            my int $top := nqp::elems(@!block_var_stack) - 1;
            my $decl    := $var.decl;
            if $decl {
                @!block_var_stack[$top].add_decl($var);
                if $decl eq 'param' && $var.default -> $default {
                    my $stmts_def := QAST::Stmts.new( $default );
                    self.visit_children($stmts_def);
                    $var.default($stmts_def[0]);
                }
            }
            else {
                @!block_var_stack[$top].add_usage($var);
            }
        }
    }

    method visit_children($node, :$skip_selectors) {
        my int $i := 0;
        unless nqp::isstr($node) || !nqp::defined($node) {
            while $i < +@($node) {
                unless $skip_selectors && $i % 2 {
                    my $visit := $node[$i];
                    if nqp::istype($visit, QAST::Op) {
                        $node[$i] := self.visit_op($visit)
                    } elsif nqp::istype($visit, QAST::Var) {
                        self.visit_var($visit);
                    } elsif nqp::istype($visit, QAST::Block) {
                        $node[$i] := self.visit_block($visit)
                    } elsif nqp::istype($visit, QAST::Want) {
                        self.visit_children($visit, :skip_selectors)
                    } elsif nqp::istype($visit, QAST::Regex) {
                        QRegex::Optimizer.new().optimize($visit,
                            @!block_stack[+@!block_stack - 1],
                            :main_lang_optimizer(sub ($node) {
                                if nqp::istype($node, QAST::Regex) {
                                    if $node.rxtype eq 'subrule' {
                                        # Visit subrule args.
                                        if nqp::istype($node[0], QAST::Node) {
                                            self.visit_children($node[0]);
                                            return $node;
                                        }
                                    }
                                    elsif $node.rxtype eq 'qastnode' {
                                        # QAST node, and probably with statements.
                                        my $child := $node[0];
                                        if nqp::istype($child, QAST::Stmts) ||
                                                nqp::istype($child, QAST::Stmt) {
                                            self.visit_children($child);
                                            return $node;
                                        }
                                    }
                                }

                                # If we reach here, unknown. Poison.
                                self.poison_lowering();
                                return $node;
                            }),
                            |%!adverbs);
                    } else {
                        self.visit_children($visit);
                    }
                }
                $i := $i + 1;
            }
        }
    }

    method find_lex($name) {
        my int $i := +@!block_stack;
        while $i > 0 {
            $i := $i - 1;
            my %sym := @!block_stack[$i].symbol($name);
            if +%sym {
                return %sym;
            }
        }
        NQPMu;
    }

    method find_lex_scope_level($name) {
        my int $i := +@!block_stack;
        while $i > 0 {
            $i := $i - 1;
            my %sym := @!block_stack[$i].symbol($name);
            if +%sym {
                return [%sym, $i];
            }
        }
        NQPMu;
    }

    method find_sym($name) {
        my %sym := self.find_lex($name);
        if nqp::ishash(%sym) && nqp::existskey(%sym, 'value') {
            %sym<value>;
        }
        elsif nqp::ishash(%sym) && nqp::existskey(%sym, 'lazy_value_from') {
            %sym<value> := nqp::atkey(nqp::atkey(%sym, 'lazy_value_from'), $name)
        }
        else {
            nqp::die("No compile-time value for $name");
        }
    }

    method poison_lowering() {
        for @!block_var_stack {
            $_.poison_lowering();
        }
    }
}
