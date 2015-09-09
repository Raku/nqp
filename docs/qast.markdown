# QAST Nodes

The "Q" Abstract Syntax Tree is a set of nodes used to represent the runtime
behavior of a program that is being compiled. Parsing a program with a grammar
produces a parse tree. As the name suggests, this is strongly tied to the
syntax of the language being parsed, and reflects the structure of the grammar.
This parse tree is mapped by action methods into an abstract syntax tree - a
tree of QAST nodes. Rather than talking about program syntax, they talk about
what happens at runtime: loops, conditionals, variable lookups, etc. This
document describes the available nodes and what they are for.

## QAST::CompUnit
While it's not mandatory, most QAST trees that are produced should have a
QAST::CompUnit at the top. It should have a single QAST::Block child. This
child block represents the outermost scope of the compilation unit.

QAST::CompUnit incorporates information that is relevant to the entire
unit of code that is being compiled. This includes:

* **hll** - the name of the high level language that this QAST tree was
  produced from, for example, "perl6", "tcl", "bf".

* **load** - code to evaluate at the point that the compilation unit is
  loaded as a module (but not if it is invoked as a mainline program).
  Happens after any deserialization and deserialization related actions
  have executed.
  
* **main** - like load, but instead this contains code to execute if the
  compilation unit is invoked as the mainline

Example usage:

    QAST::CompUnit.new(
        # Set the HLL.
        :hll('perl6'),
        
        # This variable contains the outermost QAST::Block of the
        # program.
        $top_block,
        
        # If we run the program as the mainline, then call the top
        # block automatically.
        :main(QAST::Op.new(
            :op('call'),
            QAST::BVal.new( :value($top_block) )
        ))
    )

Additional adverbs that can be set on a QAST:CompUnit relate to bounded
serialization, which will be covered separately.

## QAST::Block
A QAST::Block is both a unit of invocation and a unit of lexical scoping.
To clarify, this means that if:

* You want to create something that can be called, such as a subroutine,
  closure block or method
* You want a fresh lexical environment

Then you want to use a QAST::Block. A block can have as many children as
you wish, and the final child should evaluate to the return value of the
block. A simple example of a block is:

    QAST::Block.new(
        QAST::IVal.new( :value(42) )
    )

This will compile to a block of code that, when invoked, returns 42.

A block can be given a name and a compilation unit unique ID. The name
is user facing, and will appear in any automatically generated backtraces.
It does not need to be unique within the compilation unit. The compilation
unit unique ID, as the name suggests, does need to be. You typically do
not need to worry about it much, however; it will be generated for you the
first time it is needed, if you do not specify it up front. Often, you will
not need to worry about it at all. Here's a block with a name.

    QAST::Block.new(
        :name('answer'),
        QAST::IVal.new( :value(42) )
    )

Note that giving a block a name does not imply *any* installation of the
block under this name. It's not installed automatically for you as a
method or subroutine. That's for you to do.

Blocks can be placed within other blocks. This nesting represents the static
chain that will be used for the lookup of lexically scoped variables. When
you nest one block inside of another, you may wish for it to be invoked
automatically when it is encountered, or you may wish that it be treated as
an object (for example, which you can bind somewhere). You can configure this
by setting the blocktype:

    QAST::Block.new(
        QAST::Op.new(
            :op('say'),
            QAST::SVal.new( :value('before') )
        ),
        QAST::Block.new(
            :blocktype('immediate'),
            QAST::Op.new(
                :op('say'),
                QAST::SVal.new( :value('nested') )
            )
        ),
        QAST::Op.new(
            :op('say'),
            QAST::SVal.new( :value('after') )
        )
    )

Here, 'immediate' indicates that this block should be executed immediately,
whenever it is reached during program execution. The default, 'declaration',
does not have these semantics. You use it when you plan to bind the block,
for example into a lexical variable, or you are installing it elsewhere
(for example, as a method).

Block has one more handy feature: it can be used to maintain a symbol table.
It provides you with a hash per symbol (typically, these correspond to the
variables you declare in the block, but you can put whatever you want in it).

    $my_block.symbol('$foo', :scope('lexical'), :readonly(1));
    
The named parameters you pass are stored in a hash for the symbol '$foo'. If
you call it again:

    $my_block.symbol('$foo', :scope('local'), :optimized(1));

Then the updated value for 'scope' will be put in place, the new 'optimized'
value will be stored and the existing 'readonly' value will be left intact.
That is to say, you can safely add extra information over time. To get all
the known facts about a symbol in a hash, simply do:

    my %sym := $my_block.symbol('$foo');

Two keys have special significance to the QAST to VM compiler:

* **scope** is used to find a default scope for a variable, if none is
  set in a QAST::Var node that is doing a lookup

* **type** is used to know the type of the variable. This matters if the
  variable is natively typed, since it influences the code generation

## QAST::Stmts and QAST::Stmt
Often you will wish to execute a sequence of statements, one after the other. 
This is what QAST::Stmts is for. It simply contains a sequence of other QAST
nodes that will be executed in order. The QAST::Stmts node as a whole will
evaluate to the last statement. For example, you may have a program along the
lines of:

    if pints < 4 {
        say "MORE BEER!";
        pint = pint + 1;
    }

There are two statements inside of the if node. This probably compiles to
something like:

    QAST::Op.new(
        :op('if'),
        
        # Here comes the condition.
        QAST::Op.new(
            :op('lt_i'),
            QAST::Var.new( :name('pints') ),
            QAST::IVal.new( :value(4) )
        ),
        
        # We want to do multiple statements if the condition is true,
        # so wrap them in a QAST::Stmts.
        QAST::Stmts.new(
            QAST::Op.new(
                :op('say'),
                QAST::SVal.new( :value('MORE BEER!') )
            ),
            QAST::Op.new(
                :op('bind'),
                QAST::Var.new( :name('pints') ),
                QAST::Op.new(
                    :op('add_i'),
                    QAST::Var.new( :name('pints') ),
                    QAST::IVal.new( :value(1) )
                )
            )
        )
    )

Occasionally, you may want the overall sequence of statements to evaluate
to something other than the last child. In this case, use resultchild.

    QAST::Op.new(
        :op('say'),
        QAST::Stmts.new(
            :resultchild(0),
            QAST::SVal.new( :value('omg a kangaroo!!!') ),
            QAST::Op.new( :op('call'), :name('prepare_bbq') )
        )
    )

Here, the call to 'prepare_bbq' will be run, but the 'say' operation will
be given the SVal, not the result of the call. Essentially, resultchild is
the zero-based index of which child to use as the result of the QAST::Stmts
node overall.

There is a variant of QAST::Stmts, which is QAST::Stmt. While the first has
no impact on the allocation of temporaries, QAST::Stmt marks a register
allocation boundary; beyond it, any temporaries are free to be reused. You
do not need to use QAST::Stmt, but it can lead to better code generation if
used correct. Incorrect use can, of course, lead to incorrect code generation.
Like QAST::Stmts, it also can have multiple children and supports resultchild.

## QAST::IVal, QAST::NVal and QAST::SVal
Perhaps the simplest nodes in QAST, these represent literal, native values.
All of them expect the literal to be specified by setting value. QAST::IVal
represents an integer literal, QAST::NVal represents a numeric (floating
point) literal, and QAST::SVal represents a string literal.

    QAST::IVal.new( :value(42) )
    
    QAST::NVal.new( :value(3.14) )
    
    QAST::SVal.new( :value('keming') )

And that's about all there is to say about them. Simples!

## QAST::Op
This node captures the very general notion of "an operation". Operations range
from addition to method calls to exception handling. The operations themselves
are documented separately; the form of the node itself is pretty consistent,
however. The children are the operands for the operation. For example:

    QAST::Op.new(
        :op('mul_i'),
        QAST::IVal.new( :value(2) ),
        QAST::IVal.new( :value(21) )
    )

Represents an integer multiplication. Some operations also take a name, such
as callmethod:

    QAST::Op.new(
        # Call the method 'can_haz'...
        :op('callmethod'), :name('can_haz'),
        
        # ...on the object in $i...
        QAST::Var.new( :name('$i') ),
        
        # ...and pass a string argument, kthxbai.
        QAST::SVal.new( :value('cheezburger') )
    )

There are hundreds of operations, and QAST::Op nodes will be amongst the most
common in your trees. By the way, the nqp::op(...) syntax in the NQP language
is actually just sugar for a QAST::Op node. This means that any op you've used
when writing NQP code is now available to you when writing your compiler,
which is a nice bit of knowledge re-use. It's almost like we designed this
thing!

## QAST::Var
The QAST::Var node is used for declaring and lookup up variables. If you are
using QAST's handling of parameters, then a QAST::Var node is also used to
declare these. At its simplest, a QAST::Var node needs to specify the name of
the variable to look up.

    QAST::Var.new( :name('$bar') )

In this case, the symbol table of the enclosing blocks must supply a scope. A
variable can always be explicitly marked with its scope.

    QAST::Var.new( :name('$bar'), :scope('lexical') )

Variable declarations look similar:

    QAST::Var.new( :name('$bar'), :scope('lexical'), :decl('var') )

Note that the declaration for each variable should only show up once, and
all subsequent usages should not set decl. A declaration evaluates to the
variable itself, and can also be bound to.

    QAST::Op.new(
        :op('bind'),
        QAST::Var.new( :name('$x'), :scope('lexical'), :decl('var'), :returns(int) ),
        QAST::IVal.new( :value(0) )
    )

Note also that returns can be used to specify the type of the variable. It
is not needed in general, but is important for native types. Note that you
should supply a 6model type object for the type, not a string type name! It
is only used to determine the type of storage to allocate for the variable,
and type constraints besides those implied by the nature of the storage will
not be enforced.

Aside from lexicals, it is also possible to declare locals. These are not
visible from nested blocks. They are cheaper than lexicals as a result of
this, but naturally more restricted. A compiler may start out with everything
lexical and in an optimization phase turn some of those into locals if it can
prove that this will not be problematic for the execution of the program.
They look pretty much the same as lexicals otherwise.

    QAST::Op.new(
        :op('bind'),
        QAST::Var.new( :name('$nom'), :scope('local'), :decl('var'), :returns(str) ),
        QAST::SVal.new( :value('bacon') )
    )

While you can rely on any object variables being initialized to null for you,
there are no such promises for any of the native types. Thus if your language
promises that a fresh integer variable will start with 0, you should set it
(once again, possibly optimizing away that initialization if you can prove that
a user assignment renders it useless).

Parameters work in a similar way; just set decl to 'param' instead of 'var'.
For example, the following block takes two positional parameters.

    QAST::Block.new(
        QAST::Var.new( :name('$x'), :scope('lexical'), :decl('param') ),
        QAST::Var.new( :name('$y'), :scope('lexical'), :decl('param') ),
        ...
    )

Parameter declarations can also be given:

* :default(...) - a QAST tree that produces a default value for the parameter
  if it is not passed. This makes it optional.
* :slurpy(1) - specifies that the parameter is slurpy. Use :named(1) also for
  a named slurpy parameter.

Finally, there are a couple of other values of decl that work with lexicals.

* static - means that the lexical should be given the value specified in the
  :value(...) argument. Useful for things that wish to install symbols in the
  lexical scope with the intention they'll not be mutated (for example, a type
  declaration may be installed using this). No attempt is made to ensure you
  do not re-bind such a symbol, but do not do this; runtimes are free to turn
  lookups of static lexical symbols into direct references to the symbol.
* contvar - means that the lexical should be initialized to a clone of the
  :value(...) argument. Presumably, this represents some kind of container
  type. There are no restrictions on re-binding.
* statevar - same as for contvar, except the container created will be used
  for all given closure clones. To be clear, cloning a code ref doesn't bring
  state variables along. On the initial call, containers are formed in the way
  that contvar forms them: by cloning the :value(...) argument.

## QAST::VarWithFallback

In the context of a bind, or with native types, this is exactly the same as a
QAST::Var. For fetches of object types, if a null is produced, the QAST tree
in :fallback(...) will be run and the value that it evaluates to produced
instead.

## QAST::BVal
A QAST::Block can only appear once in the QAST tree. So what if you want to
refer to a block from elsewhere? The answer is to use a QAST::BVal.

    QAST::BVal.new( :value($some_block) )

The $some_block should be a QAST::Block. Note that this only works if the
block is in the same compilation unit as the one where the BVal is used
(though it's hard to think of a typical situation where you'd end up trying
to do anything else).

## QAST::WVal
This node, known as a World Value, references an object that lives in a
serialization context. It may be associated with the current compilation
unit or some other compilation unit. QAST::WVal is typically used to talk
about objects that you create to represent declarative elements of your
program. For example, if the program declares a class, you would create an
object describing that type as you compile the program, and then use a
QAST::WVal to refer to the type from the compiled program code.

Usage looks like:

    QAST::WVal.new( :value($the_object) )

While obscure at first, QAST::WVal is an extremely powerful tool. Much in
NQP and even more in the Rakudo Perl 6 compiler hangs of the notion of
bounded serialization and a World that builds up a model of the declarative
aspects of a program.

## QAST::Want
QAST::Want nodes will appear in the QAST tree whenever you emit a value, but
don't yet know in what context it will be used, like 123.

Each sub-node of the Want provides a value for one context out of int, str,
num, object and void. When a context is known, the last of the matching
sub-nodes will be used, or the first one if none match. In the case of 123,
it may be a boxed integer or a native integer value

This notion of context is very code-generation centric, so a want-value of 123
would not create a sub-node for string context, or else

    my str $x = 123;

would work without complaining.

##QAST::ParamTypeCheck

Used by rakudo to generate code to multidispatch or
enforce signatures at runtime.

For example C<sub f(Mu:D) { ... }> leads to the generation of
the following code where C<$name> is the name of the checked variable.
Probably the first because the binder does a check too. That would be
redundant.

    $var.push(QAST::ParamTypeCheck.new(QAST::Op.new(
        :op('isconcrete'),
         QAST::Var.new( :name($name), :scope('local') )
    )));



## QAST::VM
