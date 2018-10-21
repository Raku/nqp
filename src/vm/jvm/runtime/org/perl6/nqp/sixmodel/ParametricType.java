package org.perl6.nqp.sixmodel;

import java.util.List;
import java.util.Map;

public final class ParametricType extends AbstractParametricity {
    /* The code object to use to produce a new parameterization. */
    public SixModelObject parameterizer;

    /* Lookup table of existing parameterizations. */
    public List<Map.Entry<SixModelObject, SixModelObject>> lookup;
}
