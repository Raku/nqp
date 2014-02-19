package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.sixmodel.SixModelObject;

public class NativeCallInstance extends SixModelObject {
    /* Body held at a level of indirection to support inlining that into a
     * P6opaque; this is about the best we can do on the JVM, which doesn't
     * support interior pointers of complex value types. */
    public NativeCallBody body;
}
