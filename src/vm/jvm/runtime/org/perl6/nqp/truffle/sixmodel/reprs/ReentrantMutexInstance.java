package org.perl6.nqp.truffle.sixmodel.reprs;

import java.util.concurrent.locks.ReentrantLock;
import org.perl6.nqp.truffle.sixmodel.STable;

public class ReentrantMutexInstance extends FixedSizeObject {
    public ReentrantLock lock;
    public ReentrantMutexInstance(STable stable) {
        super(stable);
        lock = new ReentrantLock();
    }
}
