# NQP Built-in Subs List

The following subroutines are available to use in `nqp` programs.
They are described in `nqp/src/core` modules.

# From `nqp/src/core/Regex.nqp`

## match
* `match($text, $regex, :$global? --> @array)`

Match `$text` against `$regex`.  If the `$global` flag is
given, then return an array of all non-overlapping matches.

## subst
* `subst($text, $regex, $replacement, :$global? --> str)`

Substitute a match of `$regex` in `$text` with `$replacement`,
returning the substituted string.  If `$global` is given, then
perform the replacement on all matches of `$text`.

# From `nqp/src/core/IO.nqp`

## open
* `open($filename, :$r, :$w, :$a, :$bin, :$enc, :$chomp --> $filehandle)`

Open file `$filename`. Options:
+ :w - open for writing
+ :r - open for reading (default)
+ :a - open for appending
+ :bin - open in binary  mode
+ :enc - define encoding (default: `utf8`)
+ :chomp - strip ending newlines (default: true)

## close
* `close($fh)`

Close the file attached to file handle `$fh`.

## slurp
* `slurp($filename --> str)`

Returns the contents of `$filename` as a single string.

## spurt
* `spurt($filename, $contents)`

Write the string value of `$contents` to `$filename`.

## say
* `say($string)`

Write `$string` to `stdout` with a newline added.

## note
* `note($string)`

Write `$string` to `stderr` with a newline added.

## join
* `join($delim, @array --> str)`

Returns a string formed by joining each element of `@array`
with the `$delim`.

## print
* `print($string)`

Write `$string` to `stdout`.

## stdin
* `stdin(--> $filehandle)`

Returns a file handle to `stdin`.

## stdout
* `stdout(--> $filehandle)`

Returns a file handle to `stdout`.

## stderr
* `stderr(--> $filehandle)`

Returns a file handle to `stderr`.

# File handle (fh) methods

Some methods available on the file handle (fh) returned from `open`.
Other methods available of lesser interest not documented below are:
+ flush
+ seek
+ set-encoding
+ set-nl-in
+ slurp
+ t
+ tell
+ wrap

## fh.get
* `$fh.get()`

Reads a line from the file attached to file handle `$fh`.

## fh.print
* `$fh.print($string)`

Write `$string` to the file attached to file handle `$fh`.
An ending newline is not added.

## fh.say
* `$fh.say($string)`

Write `$string` to the file attached to file handle `$fh`.
An ending newline is added.

## fh.close
* `$fh.close()`

Close the file attached to file handle `$fh`.

## fh.readchars
* `$fh.readchars($nchars)`

Read `$nchars` characters from file handle `$fh`.

## fh.eof
* `$fh.eof`

Returns true if end-of-file has been reached on file handle `$fh`.

# From `nqp/src/core/testing.nqp`

## plan
* `plan($quantity --> str)`

## ok
* `ok($condition, $descrip?)`

## is
* `is($got, $expected, $desc?)`

## todo
* `todo($reason, $count)`

## skip
* `skip($desc, $count=1)`

## bug-workaround
* `bug-workaround($code)`

If `$code` dies, returns the error message.

## dies-ok
* `dies-ok($code, $description, :$message)`

## run-command
* `run-command($command, :$stdout, :$stderr --> @array)`

Returns an array of two elements, one for each stream, with element 1
being output from `stdout` (file descriptor 1) and 2 being output from
`stderr` (fd 2).

Both `stdout` and `stderr` output are always captured, but only the
desired stream(s) is(are) returned in the array.  The element for a
stream will be the empty string if it wasn't requested.
