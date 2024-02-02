# Dispatchers available in NQP on MoarVM

Recommended reading to understand what dispatchers are and why they exist:
- [Towards a new general dispatch mechanism in MoarVM](https://6guts.wordpress.com/2021/03/15/towards-a-new-general-dispatch-mechanism-in-moarvm/)
- [Raku multiple dispatch with the new MoarVM dispatcher](https://6guts.wordpress.com/2021/04/15/raku-multiple-dispatch-with-the-new-moarvm-dispatcher/)
- [The new MoarVM dispatch mechanism is here!](https://6guts.wordpress.com/2021/09/29/the-new-moarvm-dispatch-mechanism-is-here/)

## MoarVM

Dispatchers provided by MoarVM.

These are documented at https://github.com/rakudo/rakudo/blob/main/docs/dispatchers.md .

---

## NQP

These dispatcher are provided by the NQP bootstrap.

---

### nqp-call
```
nqp::dispatch('nqp-call', &callee, …);
```
Call the given &callee with the rest of the arguments.

### nqp-find-meth
```
nqp::dispatch('nqp-find-meth', $invocant, str $name, int $throw-exception);
```
Produce the method object for the given method $name on the decontainerized
$invocant, indicating whether or not to $throw-exception.

### nqp-hllize
```
nqp::dispatch('nqp-hllize', $object);
```
Make sure that the given object can function inside NQP.

### nqp-intify
```
nqp::dispatch('nqp-intify', $value);
```
Create a signed integer representation of the given value.

### nqp-isinvokable
```
nqp::dispatch('nqp-isinvokable', $object);
```
Return 1 if given object is directly invokable, else 0.

### nqp-istype
```
nqp::dispatch('nqp-istype', $object, $type);
```
Return 1 if the given $object matches the $type, else 0.

### nqp-meth-call
```
nqp::dispatch('nqp-meth-call', $invocant, str $name, …);
```
Dispatch the given method $name on the decontainerized $invocant with
the given additional arguments,

### nqp-numify
```
nqp::dispatch('nqp-numify', $value);
```
Create a num (floating point) representation of the given value.

### nqp-stringify
```
nqp::dispatch('nqp-stringify', $value);
```
Create string representation of the given value.

### nqp-uintify
```
nqp::dispatch('nqp-uintify', $value);
```
Create an unsigned integer representation of the given value.
