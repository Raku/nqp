package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOSyncWritable {
    long print(ThreadContext tc, String s);
    long say(ThreadContext tc, String s);
    long write(ThreadContext tc, byte[] bytes);
    void flush(ThreadContext tc);
    void setBufferSize(ThreadContext tc, long size);
}
