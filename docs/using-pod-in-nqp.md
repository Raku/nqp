## Using POD in NQP

Limited pod use is acceptable in nqp files.  The following forms are currently allowed:

### Single-line entries

    =identifier ...text...  # note that use of 'cut' as an identifier will cause a panic

Any word (other than 'cut') is accepted as an identifier. The entry may be used inside a pod block.

### Blocks

    =begin ...optional identifier... ...optional text...
    ...any text
    =end ...optional identifier...

If the ```=begin``` has an identifier, the ```=end``` should have the same identifier (not
yet enforced).
