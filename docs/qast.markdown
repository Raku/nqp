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

## QAST::VarWithFallback

## QAST::BVal

## QAST::WVal

## QAST::Want

## QAST::VM
