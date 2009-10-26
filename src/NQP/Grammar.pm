grammar NQP::Grammar is HLL::Grammar;

token TOP { <comp_unit> }

token comp_unit { 
    <.newpad>
    <statementlist> 
    [ $ || <.panic: 'Confused'> ] 
}

rule statementlist {
    | $
    | [<statement><.eat_terminator> ]*
}

token statement {
    <!before <[\])}]> | $ >
    [
    | <statement_control>
    | <EXPR>
    ]
}

token eat_terminator {
    | ';'
    | <?MARKED('endstmt')>
    | <?terminator>
    | $
}

token xblock {
    <EXPR> <.ws> <pblock>
}

token pblock {
    <?[{]> 
    <.newpad>
    <blockoid>
}

token blockoid {
    <.finishpad>
    '{' ~ '}' <statementlist>
    [ \h* $$ <.ws> <?MARKER('endstmt')> ]?
}

token newpad { <?> }
token finishpad { <?> }

proto token terminator { <...> }

token terminator:sym<;> { <?[;]> }
token terminator:sym<}> { <?[}]> }

## Statement control

proto token statement_control { <...> }

token statement_control:sym<if> {
    <sym> :s
    <xblock>
    [ 'elsif'\s <xblock> ]*
    [ 'else'\s <else=pblock> ]?
}

token statement_control:sym<unless> {
    <sym> :s
    <xblock>
    [ <!before 'else'> || <.panic: 'unless does not take "else", please rewrite using "if"'> ]
}

## Terms

token noun:sym<variable>         { <variable> }
token noun:sym<scope_declarator> { <scope_declarator> }

token variable {
    <sigil> <twigil>? <desigilname=ident>
}

token sigil { <[$@%&]> }

token twigil { <[*]> }

proto token scope_declarator { <...> }
token scope_declarator:sym<my>  { <sym> <scoped> }
token scope_declarator:sym<our> { <sym> <scoped> }

rule scoped {
    | <variable_declarator>
}

token variable_declarator { <variable> }

proto token term { <...> }

token term:sym<identifier> {
    <identifier=ident> <args>
}

token args {
    | '(' <arglist> ')'
}

token arglist {
    <.ws> 
    [ 
    | <EXPR>
    | <?>
    ]
}


token term:sym<value> { <value> }

token value {
    | <integer>
    | <quote>
}

proto token quote { <...> }
token quote:sym<apos> { <?[']>            <quote_EXPR: ':q'>  }
token quote:sym<dblq> { <?["]>            <quote_EXPR: ':qq'> }
token quote:sym<q>    { 'q'  <![(]> <.ws> <quote_EXPR: ':q'>  }
token quote:sym<qq>   { 'qq' <![(]> <.ws> <quote_EXPR: ':qq'> }
token quote:sym<Q>    { 'Q'  <![(]> <.ws> <quote_EXPR> }

token circumfix:sym<( )> { '(' <EXPR> ')' }
token circumfix:sym<ang> { <?[<]>  <quote_EXPR: ':q', ':w'>  }
token circumfix:sym<{ }> { <?[{]> <pblock> }

## Operators

token nulltermish { 
    | <OPER=noun=noun> 
    | <?>
}

token postcircumfix:sym<[ ]> { 
    '[' <EXPR> ']' 
    <O('%methodop')>
}

token prefix:sym<-->  { <sym>  <O('%autoincrement')> }
token postfix:sym<++> { <sym>  <O('%autoincrement')> }

token infix:sym<**>   { <sym>  <O('%exponentiation, :pirop<pow>')> }

token prefix:sym<->   { <sym>  <O('%symbolic_unary')> }
token prefix:sym<?>   { <sym>  <O('%symbolic_unary, :pirop<istrue>')> }
token prefix:sym<!>   { <sym>  <O('%symbolic_unary, :pirop<isfalse>')> }

token infix:sym<*>    { <sym>  <O('%multiplicative, :pirop<mul>')> }
token infix:sym</>    { <sym>  <O('%multiplicative, :pirop<div>')> }
token infix:sym<%>    { <sym>  <O('%multiplicative, :pirop<mod>')> }

token infix:sym<+>    { <sym>  <O('%additive, :pirop<add>')> }
token infix:sym<->    { <sym>  <O('%additive, :pirop<sub>')> }

token infix:sym<~>    { <sym>  <O('%concatenation , :pirop<concat>')> }

token infix:sym<:=>   { <sym>  <O('%assignment, :pasttype<bind>')> }

token infix:sym<,>    { <sym>  <O('%comma')> }
