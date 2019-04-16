package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;


public class ReentrantMutex extends FixedSizeObjectREPR {
    public ReentrantMutex(STable stable) {
        super(stable);
    }

    public Object allocate() {
        return new ReentrantMutexInstance(stable);
    }

    public Object deserializeStub() {
        return new ReentrantMutexInstance(stable);
    }

    public void deserializeFinish(SerializationReader reader, Object obj) {
      /* Already did it all in deserializeStub. */
    }
}
