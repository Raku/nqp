package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;


public class P6int extends FixedSizeObjectREPR {
    public P6int(STable stable) {
        super(stable);
    }

    public Object allocate() {
        return new P6intInstance(stable);
    }

    public Object deserializeStub() {
        return new P6intInstance(stable);
    }

    public void deserializeFinish(SerializationReader reader, Object obj) {
      ((P6intInstance) obj).value = reader.readLong();
    }

    @Override
    public Object deserializeInline(SerializationReader reader) {
      return reader.readLong();
    }
}
