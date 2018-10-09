package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOLineSeparable {
    void setInputLineSeparator(ThreadContext tc, String sep);
}
