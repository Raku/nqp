package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOSyncWritable {
    public long print(ThreadContext tc, String s);
    public long say(ThreadContext tc, String s);
    public long write(ThreadContext tc, byte[] bytes);
    public void flush(ThreadContext tc);
}
