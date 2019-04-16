package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;


public class ConditionVariable extends FixedSizeObjectREPR {
    public ConditionVariable(STable stable) {
        super(stable);
    }

    public Object allocate() {
        throw new RuntimeException("Cannot create a condition variable directly");
    }


    public Object deserializeStub() {
        throw new RuntimeException("Cannot deserialize a lock");
    }

    public void deserializeFinish(SerializationReader reader, Object obj) {
        throw new RuntimeException("Cannot deserialize a lock");
    }
}
