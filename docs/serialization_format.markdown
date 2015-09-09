# Serialization Format

## Header
The header contains a version, followed by offsets (from the start of the
data blob) where various tables can be located.

    +---------------------------------------------------------+
    | Version                                                 |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset (from start of data) of the dependencies table   |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Number of entries in the dependencies table             |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset (from start of data) of the STables table        |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Number of entries in the STables table                  |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset (from start of data) of the STables data         |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset (from start of data) of the objects table        |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Number of entries in the objects table                  |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset (from start of data) of the objects data         |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset (from start of data) of the closures table       |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Number of entries in the closures table                 |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset (from start of data) of the contexts table       |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Number of entries in the contexts table                 |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset (from start of data) of the contexts data        |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset (from start of data) of the repossessions table  |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Number of entries in the repossessions table            |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset (from start of data) of the parameterization     |
    | interns data                                            |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Number of entries in the parameterization intern data   |
    |    32-bit integer                                       |
    +---------------------------------------------------------+

## Dependencies Table
This table describes the Serialization Contexts (SC) that are required to
already be loaded in order to load this one. The number of entries this table
has, is supplied by the header. Each entry looks as follows.

    +---------------------------------------------------------+
    | Index into the string heap of the SC unique ID          |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Index into the string heap of the SC description        |
    |    32-bit integer                                       |
    +---------------------------------------------------------+

## STables Table
This table describes the 6model STables that have been serialized. Each entry
contains the following items.

    +---------------------------------------------------------+
    | Index into the string heap a string holding the name of |
    | the representation (REPR) that this STable points to.   |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset from the start of the STable data chunk where    |
    | the data for this STable has been serialized            |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset from the start of the STable data chunk where    |
    | the REPR data for this STable has been serialized (you  |
    | can get there by reading everything from the previous   |
    | offset, but it may not be efficient if you want to get  |
    | an idea of the object size first)                       |
    |    32-bit integer                                       |
    +---------------------------------------------------------+

## STables Data
The STable is serialized just by a sequence of primitives, in the
following order.

* HOW (object reference)
* WHAT (object reference)
* WHO (variant)
* method_cache (VM hash)
* vtable_length (native int)
* \[each of the items\] (variant)
* type_check_cache_length (native int)
* \[each of the items in type_check_cache\] (object reference)
* mode_flags (native int)   
* boolification_spec (native int flag for if it exists; if true, then a native int
  for the mode and a ref for the method slot)
* container_spec (native int flag for if it exists; if true, then ref/string/int for
  the attribute and ref for the fetch method)
* invocation_spec (native int flag for if it exists; if true, then ref for class handle,
  str for attr name, int for hint and ref for invocation handler)

After this, the REPR data is serialized (which is specific to the REPR in question).

## Objects Table
This table describes the objects that have been serialized. Each entry
contains the following items.

    +---------------------------------------------------------+
    | Base-1 index of the SC that contains the STable for the |
    | context, or 0 if it is in the current SC.               |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Index in the SC where the STable can be located.        |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset from the start of the object data chunk where    |
    | the data for this object has been serialized            |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Flags. Currently, just 1 if it's a normal object and 0  |
    | if it is a type object.                                 |
    |    32-bit integer                                       |
    +---------------------------------------------------------+

The exact data stored for an object is up to its representation.

## Closures Table
This table describes the closures we have taken during compilation and
that need to be re-instated during deserialization, along with
references to their relevant outer contexts.

    +---------------------------------------------------------+
    | Base-1 index of the SC that contains the static code    |
    | reference that this closure is a clone of, or 0 if it   |
    | is in the current SC.                                   |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Index in that SC where the static code ref is located.  |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | 1-based index into the contexts table where the outer   |
    | context for this closure can be found, or zero if there |
    | is none of interest                                     |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Flag for if the closure has an associated code object.  |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | If it has one, this is the 1-based SC index of the code |
    | object, or 0 if in the current SC.                      |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | If it has one, this is the index in that SC where the   |
    | code object can be located.                             |
    |    32-bit integer                                       |
    +---------------------------------------------------------+

## Contexts Table
This table describes the contexts that exist as outer scopes for
closures taking during compilation.

    +---------------------------------------------------------+
    | Base-1 index of the SC for the code ref the context is  |
    | associated with, or 0 if it is in the current SC.       |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Index in that SC where the code ref is located.         |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Offset into the contexts data segment where the values  |
    | for the various lexical entries may be found            |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | 1-based index into the contexts table where the next    |
    | outer context in the chain can be found, or zero if     |
    | there is none                                           |
    |    32-bit integer                                       |
    +---------------------------------------------------------+

## Repossessions Table
This table describes the objects serialized in this SC that were
originally owned by another SC, but were taken over by this one
due to being modified while it was being compiled.

    +---------------------------------------------------------+
    | Repossessed entity type (0 = object, 1 = STable)        |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Index in our object list where the repossessed object   |
    | is located                                              |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Base-1 index of the SC that used to own the object (0   |
    | is not legal here)                                      |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Index in that SC where the original object is located.  |
    |    32-bit integer                                       |
    +---------------------------------------------------------+

## Parameterization Interning Data
Parameterized types are interned in a VM instance, meaning that if we
deserialize two compilation units that have both serialized identical
parameterizations, we will allow the first unit's parameterization to
"win". The data in this section of the serialization blob identifies
types whose STables and type objects are subject to this interning.

This section exclusively contains entries meeting the following rules:

* The parametric type must be from another SC
* All the parameters must be objects from another SC

Each entry starts as follows:

    +---------------------------------------------------------+
    | Base-1 index of the SC that owns the parametric type    |
    | (this is the type that was parameterized to get the one |
    | we're dealing with the interning of). A value of 0 is   |
    | invalid, as that would imply the current SC.            |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Index in that SC where the parametric type's type       |
    | object can be found                                     |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Index in our object list where the type object we may   |
    | intern is located.                                      |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | Index in our STable list where the STable we may intern |
    | is located.                                             |
    |    32-bit integer                                       |
    +---------------------------------------------------------+
    | The number of parameters in this parameterization       |
    |    32-bit integer                                       |
    +---------------------------------------------------------+

Following this, for each parameter an object reference is written.

## Primitives
This section describes how the various primitive types known to the
serializer are stored.

### Native Integers
These are stored as 64-bit integers.

### Native Numbers
These are stored as 64-bit floating point numbers (doubles).

### Strings
These are stored as 32-bit indexes into the strings heap.

### Variant Reference
Most times we have a pointer to serialize, we will use a variant
reference to do so. The reason being that 

    1 = NULL
    2 = Object reference
    3 = VM NULL
    4 = VM Boxed Integer
    5 = VM Boxed Number
    6 = VM Boxed String
    7 = VM Array of Variant References
    8 = VM Array of Strings
    9 = VM Array of Integers
    10 = VM Hash of Variant References with String Keys
    11 = VM Static Code Reference
    12 = VM Cloned Code Reference (a serialized closure)

### Object references
These are stored as a 32-bit SC index (base 1 into the dependencies
table, or 0 for current SC), followed by a 32-bit index into the
selected SC.

### VM NULL
We store no extra info for those.
    
### VM Array of Variants
These are stored as an element count as a 32-bit integer, followed by the variants.

### VM Array of Strings
These are stored as an element count, followed by the string heap indexes.

### VM Array of Integers
These are stored as an element count, followed by the 64-bit integers.

### VM Hash of Variants with String Keys
These are stored as an element count. This is followed by that number of
string/variant pairs.

### Code References
These are always serialized as the SC containing the code reference, plus
the index where it can be located.

### VM Static Code Reference
The simplest case of code referenced from objects is when the VM has never
had to invoke the code during compilation. In this case, the thunk for the
dynamic compilation will have been tagged with a STATIC_CODE_REF property
and placed into the SC for the current compilation unit. When we encounter
such a case, we simply serialize the SC that owns the code object and the
code ref index that it is at.

Deserialization relies on the deserializer being given a fixed up list of
code objects, pointing to the compiled code refs. These are indexed just as
the dynamic compilation stubs were, so references to them can be resolved.
This also works out in the cross-context case.

### Dynamic Compilation
When dynamic compilation is performed, the SC should be updated with the
code ref to the now-compiled code. Additionally, this needs to be tagged
as a static code reference (and will also be tagged with the SC in question).
In the simplest case, we'll never end up referencing this execution of the
code - but if closures are taken pointing to it, this will happen, and needs
some special handling.

### Closures
If we encounter a code object that is not marked as static, but already has been
given an SC, then we can simply write the reference out in just the same way as
we would for a static code object. This means something has already taken care of
the hard work. They are deserializable in a similar way.

The interesting part comes when we encounter a code ref that hasn't been tagged with
an SC yet. First, we trace back from it to the correct static code ref (probably via
the reference back to the static code ref that's held in the static lexical scope info).
We make an entry in the closures table indicating the static code ref that needs to
be cloned in order to start recreating the closure.

Next, we consider the outer. There are two things involved here. One is the context,
which represents the lexicals declared in that context. The second is the code object
that is associated with the outer. There are some options for this.

1) The outer points to a dynamic compilation boundary (tagged DYN_COMP_BOUNDARY).
   This means that it is a "fake" frame that exists because the outer scopes beyond
   here were not done compiling at the point of invocation. We thus don't want to
   actually do any serialization of this context.

2) The outer points to no interesting outer whatsoever, and represents the point that
   we should stop doing any serialization. It will be tagged UNIT_BOUNDARY.

3) The outer points to a context with lexicals values that need to be serialized. In
   this case, it may be an invocation from the static code reference, or it may be an
   invocation from another closure.
