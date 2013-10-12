package org.perl6.nqp.sixmodel.reprs;

import java.util.HashMap;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.TypeObject;

public class VMHash extends REPR {
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        VMHashInstance obj = new VMHashInstance();
        obj.st = st;
        obj.storage = VMHashInstance.EMPTY_MAP;
        return obj;
    }
    
    public StorageSpec get_value_storage_spec(ThreadContext tc, STable st) {
        return new StorageSpec();
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        VMHashInstance obj = new VMHashInstance();
        obj.st = st;
        obj.storage = VMHashInstance.EMPTY_MAP;
        return obj;
    }

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
