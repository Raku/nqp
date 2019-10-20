package org.perl6.nqp.truffle.io;

public interface IIOSyncWritable {
    public long print(String s);
    public long say(String s);
    public long write(byte[] bytes);
    public void flush();
}
