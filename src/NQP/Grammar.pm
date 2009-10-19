grammar NQP::Grammar is HLL::Grammar;

token TOP { <value> }

token value {
    | <integer>
    | <quote_delimited>
}

