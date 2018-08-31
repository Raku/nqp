package org.perl6.nqp.truffle.sixmodel;

/**
 * Base of all 6model representations. Has default implementations of functions that
 * are not mandatory.
 */
public abstract class REPR {
    public abstract Object deserializeStub();
    public abstract Object allocate();

    public abstract void setSc(Object obj, SerializationContext sc);
    public abstract void setSTable(Object obj, STable stable);
}
