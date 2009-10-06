# Copyright (C) 2009, Patrick R. Michaud

grammar Regex::OPP {

    method EXPR() {
        my @termstack;
        my @opstack;
        my $termish := 'termish';
    
        my $cur := self.cursor_start;
        my &reduce := -> {
            my $op := pop @opstack;
            my $assoc := $op<assoc> // 'unary';
            if $assoc eq 'unary' {
                my $arg := @termstack.pop;
                $op.unshift($arg);
                if $arg.from < $op.from { # postfix
                    $op.from := $arg.from;  ## XXX
                    $op.REDUCE('POSTFIX');
                }
                else { # prefix
                    $op.pos := $arg.to;  ## XXX
                    $op.REDUCE('PREFIX');
                }
            }
            else { # infix
                my $right := @termstack.pop;
                my $left := @termstack.pop;
                $op.unshift($right);
                $op.unshift($left);
                $op.from := $left.from; ## XXX
                $op.pos  := $right.pos; ## XXX
                $op.REDUCE('INFIX');
            }
            @termstack.push($op);
            $op.hash.delete('PRE', 'POST');
        }
    
        TERM: loop {
            $here := $here.$termish;
            $termish := 'termish';
            my @PRE := $here.MATCH.delete('PRE');
            my @POST := $here.MATCH.delete('POST');
            while @PRE and @POST {
                if @POST[*-1]<prec> lt @PRE[0]<prec> {
                    @opstack.push(@POST.pop);
                }
                else {
                    @opstack.push(@PRE.pop);
                }
            }
            while @PRE { @opstack.push(@PRE.shift) }
            while @POST { @opstack.push(@POST.pop) }
            @termstack.push($here.MATCH<noun>)
    
            my $infix := $here.ws.infixish();
            unless $infix { last; }
            my $inprec := $infix<prec>;
            if $inprec le $preclim { last; }
            $here = $infix.ws();
            while @opstack[*-1]<O><prec> gt $inprec { &reduce(); }
            if @opstack[*-1]<O><prec> eq $inprec {
                my $assoc := $infix<prec>;
                if $assoc eq 'left' { &reduce() }
            }
            $termish := $infix<nextterm> if $infix<nextterm>;
            @opstack.push($infix);  # shift
        }
        &reduce() while @opstack;
        my $expr := @termstack.pop;
        $cur."!match_bind"($expr, 0)
        $cur.MATCHIFY('EXPR', :pos($expr.pos));
    }
    
    
    method O(%*attr) {
        my $cur := self.cursor_start;
        $cur.MATCH := %*attr;
        $cur.MATCHIFY();
        $cur;
    }
    
    proto token noun { <...> }
    proto token term { <...> }
    proto token circumfix { <...> }
    proto token prefix { <...> }
    proto token postfix { <...> }
    proto token postcircumfix { <...> }
    proto token infix { <...> }
    
    token termish {
        <PRE>*
        <noun>
        <POST>*
    }
    
    token PRE {
        <prefix>
    }
    
    token POST {
        | <postfix>
        | <postcircumfix>
    }
    
    token noun:term { <term> }
    token noun:circumfix { <circumfix> }
}
    
