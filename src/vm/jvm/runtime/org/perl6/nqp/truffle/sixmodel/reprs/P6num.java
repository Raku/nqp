package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;


public class P6num extends FixedSizeObjectREPR {
    public P6num(STable stable) {
        super(stable);
    }

    public Object allocate() {
        return new P6numInstance(stable);
    }

    public Object deserializeStub() {
        return new P6numInstance(stable);
    }

    public void deserializeFinish(SerializationReader reader, Object obj) {
      ((P6numInstance) obj).value = reader.readDouble();
    }
}
