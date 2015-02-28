package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.TypeObject;

public class NativeRef extends REPR {
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        st.REPRData = new NativeRefREPRData();
        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        NativeRefREPRData rd = (NativeRefREPRData)st.REPRData;
        SixModelObject obj;
        switch (rd.ref_kind) {
            case NativeRefREPRData.REF_LEXICAL:
                switch (rd.primitive_type) {
                    case StorageSpec.BP_INT:
                        obj = new NativeRefInstanceIntLex();
                        break;
                    case StorageSpec.BP_NUM:
                        obj = new NativeRefInstanceIntLex();
                        break;
                    case StorageSpec.BP_STR:
                        obj = new NativeRefInstanceIntLex();
                        break;
                    default:
                        throw ExceptionHandling.dieInternal(tc,
                            "Unknown primtive type in native ref allocation");
                }
                break;
            default:
                throw ExceptionHandling.dieInternal(tc,
                    "Unknown reference kind in native ref allocation");
        }
        obj.st = st;
        return obj;
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        throw ExceptionHandling.dieInternal(tc, "Cannot deserialize a native reference");
    }

    public void deserialize_finish(ThreadContext tc, STable st,
            SerializationReader reader, SixModelObject obj) {
        throw ExceptionHandling.dieInternal(tc, "Cannot deserialize a native reference");
    }
}
