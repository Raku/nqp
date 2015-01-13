package org.perl6.nqp.sixmodel;

public final class ParameterizedType extends AbstractParametricity {
    /* The type that we are a parameterization of. */
    SixModelObject parametric_type;

    /* Our type parameters. */
    SixModelObject parameters;
}
