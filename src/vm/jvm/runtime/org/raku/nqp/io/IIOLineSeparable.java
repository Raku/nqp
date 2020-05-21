package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOLineSeparable {
    public void setInputLineSeparator(ThreadContext tc, String sep);
}
