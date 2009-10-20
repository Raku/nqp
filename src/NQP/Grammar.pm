grammar NQP::Grammar is HLL::Grammar;

token TOP { <EXPR> }

proto token term { <...> }
token term:sym<value> { <value> }

proto token infix { <...> }
token infix:sym<**> { $<sym>=['**'] <O('%exponentiation, :pirop<pow>')> }
token infix:sym<*>  { $<sym>=['*']  <O('%multiplicative, :pirop<mul>')> }
token infix:sym</>  { $<sym>=['/']  <O('%multiplicative, :pirop<div>')> }
token infix:sym<%>  { $<sym>=['%']  <O('%multiplicative, :pirop<mod>')> }
token infix:sym<+>  { $<sym>=['+']  <O('%additive      , :pirop<add>')> }
token infix:sym<->  { $<sym>=['-']  <O('%additive      , :pirop<sub>')> }
token infix:sym<=>  { $<sym>=['=']  <O('%assignment')> }
token infix:sym<~>  { $<sym>=['~']  <O('%concatenation')> }
token infix:sym<,>  { $<sym>=[',']  <O('%comma')> }

token prefix:sym<-> { $<sym>=['-']  <O('%symbolic_unary')> }
token prefix:sym<--> { $<sym>=['--'] <O('%autoincrement')> }

token postfix:sym<++> { $<sym>=['++'] <O('%autoincrement')> }

token circumfix:sym<( )> { '(' <EXPR> ')' }
token circumfix:sym<ang> { <?[<]>  <quote_EXPR: ':q', ':w'>  }

token postcircumfix:sym<[ ]> { 
    '[' <EXPR> ']' 
    <O('%methodop')>
}

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

token nulltermish { 
    | <OPER=noun=noun> 
    | <?>
}
