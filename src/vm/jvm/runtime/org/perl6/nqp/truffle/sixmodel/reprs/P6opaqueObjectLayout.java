package org.perl6.nqp.truffle.sixmodel.reprs;

import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectFactory;
import com.oracle.truffle.api.object.dsl.Layout;
import com.oracle.truffle.api.object.dsl.Nullable;
import com.oracle.truffle.api.object.ObjectType;
import org.perl6.nqp.truffle.sixmodel.STable;
import org.perl6.nqp.truffle.sixmodel.SerializationContext;

@Layout
interface P6opaqueObjectLayout {
    DynamicObjectFactory createP6opaqueObjectShape(STable stable);

    DynamicObject createP6opaqueObject(DynamicObjectFactory factory, @Nullable SerializationContext sc);

    void setSc(DynamicObject object, SerializationContext value);
    SerializationContext getSc(DynamicObject object);

    void setStable(DynamicObject object, STable value);
    STable getStable(DynamicObject object);
}
