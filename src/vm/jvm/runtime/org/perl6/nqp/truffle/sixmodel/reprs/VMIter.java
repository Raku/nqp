package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;

public class VMIter extends FixedSizeObjectREPR {
    public VMIter(STable stable) {
        super(stable);
    }

    @Override
    public Object allocate() {
        return new VMIterInstance(stable);
    }

    @Override
    public Object deserializeStub() {
        throw new RuntimeException("VMIter does not participate in serialization");
    }

    @Override
    public void deserializeFinish(SerializationReader reader, Object obj) {
        throw new RuntimeException("VMIter does not participate in serialization");
    }
}
