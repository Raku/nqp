package org.perl6.nqp.truffle.io;

public interface IIOExitable {
    public int exitValue() throws IllegalThreadStateException;
}
