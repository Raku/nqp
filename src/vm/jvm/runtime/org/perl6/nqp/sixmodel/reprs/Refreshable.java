package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ThreadContext;

public interface Refreshable {
    public void refresh(ThreadContext tc);
}
