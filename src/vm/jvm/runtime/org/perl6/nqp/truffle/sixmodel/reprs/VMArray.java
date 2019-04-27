package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;


public class VMArray extends FixedSizeObjectREPR {
    public VMArray(STable stable) {
        super(stable);
    }

    public Object allocate() {
        return new VMArrayInstanceUInt8(stable);
    }

    public Object deserializeStub() {
        System.out.println("NYI deserializing a VMArray");
        return null;
        //return new VMArrayInstance(stable);
    }

    public void deserializeFinish(SerializationReader reader, Object obj) {
    }
}
