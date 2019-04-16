package org.perl6.nqp.truffle.sixmodel.reprs;

import java.util.concurrent.LinkedBlockingQueue;
import org.perl6.nqp.truffle.sixmodel.STable;

public class ConcBlockingQueueInstance extends FixedSizeObject {
    public LinkedBlockingQueue<Object> queue;

    public ConcBlockingQueueInstance(STable stable) {
        super(stable);
        queue = new LinkedBlockingQueue<Object>();
    }
}
