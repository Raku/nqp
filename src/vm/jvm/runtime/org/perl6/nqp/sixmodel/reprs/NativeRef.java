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
        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        NativeRefREPRData rd = (NativeRefREPRData)st.REPRData;
        if (rd == null)
            throw ExceptionHandling.dieInternal(tc,
                "Cannot allocate NativeRef type that is not yet composed");
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

    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        SixModelObject info = repr_info.at_key_boxed(tc, "nativeref");
        if (info != null) {
            SixModelObject type = info.at_key_boxed(tc, "type");
            short prim = type.st.REPR.get_storage_spec(tc, type.st).boxed_primitive;
            if (prim != StorageSpec.BP_NONE) {
                SixModelObject refkind = info.at_key_boxed(tc, "refkind");
                if (refkind != null) {
                    String refkind_s = refkind.get_str(tc);
                    NativeRefREPRData rd = new NativeRefREPRData();
                    if (refkind_s.equals("lexical")) {
                        rd.ref_kind = NativeRefREPRData.REF_LEXICAL;
                    }
                    else if (refkind_s.equals("attribute")) {
                        rd.ref_kind = NativeRefREPRData.REF_ATTRIBUTE;
                    }
                    else if (refkind_s.equals("positional")) {
                        rd.ref_kind = NativeRefREPRData.REF_POSITIONAL;
                    }
                    else {
                        throw ExceptionHandling.dieInternal(tc,
                            "NativeRef: invalid refkind in compose");
                    }
                    rd.primitive_type = prim;
                    st.REPRData = rd;
                }
                else {
                    throw ExceptionHandling.dieInternal(tc,
                        "NativeRef: missing refkind in compose");
                }
            }
            else {
                throw ExceptionHandling.dieInternal(tc,
                    "NativeRef: non-native type supplied in compose");
            }
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                "NativeRef: missing nativeref protocol in compose");
        }
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        throw ExceptionHandling.dieInternal(tc, "Cannot deserialize a native reference");
    }

    public void deserialize_finish(ThreadContext tc, STable st,
            SerializationReader reader, SixModelObject obj) {
        throw ExceptionHandling.dieInternal(tc, "Cannot deserialize a native reference");
    }
}
