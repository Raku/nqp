package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;


public class P6str extends FixedSizeObjectREPR {
    public P6str(STable stable) {
        super(stable);
    }

    public Object allocate() {
        return new P6strInstance(stable);
    }

    public Object deserializeStub() {
        return new P6strInstance(stable);
    }

    public void deserializeFinish(SerializationReader reader, Object obj) {
      ((P6strInstance) obj).value = reader.readString(); 
    }
}
