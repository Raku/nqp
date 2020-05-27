package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOLineSeparable {
    void setInputLineSeparator(ThreadContext tc, String sep);
}
