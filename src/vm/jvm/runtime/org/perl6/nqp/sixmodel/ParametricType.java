package org.perl6.nqp.sixmodel;

public final class ParametricType extends AbstractParametricity {
    /* The code object to use to produce a new parameterization. */
    SixModelObject parameterizer;

    /* Lookup table of existing parameterizations. For now, just a VM
     * array with alternating pairs of [arg array], object. Could in
     * the future we something lower level or hashy; we've yet to see
     * how hot-path lookups end up being in reality. */
    SixModelObject lookup;
}
