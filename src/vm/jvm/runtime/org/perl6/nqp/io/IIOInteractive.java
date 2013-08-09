package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOInteractive {
    public String readlineInteractive(ThreadContext tc, String prompt);
}
