# REPR Compose Protocol

In 6model, representations take responsibility for memory layout, while a
meta-object is responsible for other aspects of type-ness (dispatch, type
checking, etc.) Typically, meta-objects are at some point "composed" - that
is, they reach a point where the definition of the type they represent is
either closed or complete in some sense. Certain representations need to be
(or in some cases, may be) configured. For example, a representation that does
efficient storage of an object's attributes needs configuring with information
about the things it should store. This configuration happens through the REPR
composition protocol. The meta-object uses the nqp::composetype primitive in
order to do this.

The protocol is defined entirely in terms of arrays and hashes. Why? So we
don't have to define a particularly complex object system in order to define
an object system. :-) At the top level, a hash is always passed. Its keys
indicate the configuration for a specific part of the protocol, the values
are a data structure providing the appropriate information.

The rest of this documentation describes these protocols; each heading is a
key that can appear in the top level hash, and what's below it indicates what
should fall beneath those keys.

## attribute

The value is an array with one element for each entry in the MRO, from most
derived to least derived. Each element is in turn an array, consisting of 3
elements:

* The type object of the type at this point in the MRO
* An array of hashes, each hash describing an attribute
* The immediate parents, if any, of the type object in question

The hash describing an individual attribute must have the following keys:

* name - provides the name of the attribute

It may optionally have these keys:

* type - type object specifying the type of the attribute. Note that this is
  used purely for the purpose of allocation. It is NOT up to the REPR to do
  type checks. Anything without this is assumed to be a reference type. In
  fact, anything that's a reference type is uninteresting in terms of this
  key since it just gets a reference to another object. It's native types or
  other compact things that can be flattened into the object body that are
  interesting.
  
* box_target - if this key is present, then this type is a target for boxing
  or unboxing.
  
* auto_viv_container - if this key is present then an access to an attribute
  that is uninitialized will cause that attribute to be set to a clone of the
  value under this key. If the value is a type object, the clone will not take
  place, since cloning a type object is meaningless.

* positional_delegate - if this key is present, the given (reference type)
  attribute will be delegated to if the positional part of the REPR API is
  used with the object. This is primarily to support languages that need to
  reasonably efficiently provide positional things that can also be mixed
  in to in arbitrary ways.
  
* associative_delegate - the same as positional_delegate, for the associative
  part of the REPR API.

## integer

A hash that may have the following keys:

* bits - the number of bits. Which sizes are supported are up to the REPR.

* unsigned - if this key exists, then the stored value is unsigned.

## float

A hash that may have the following keys:

* bits - the number of bits. Which sizes are supported are up to the REPR.

## array

A hash that may have the following keys:

* type - the type of the array attributes. While all reference types are
  equivalent, native types will be inlined, leading to a compact array. A REPR
  is free to decide what types it supports, and just because it is asked to be
  an array of 1-bit ints in no way obligates it to use a bit of storage for
  each element. Again, this is just about layout and lookup, not about type
  checking.

* dimensions - the number of dimensions an array of this type supports. A
  given REPR may be restricted to only support a single dimensions.

## hash

A hash that may have the following keys:

* valuetype - the type of the hash value. As with arrays, it's up to the REPR
  how or if it handles native types. Just about layout.

* keytype - the type of the hash key. REPRs are likely to be restrictive here,
  since they need to understand the representation of the provided key well
  enough to hash it. This will probably mean strings and whatever REPR ObjAt
  in Perl 6 (or some other language's variant) has.

## nativeref

A hash that must have the following two keys:

* type - the native type that is being referenced. Must have a storage spec
  that claims to be a native int/num/str.

* refkind - the kind of reference, specified as a string. Must be one of
  'attribute', 'positional', or 'lexical'.
