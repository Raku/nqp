package org.perl6.nqp.runtime;

import org.perl6.nqp.sixmodel.SixModelObject;

public class LexoticException extends ControlException {
    private static final long serialVersionUID = 8440518663174290004L;
    public long target;
    public SixModelObject payload;
}
