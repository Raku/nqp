package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.TypeObject;

public class KnowHOWAttribute extends REPR {
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        KnowHOWAttributeInstance obj = new KnowHOWAttributeInstance();
        obj.st = st;
        return obj;
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        KnowHOWAttributeInstance obj = new KnowHOWAttributeInstance();
        obj.st = st;
        return obj;
    }

    public void deserialize_finish(ThreadContext tc, STable st,
            SerializationReader reader, SixModelObject obj) {
        KnowHOWAttributeInstance data = (KnowHOWAttributeInstance)obj;
        data.name = reader.readStr();
        data.type = tc.gc.KnowHOW; // Not serialized yet
    }
    
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        KnowHOWAttributeInstance data = (KnowHOWAttributeInstance)obj;
        writer.writeStr(data.name);
    }
}
