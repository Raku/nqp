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
### nqp-find-meth
### nqp-find-meth-mega-name
### nqp-find-meth-mega-type
### nqp-hllize
### nqp-intify
```
nqp::dispatch('nqp-intify', $value);
```
Create a signed integer representation of the given value.

### nqp-isinvokable
### nqp-istype
### nqp-meth-call
### nqp-meth-call-mega-name
### nqp-meth-call-mega-type
### nqp-multi
### nqp-multi-core
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

