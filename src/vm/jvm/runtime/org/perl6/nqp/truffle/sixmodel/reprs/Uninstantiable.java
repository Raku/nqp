package org.perl6.nqp.truffle.sixmodel.reprs;

import org.perl6.nqp.truffle.sixmodel.REPR;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;
import org.perl6.nqp.truffle.sixmodel.STable;

public class Uninstantiable extends REPR {
    public Object allocate() {
        throw new RuntimeException("Can't get allocate Uinstantantiable objects");
    }

    public void setSc(Object obj, SerializationContext sc) {
        throw new RuntimeException("Can't set sc on Uinstantantiable objects");
    }
    public void setSTable(Object obj, STable stable) {
        throw new RuntimeException("Can't set stable on Uinstantantiable objects");
    }

    public Object deserializeStub() {
        throw new RuntimeException("Can't get deserialize Uinstantantiable objects");
    }
  
    public void deserializeFinish(SerializationReader reader, Object obj) {
        throw new RuntimeException("Can't get deserialize Uinstanntiable objects");
    }
}
