package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;

public interface IIOSyncWritable {
    public long print(ThreadContext tc, String s);
    public long say(ThreadContext tc, String s);
    public long write(ThreadContext tc, byte[] bytes);
    public void flush(ThreadContext tc);
    public void setBufferSize(ThreadContext tc, long size);
}
