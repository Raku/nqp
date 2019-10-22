package org.perl6.nqp.truffle;

public class ThreadContext {
    /**
     * Serialization context write barrier disabled depth (anything non-zero
     * means disabled).
     */
    public int scwbDisableDepth = 0;

    public ThreadContext() {
    }
}

