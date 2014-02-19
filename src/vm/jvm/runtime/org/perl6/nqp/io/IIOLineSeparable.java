package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOLineSeparable {
    public void setInputLineSeparator(ThreadContext tc, String sep);
}
