# NQP Built-in Subs List

The following subroutines are available to use in ```nqp``` programs.
They are described in ```nqp/src/core``` modules.

# From ```nqp/src/core/Regex.nqp```

## match
* `match($text, $regex, :$global?)`

Match ```$text``` against ```$regex```.  If the ```$global``` flag is
given, then return an array of all non-overlapping matches.

## subst
* `subst($text, $regex, $replacement, :$global?)`

Substitute a match of ```$regex``` in ```$text``` with ```$replacement```,
returning the substituted string.  If ```$global``` is given, then
perform the replacement on all matches of ```$text```.
