package org.perl6.nqp.runtime;

/* Argument expectations are used to indicate what, exactly, a block we are
 * invoking expects. The default is that it wants the args in an Object[] and
 * will use the binder to process them specially. We special-case various of
 * the other most common signatures, however, to save that array and the whole
 * lot of binding work. */
public class ArgsExpectation {
    public static final short USE_BINDER = 0;
    public static final short NO_ARGS    = 1;
}
