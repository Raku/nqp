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

## QAST::IVal, QAST::NVal and QAST::SVal

## QAST::Var

## QAST::Op

## QAST::VarWithFallback

## QAST::BVal

## QAST::WVal

## QAST::Want

## QAST::VM
