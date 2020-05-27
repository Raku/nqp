package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.ThreadContext;

public interface Refreshable {
    void refresh(ThreadContext tc);
}
