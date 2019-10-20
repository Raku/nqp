package org.perl6.nqp.truffle.io;

public interface IIOSeekable {
    public void seek(long offset, long whence);
    public long tell();
}
