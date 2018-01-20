# Overview

## What is 6model?
6model is a framework for building implementations of object
oriented features. It does not contain an implementation of
classes, interfaces, roles, prototype objects and so forth.
Instead, it provides you with a set of building blocks that
enable you to build these kinds of features as your language
needs them. To make an analogy with another part of the
compiler toolkit, we don't provide a full grammar for your
language, but do provide a grammar engine, quote parser,
operator precedence parser and other helpful building blocks
to get you started.

## 6model Workflow
In general, when you want to implement the object system for
your language using 6model, you will go through the following
workflow.

1. Identify the kinds of object oriented types your language
   has and that you will need to implement. For example, in
   Perl 6 we have - amongst other things - classes, roles and
   enumerations. In Java, you'd have classes and interfaces.
   In JavaScript, you have prototype objects.

2. For each of them, pick a suitable in-memory representation.
   6model provides some of these out of the box. In a language
   where you know all of the attributes an object will have
   "up-front", you can pick a representation that will just
   allocate a single piece of memory for an object and map
   each attribute to a slot. In a language where you can get
   attributes coming to exist at any point and an object is
   just like a hash table or dictionary, you can pick a
   representation where your object works just like a hash.

3. Having picked a representation - which will control how
   your objects are allocated and store/fetch attributes -
   you now implement meta-objects for each kind of object
   oriented type in your language. A meta-object is simply
   an object that responds to different events that occur
   in the life of a type. For example, at declaration time
   we create a new type, add methods, add a parent type (e.g.
   inheritance), add attributes and so forth. Later on we
   may locate methods, do dynamic type checks (e.g. is-a).
   Implementing a meta-object just involves writing a method
   for to handle each of these "events".

4. Compile the language's type declarations to calls on the
   meta-object.

Thus it's the meta-object that decides how most aspects of a
type work: whether it can accept having more than one parent
(if it does at all), how it dispatches methods (if it does at
all) and so forth. However, certain aspects are handled by the
representation: allocation of an object, storage of attributes
and boxing/unboxing. In some VMs the representation also needs
to interact with the GC.

Essentially, meta-object + representation = full implementation
of some kind of object oriented type (e.g. a class). Usually,
you will just pick an existing representation and implement the
meta-object yourself. Notice this means that you can factor
your implementation of OO features using OO principles.

## Representations
Representations are low-level things that are closely tied to
the underlying VM. They do expose a common API over all of them,
however. The following operations are available on representations.

* **type_object_for** takes a meta-object and creates a type
  object that represents the association of the provided
  meta-object and this representation. What you do with the type
  object depends on your language. You could see it as an
  "instantiation handle" - you use it in order to create an
  instance of an object with the given meta-object/representation
  pairing.

* **instance_of** does exactly what it says - creates a new
  instance. You can supply it with the type object OR with any
  existing instance, it doesn't matter. Note that this really does
  just allocate space in memory for the object; it's not any kind of
  "high level" instantiation where attributes get pre-populated with
  empty containers.

* **defined** basically tells you if the thing you have is a type
  object or an actual instance. For many languages you'll not need
  this. It may come in useful in some languages to distinguish static
  and instance method dispatch.

* **get_attribute** looks up an attribute. It expects to give back an
  object of some kind. There are variants for native types:
  **get_attribute_int**, **get_attribute_num** and **get_attribute_str**.
  All of them expect the object to access the attribute of. You may also
  pass one or all of an attribute name, a class handle (for when
  attributes are not keyed just one name) and an index for when it's
  possible to access an attribute by an offset rather than just by name.
  What's needed varies by representation.
  
* **bind_attribute** and its native friends are basically what you'd
  expect, and look largely like get_attribute apart from they take
  something to store in the attribute rather than doing a lookup.

* **hint_for** takes an attribute name and optional a class handle
  and will hand back - if available - an offset that can also be used
  to look up the attribute. Interesting in gradual or static typing
  scenarios.

* 6model representations may provide direct support for boxing and
  unboxing native types. This is exposed through [set|get]_[int|num|str]
  operations. Details vary by representation.

## Meta-objects
A meta-object is simply an object that says how another object works.
Critically, it's __just an object__. It may have attributes and it
will certainly have methods. Like any other object, it also has a
meta-object that says how it works. You may be tempted to start
categorising objects into "normal objects" versus "meta-objects",
but it's important to understand that 6model makes no distinction.
A meta-object isn't any kind of special object, it's just an object
that happens to be serving a particular role.

Meta-objects contain methods that relate to certain events in the
lifetime of a type. Let's imagine we have a really simple language
where we can declare some kind of type that has methods, make
instances of it and call the methods (granted, the instances are a
bit useless until we add attributes). We could write (in NQP) the
following.

    class SimpleMetaObject {
        has %!methods;
        
        method new_type() {
            my $meta-object := self.new();
            return nqp::newtype($meta-object, 'HashAttrStore');
        }
        
        method add_method($type, $name, $code) {
            %!methods{$name} := $code;
        }
        
        method find_method($type, $name) {
            %!methods{$name}
        }
    }
    
Notice how this meta-object is just written as a normal class. Of
course, the class itself has a meta-object saying how it works - it's
meta-objects all the way down. The next thing to note is that we just
used a hash in order to implement our method store. Creating a new
type and adding a method are just methods that we include.

Here's how we can use the meta-object to define a new type, and add
a method.

    # Create a new type.
    my $type := SimpleMetaObject.new();

    # Add a method.
    $type.HOW.add_method($type, 'drink', -> $self {
        say("mmmm...Starobrno!")
    });

The .HOW macro in NQP maps to the gethow opcode and it is used to
get hold of the meta-object. We just pass a simple lambda expression in
to add_method in order to specify what happens when the method is called.
Finally, we can make an instance and call the method.
    
    # Make an instance.
    my $obj := nqp::create($type);

    # Call the method.
    $obj.drink();

Notice that we didn't ever call our find_method method ourselves. In
fact, this is the only place so far where 6model has actually given us
any kind of restriction on how our meta-object should look; the names of
add_method and new_type are conventions. Under the hood, 6model has gone
and used the find_method method on the meta-object when we did a method
call on the object.

A question you may be left with is why the convention to take the type
object as the first parameter in all of the methods of the meta-object.
This isn't needed when doing something more "class based", but is
important in a more prototype-OO-ish setting.

## Performance
So far we have seen that one would tend to implement things like method
dispatch and type checking by writing methods in the meta-object. This
may feel a little heavyweight for an operation that is very common, and
indeed it is. 6model thus provides you with the possibility to publish
some "caches" that expose views of certain aspects of the meta-object in
a more low-level way to the VM. Thus it is able to perform some frequent
opertaions much more quickly. Of note, it is possible to publish:

* A name to method cache, which is useful for dispatching
  methods by name. This is useful in most dynamic languages,
  and means that method dispatch can just be looking in a
  hash table. Generally this presents a flat view, with the
  methods from any parent types included so there is no
  walking required at runtime.

* A v-table, which you can also thing of as an index to
  method cache. This is useful in static or gradually typed
  languages, where a method call can be mapped to looking for
  the method in a certain slot. Since this boils down to a
  (machine-level) array lookup, it's fast.

* A type check cache. This is useful for doing fast type
  checks. It contains references to other types that the
  current one could be considered as "doing"/"being". Thus
  it is useful for is-a and does-a operations. The current
  6model implementation has it being scanned linearly. This
  is a low-level loop over a low-level array, so it should be
  pretty fast, however.

The word "cache" is chosen very deliberately. It's important
that the meta-object knows that it is responsible for the
updating of any of the extra views of itself that it chooses
to publish. Put another way, in 6model the meta-object itself
is always the authoritative source.
