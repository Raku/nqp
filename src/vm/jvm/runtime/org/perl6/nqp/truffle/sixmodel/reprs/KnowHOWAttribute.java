package org.perl6.nqp.truffle.sixmodel.reprs;

import org.perl6.nqp.truffle.sixmodel.STable;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;

public class KnowHOWAttribute extends FixedSizeObjectREPR {
    public KnowHOWAttribute(STable stable) {
        super(stable);
    }

    @Override
    public Object deserializeStub() {
        return new KnowHOWAttributeInstance(stable);
    }

    @Override
    public Object allocate() {
        return new KnowHOWAttributeInstance(stable);
    }

    @Override
    public void deserializeFinish(SerializationReader reader, Object obj) {
        KnowHOWAttributeInstance data = (KnowHOWAttributeInstance)obj;
        data.name = reader.readString();
        //data.type = tc.gc.KnowHOW; // Not serialized yet
    }
}
