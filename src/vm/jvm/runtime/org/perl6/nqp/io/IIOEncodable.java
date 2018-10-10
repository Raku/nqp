package org.perl6.nqp.io;

import java.nio.charset.Charset;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOEncodable {
    void setEncoding(ThreadContext tc, Charset cs);
}
