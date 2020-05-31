# FAQ
This document tries to collect various frequently asked questions
about 6model and provides answers to them.

## My language has objects but no methods; is 6model a bad fit?
Not really. You are not forced to implement methods in the
meta-object to handle add_method or find_method, and of course your
meta-object would thus have no storage allocated for a method table.
The only wastage is that you have no usage for the method cache
and v-table slots in the s-table. That means that per type (not
per object instance) you'd have a couple of wasted slots, each a
pointer in size. Thus on a 32-bit machine, 100 classes/types later,
you've still yet to "waste" a kilobyte.

## What is a type object, and how should I use it?
When you pair a meta-class and a representation together, an s-table
is created along with a type object. The type-object becomes your
"handle" to that pairing, and can be used to create instances of
the object. In some languages (Raku), you would also install the
type object into the namespace (package or lexpad), as the user's
view of the type. However, that is not at all needed.

For a prototype-based language, you probably only ever make one
type object. You can just stash it somewhere and use it whenever
you need to create a new instance. If new instances are always just
clones anyway, then you needn't even keep hold of it, just install
the initial instance you create wherever it should go and then it
can be cloned from there on in.

For a class based language, you'll always need to have *some* way
of identifying a class to make an instance of. The type object is
your handle for creating an instance. You may make a lookup table
of the type objects and map instantiations of types through that
table. If you install a "class object" of some kind and it is what
manages the instantiation then you could have it holding the handle.
How you handle it is really very dependent on how your language
exposes object creation.
