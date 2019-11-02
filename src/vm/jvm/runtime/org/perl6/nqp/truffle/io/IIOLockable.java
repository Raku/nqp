package org.perl6.nqp.truffle.io;

public interface IIOLockable {
    public void lock(long flag);
    public void unlock();
}
