package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;

public class IOHandle extends FixedSizeObjectREPR {
    public IOHandle(STable stable) {
        super(stable);
    }

    @Override
    public Object allocate() {
        return new IOHandleInstance(stable);
    }

    @Override
    public Object deserializeStub() {
        throw new RuntimeException("IOHandle does not participate in serialization");
    }

    @Override
    public void deserializeFinish(SerializationReader reader, Object obj) {
        throw new RuntimeException("IOHandle does not participate in serialization");
    }
}
