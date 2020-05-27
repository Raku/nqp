package org.raku.nqp.sixmodel.reprs;

import java.util.HashMap;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.REPR;
import org.raku.nqp.sixmodel.STable;
import org.raku.nqp.sixmodel.SerializationReader;
import org.raku.nqp.sixmodel.SerializationWriter;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.sixmodel.StorageSpec;
import org.raku.nqp.sixmodel.TypeObject;

public class VMHash extends REPR {
    @Override
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    @Override
    public SixModelObject allocate(ThreadContext tc, STable st) {
        VMHashInstance obj = new VMHashInstance();
        obj.st = st;
        obj.storage = VMHashInstance.EMPTY_MAP;
        return obj;
    }

    @Override
    public StorageSpec get_value_storage_spec(ThreadContext tc, STable st) {
        return new StorageSpec();
    }

    @Override
    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        VMHashInstance obj = new VMHashInstance();
        obj.st = st;
        obj.storage = VMHashInstance.EMPTY_MAP;
        return obj;
    }

    @Override
    public void deserialize_finish(ThreadContext tc, STable st,
                                   SerializationReader reader, SixModelObject obj) {
        HashMap<String, SixModelObject> storage = ((VMHashInstance)obj).storage;
        int elems = reader.readInt32();
        for (int i = 0; i < elems; i++) {
            String key = reader.readStr();
            SixModelObject value = reader.readRef();
            storage.put(key, value);
        }
    }

    @Override
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        HashMap<String, SixModelObject> storage = ((VMHashInstance)obj).storage;

        /* Write out element count. */
        writer.writeInt32(storage.size());

        /* Write elements, as key,value,key,value etc. */
        for (String key : storage.keySet()) {
            writer.writeStr(key);
            writer.writeRef(storage.get(key));
        }
    }
}
