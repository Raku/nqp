grammar NQP::Grammar is HLL::Grammar;

token TOP { <EXPR> }

proto token term { <...> }
token term:sym<value> { <value> }

token value {
    | <integer>
    | <quote_delimited>
}

proto token quote { <...> }
token quote:sym<' '> { <?[']>            <quote_EXPR: ':q'>  }
token quote:sym<" "> { <?["]>            <quote_EXPR: ':qq'> }
token quote:sym<q>   { 'q'  <![(]> <.ws> <quote_EXPR: ':q'>  }
token quote:sym<qq>  { 'qq' <![(]> <.ws> <quote_EXPR: ':qq'> }


