package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOSyncWritable {
    long print(ThreadContext tc, String s);

    long say(ThreadContext tc, String s);

    long write(ThreadContext tc, byte[] bytes);

    void flush(ThreadContext tc);

    void setBufferSize(ThreadContext tc, long size);
}
