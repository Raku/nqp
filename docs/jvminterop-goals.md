=head1 Introduction

This infodump describes aspects of the most desirable interface for Java interop functionality in Rakudo, based on experience with CLR interop functionality in Niecza.  No aspects of implementation I<per se> are discussed. 

=head1 Unsolved questions

Mainly, "should wrapper types be invariant or covariant?".  A wrapper of type C<Subclass> is not necessarily substitutable for a wrapper of type C<Superclass>, because the subclass may have added methods which cause an ambiguous overload (in the CLR we have the additional issue of shadowing, but that doesn't apply here).  Invariant wrappers (all wrappers are assignable to C<JavaObject> and C<Any>) are the safer option, but covariant wrappers (reflecting the Java type DAG) would be more convenient in some cases.  I did covariant wrappers for Niecza and was not quite happy with the associated traps; I'd like to see if invariant wrappers can be made to work.

=head1 General object features

We'd probably like fields to be reflected as rw methods, returning C<Proxy> objects that handle get and set.  (This works well in Niecza).

Methods, including C<new> aka C<< <init> >>, should be bundled by short name and then turned into overload-resolving sets.  This can be done either by creating a composite method that implements Java overload rules, or by building a Perl 6 multi-dispatcher that wraps a set of methods.  Using a multi-dispatcher would probably require covariant wrappers.

Java objects should be made to implement core Perl 6 roles whenever reasonable.  C<MethodHandle>s and single-method interfaces (including the new single-method interfaces being added to Java 1.8 for use with lambdas) should function as Callable with a C<< postcircumfix:<( )> >>.  Arrays and objects assignable to C<java.util.List> should present a C<Positional> interface.  Objects assignable to C<java.util.Map> should present an C<Associative> interface.  C<java.util.Iterable> things should probably be iterable, somehow.

It may additionally be useful to provide semantics for C<java.util.Collection> and C<java.util.Set>, but that's I<probably> overkill.

It shall be possible to throw and catch Java exceptions as Perl 6 exceptions.  (The current implementation is limited such that you can throw OR catch Java exceptions - a thrown Java exception is treated as a direct control operator to the innermost callback, and cannot be caught by Perl 6 exception handlers until it propagates to a callout point.)

Since a C<java.lang.ClassLoader> is effectively the root of a class namespace, it shall be possible to obtain a PsuedoStash-like object for a class loader which can be used to fetch type objects representing the classes defined in it.  Each such PsuedoStash holds a class loader and a package prefix; fetches attempt a lookup and return a concatenated stash, along with either a type or some kind of C<Uninstantiatable> thing.

=head1 Marshal-in (boxing) rules

Most objects should box as C<JavaObject>s.  In order for the interface to be most generally usable, it must be possible to get the exact same Java object out of the box - boxings that lose object identity are probably unacceptable.  Primitive types have no such restriction and should be translated into Perl 6 types freely.  C<BootJavaObject> already translates all primitives that correspond to 6model types in the obvious way, additionally C<char> is returned as a one-character C<str> and C<boolean> is mapped to an C<int> of 0 or 1.  The former is probably correct for Perl 6, but the latter should be overridden to be C<True> or C<False>.

It is acceptable to map reference types in cases where the Perl 6 object wraps the corresponding type, so it can be recovered identically from the box.  This is the case for C<java.lang.String> / C<Str> and C<java.math.BigInteger> / C<Int>, and of course C<SixModelObject>.

=head1 Marshal-out (unboxing / coercion) rules

In all cases it is acceptable to pass a JavaObject wrapper to code which expects a reference type.  The type of the wrapper is ignored, except possibly for overload resolution.  Primitive types and naturally-boxed types, including C<SixModelObject>, are marshaled out in the obvious way.

It may be useful to provide special handling for functions which take an argument of type C<ThreadContext> or C<GlobalContext>; note that C<BootJavaInterop> specially allows passing C<nqp::null()> in such cases with an interpretation of "current".  Alternatively mechanisms can be provided in the library for retrieving the current context objects.

Wherever an Iterator or Iterable is needed, it shall be acceptable to pass an iterable Perl 6 object; a wrapper Iterable shall be constructed which iterates the underlying Perl 6 object.

Wherever a List is needed, it shall be acceptable to pass any Perl 6 object that does Positional.  Note that implementing the List interface faithfully requires C<splice> and C<elems> in addition to C<at_pos>, while C<exists> and C<delete> are not used.

Wherever a Map is needed, it shall be acceptable to pass any Perl 6 object that does Associative.

Wherever any non-collection interface type is needed, it shall be acceptable to pass a hash mapping string method names to code references, which results in the creation of a proxy class (as per C<BootJavaInterop.proxy>).  If the interface has a single method, passing a single code reference is acceptable.  Collection interfaces must be proxied explicitly, to avoid ambiguity with the (presumably more common) case where the programmer wishes to treat a hash as a collection itself.

=head1 Access

It is inevitable that some general utilities not tied to a specific class will be needed.  A setting module (C<JavaUtils::foo>) is probably the sanest way to approach this.

Access to the class hierarchy is bootstrapped through a special symbol in the setting which is bound to a psuedo stash representing the combination of the NQP class loader (the class loader through which C<nqp-runtime.jar>, C<rakudo-runtime.jar>, and (through delegation) C<rt.jar> are visible) and the empty package prefix.  Since the NQP class loader itself cannot and should not be serialized, it will probably be necessary to represent this in a special way, for instance by allowing a null class loader to represent the NQP class loader.  (Note that this is inconsistent with the usual behavior of Java core methods to treat a null class loader as a reference to the bootstrap class loader.  That might be a problem.)

C<use> can be wired up to bind class and package symbols into the current scope.  Additionally we can support adverbs which trigger dynamic loading of jars.