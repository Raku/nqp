package org.perl6.nqp.sixmodel.reprs;

import java.util.ArrayList;
import java.util.HashMap;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.TypeObject;

public class KnowHOWREPR extends REPR {
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        KnowHOWREPRInstance obj = new KnowHOWREPRInstance();
        obj.st = st;
        obj.name = "<anon>";
        obj.attributes = new ArrayList<SixModelObject>();
        obj.methods = new HashMap<String, SixModelObject>();
        return obj;
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        KnowHOWREPRInstance obj = new KnowHOWREPRInstance();
        obj.st = st;
        return obj;
    }

    public void deserialize_finish(ThreadContext tc, STable st,
            SerializationReader reader, SixModelObject obj) {
        KnowHOWREPRInstance body = (KnowHOWREPRInstance)obj;
        body.name = reader.readStr();
        
        body.attributes = new ArrayList<SixModelObject>();
        SixModelObject attrs = reader.readRef();
        long elems = attrs.elems(tc);
        for (long i = 0; i < elems; i++)
            body.attributes.add(attrs.at_pos_boxed(tc, i));
        
        body.methods = ((VMHashInstance)reader.readRef()).storage;
    }
    
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        KnowHOWREPRInstance kh = (KnowHOWREPRInstance)obj;
        writer.writeStr(kh.name);
        writer.writeList(kh.attributes);
        writer.writeHash(kh.methods);
    }
}
