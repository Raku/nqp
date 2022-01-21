package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.REPR;
import org.raku.nqp.sixmodel.STable;
import org.raku.nqp.sixmodel.StorageSpec;
import org.raku.nqp.sixmodel.SerializationReader;
import org.raku.nqp.sixmodel.SerializationWriter;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.sixmodel.TypeObject;

public class NativeRef extends REPR {
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
        NativeRefREPRData rd = (NativeRefREPRData)st.REPRData;
        if (rd == null)
            throw ExceptionHandling.dieInternal(tc,
                "Cannot allocate NativeRef type that is not yet composed");
        SixModelObject obj;
        switch (rd.ref_kind) {
            case NativeRefREPRData.REF_LEXICAL:
                switch (rd.primitive_type) {
                    case StorageSpec.BP_INT:
                    case StorageSpec.BP_UINT:
                        obj = new NativeRefInstanceIntLex();
                        break;
                    case StorageSpec.BP_NUM:
                        obj = new NativeRefInstanceNumLex();
                        break;
                    case StorageSpec.BP_STR:
                        obj = new NativeRefInstanceStrLex();
                        break;
                    default:
                        throw ExceptionHandling.dieInternal(tc,
                            "Unknown primtive type in native ref allocation");
                }
                break;
            case NativeRefREPRData.REF_ATTRIBUTE:
                obj = new NativeRefInstanceAttribute();
                break;
            case NativeRefREPRData.REF_POSITIONAL:
                obj = new NativeRefInstancePositional();
                break;
            case NativeRefREPRData.REF_MULTIDIM:
                obj = new NativeRefInstanceMultidim();
                break;
            default:
                throw ExceptionHandling.dieInternal(tc,
                    "Unknown reference kind in native ref allocation");
        }
        obj.st = st;
        return obj;
    }

    @Override
    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        SixModelObject info = repr_info.at_key_boxed(tc, "nativeref");
        if (Ops.isnull(info) == 0) {
            SixModelObject type = info.at_key_boxed(tc, "type");
            short prim = type.st.REPR.get_storage_spec(tc, type.st).boxed_primitive;
            if (prim != StorageSpec.BP_NONE) {
                SixModelObject refkind = info.at_key_boxed(tc, "refkind");
                if (Ops.isnull(refkind) == 0) {
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
                    else if (refkind_s.equals("multidim")) {
                        rd.ref_kind = NativeRefREPRData.REF_MULTIDIM;
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

    @Override
    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        throw ExceptionHandling.dieInternal(tc, "Cannot deserialize a native reference");
    }

    @Override
    public void deserialize_finish(ThreadContext tc, STable st,
                                   SerializationReader reader, SixModelObject obj) {
        throw ExceptionHandling.dieInternal(tc, "Cannot deserialize a native reference");
    }

    @Override
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer)
    {
        NativeRefREPRData rd = (NativeRefREPRData)st.REPRData;
        if (rd != null) {
            writer.writeInt32(rd.primitive_type);
            writer.writeInt32(rd.ref_kind);
        }
        else {
            writer.writeInt32(0);
            writer.writeInt32(0);
        }
    }

    @Override
    public void deserialize_repr_data(ThreadContext tc, STable st, SerializationReader reader)
    {
        NativeRefREPRData rd = new NativeRefREPRData();
        rd.primitive_type = (short)reader.readInt32();
        rd.ref_kind = (short)reader.readInt32();
        st.REPRData = rd;
    }
}
