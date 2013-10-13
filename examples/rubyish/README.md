nqp-rubyish
===========

Ruby subset extended from the `rubyish-4` example, as introduced in the Edument
[Rakudo and NQP internals course](https://github.com/edumentab/rakudo-and-nqp-internals-course).

Example usage:
```
    % nqp rubyish.nqp -e'puts "Hello World!"'
    % nqp rubyish.nqp rubyish-examples/green-bottles.rbi
    % nqp rubyish.nqp  # repl mode
    > puts 37 + 5
```
Features:
- simple strings 'Hello World!' %q{...}
- interpolating strings: "number #{37+5}" %Q{Hello #{planet}!}
- quoted words: `%w[aa bb cc]` 
- scoping, including $globals, @class_instance and @@package variables
- conditional blocks: if ... then ... elsif ... else ... endif
- begin .. end blocks
- nqp opcode calls
- a few built-ins: abort, print, puts, sleep
- infixish assigments: += -= *= ...
- very simple classes and objects with attributes. no inheritence yet
- while and until loops
- statement modifiers `if` `unless`, `while`,  `until` e.g.: `puts 42 if `
- basic arrays and hashes
- for loops on arrays: `for val in [10,20,30] do puts val end`
- for loops on hash keys: `h = {'a'=>10, 'b'=>20}; for k in h do puts h{k} end`
- lightweight eRuby like templating, see [green-bottles.rbi](rubyish-examples/green-bottles.rbi)

Notes:

To run tests:
```
    % prove -v -e'nqp rubyish.nqp' t
```

Expressions are Perlish rather than Rubyish:

- `+` always does addition (doesn't concatenate strings)
- `~` has been introduced as the concatenation operator
- `>`, `==`, `<=` ... only do arithmetic comparisons
- `gt`, `eq`, `le` ... do string comparisions
- 0, '0', ''  are false in a boolean context.
- hash dereferencing is via angle braces: `price = fruit<apples>` or
curly brackets `puts fruit{'bannanas'}`

- nqp op-codes can be called like regular functions. E.g.
```
    puts nqp::if(2+2 == 4, 'yup', 'nope' )
```
- this includes nqp control-flow functions:
```
    n = 99
    nqp::while n > 0, begin
        puts "#{n} green bottles standing on the wall"
        puts "#{n} green bottles standing on the wall"
        puts "and if one green bottle should accidently fall..."
        nqp::sleep 1
        n -= 1
        puts "there'd be #{n} green bottles standing on the wall"
        nqp::sleep 2
    end
```
There's some context sensitive parsing to distinguish functions and
expressions, E.g.
```
   yy = 37
   puts yy -5   # parsed as an expression; output is 32

   def xx(n) ; 37 - n; end
   puts xx -5   # parsed as a method call; output is 42
```

