package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOCancelable {

    public void cancel(ThreadContext tc);
}
