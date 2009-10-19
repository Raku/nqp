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

token prefix:sym<-> { $<sym>=['-']  <O('%symbolic_unary')> }
token prefix:sym<--> { $<sym>=['--'] <O('%autoincrement')> }

token postfix:sym<++> { $<sym>=['++'] <O('%autoincrement')> }

token circumfix:sym<( )> { '(' <EXPR> ')' }

token value {
    | <integer>
    | <quote_delimited>
}

proto token quote { <...> }
token quote:sym<' '> { <?[']>            <quote_EXPR: ':q'>  }
token quote:sym<" "> { <?["]>            <quote_EXPR: ':qq'> }
token quote:sym<q>   { 'q'  <![(]> <.ws> <quote_EXPR: ':q'>  }
token quote:sym<qq>  { 'qq' <![(]> <.ws> <quote_EXPR: ':qq'> }


