package org.perl6.nqp.truffle.sixmodel.reprs;

import com.oracle.truffle.api.object.DynamicObjectFactory;
import com.oracle.truffle.api.object.DynamicObject;
import org.perl6.nqp.truffle.sixmodel.REPR;
import org.perl6.nqp.truffle.sixmodel.STable;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

public class P6opaque extends REPR {
    private STable stable;
    private DynamicObjectFactory stubShape;
    private DynamicObjectFactory shape;

    public P6opaque(STable stable) {
        stable = stable;
        stubShape = P6opaqueObjectLayoutImpl.INSTANCE.createP6opaqueObjectShape(stable);
        shape = P6opaqueObjectLayoutImpl.INSTANCE.createP6opaqueObjectShape(stable);
    }

    @Override
    public Object deserializeStub() {
        return P6opaqueObjectLayoutImpl.INSTANCE.createP6opaqueObject(stubShape, null);
    }

    @Override
    public Object allocate() {
        System.out.println("allocating P6opaques NYI");
        return P6opaqueObjectLayoutImpl.INSTANCE.createP6opaqueObject(shape, null);
    }

    @Override
    public void setSTable(Object obj, STable stable) {
        P6opaqueObjectLayoutImpl.INSTANCE.setStable((DynamicObject) obj, stable);
    }

    @Override
    public void setSc(Object obj, SerializationContext sc) {
        P6opaqueObjectLayoutImpl.INSTANCE.setSc((DynamicObject) obj, sc);
    }
}
