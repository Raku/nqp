package org.perl6.nqp.io;

import java.nio.ByteBuffer;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOSyncWritable {
    public void print(ThreadContext tc, String s);
    public void say(ThreadContext tc, String s);
    public void write(ThreadContext tc, ByteBuffer bb);
}
