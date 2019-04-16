package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;


public class ConcBlockingQueue extends FixedSizeObjectREPR {
    public ConcBlockingQueue(STable stable) {
        super(stable);
    }

    public Object allocate() {
        return new ConcBlockingQueueInstance(stable);
    }

    public Object deserializeStub() {
        throw new RuntimeException("Cannot deserialize a concurrent blocking queue");
    }

    public void deserializeFinish(SerializationReader reader, Object obj) {
        throw new RuntimeException("Cannot deserialize a concurrent blocking queue");
    }
}
