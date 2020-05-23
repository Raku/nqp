package org.raku.nqp.sixmodel.reprs;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.REPR;
import org.raku.nqp.sixmodel.STable;
import org.raku.nqp.sixmodel.SerializationReader;
import org.raku.nqp.sixmodel.SerializationWriter;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.sixmodel.StorageSpec;
import org.raku.nqp.sixmodel.TypeObject;

public class VMArray extends REPR {
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
        SixModelObject obj;
        if (st.REPRData == null) {
            obj = new VMArrayInstance();
        }
        else {
            StorageSpec ss = ((VMArrayREPRData)st.REPRData).ss;
            switch (ss.boxed_primitive) {
            case StorageSpec.BP_INT:
                if (ss.bits == 64)
                    obj = new VMArrayInstance_i();
                else if (ss.bits == 8)
                    obj = ss.is_unsigned == 0
                        ? new VMArrayInstance_i8()
                        : new VMArrayInstance_u8();
                else if (ss.bits == 16)
                    obj = ss.is_unsigned == 0
                        ? new VMArrayInstance_i16()
                        : new VMArrayInstance_u16();
                else if (ss.bits == 32)
                    obj = ss.is_unsigned == 0
                        ? new VMArrayInstance_i32()
                        : new VMArrayInstance_u32();
                else
                    obj = new VMArrayInstance_i();
                break;
            case StorageSpec.BP_NUM:
                obj = new VMArrayInstance_n();
                break;
            case StorageSpec.BP_STR:
                obj = new VMArrayInstance_s();
                break;
            default:
                throw ExceptionHandling.dieInternal(tc, "Invalid REPR data for VMArray");
            }
        }
        obj.st = st;
        return obj;
    }

    @Override
    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        SixModelObject arrayInfo = repr_info.at_key_boxed(tc, "array");
        if (Ops.isnull(arrayInfo) == 0) {
            SixModelObject type = arrayInfo.at_key_boxed(tc, "type");
            StorageSpec ss = type.st.REPR.get_storage_spec(tc, type.st);
            switch (ss.boxed_primitive) {
            case StorageSpec.BP_INT:
            case StorageSpec.BP_NUM:
            case StorageSpec.BP_STR:
                VMArrayREPRData reprData = new VMArrayREPRData();
                reprData.type = type;
                reprData.ss = ss;
                st.REPRData = reprData;
                break;
            default:
                if (ss.inlineable != StorageSpec.REFERENCE)
                    throw ExceptionHandling.dieInternal(tc, "VMArray can only store native int/num/str or reference types");
            }
        }
    }

    @Override
    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        SixModelObject obj;
        if (st.REPRData == null) {
            obj = new VMArrayInstance();
        }
        else {
            StorageSpec ss = ((VMArrayREPRData)st.REPRData).ss;
            switch (ss.boxed_primitive) {
            case StorageSpec.BP_INT:
                if (ss.bits == 8)
                    obj = ss.is_unsigned == 0
                        ? new VMArrayInstance_i8()
                        : new VMArrayInstance_u8();
                else if (ss.bits == 16)
                    obj = ss.is_unsigned == 0
                        ? new VMArrayInstance_i16()
                        : new VMArrayInstance_u16();
                else if (ss.bits == 32)
                    obj = ss.is_unsigned == 0
                        ? new VMArrayInstance_i32()
                        : new VMArrayInstance_u32();
                else
                    obj = new VMArrayInstance_i();
                break;
            case StorageSpec.BP_NUM:
                obj = new VMArrayInstance_n();
                break;
            case StorageSpec.BP_STR:
                obj = new VMArrayInstance_s();
                break;
            default:
                throw ExceptionHandling.dieInternal(tc, "Invalid REPR data for VMArray");
            }
        }
        obj.st = st;
        return obj;
    }

    @Override
    public void deserialize_finish(ThreadContext tc, STable st,
                                   SerializationReader reader, SixModelObject obj) {
        int elems = reader.readInt32();
        obj.set_elems(tc, elems);
        if (st.REPRData == null) {
            for (int i = 0; i < elems; i++)
                obj.bind_pos_boxed(tc, i, reader.readRef());
        }
        else {
            short boxPrim = ((VMArrayREPRData)st.REPRData).ss.boxed_primitive;
            for (long i = 0; i < elems; i++) {
                switch (boxPrim) {
                case StorageSpec.BP_INT:
                    tc.native_i = reader.readLong();
                    break;
                case StorageSpec.BP_NUM:
                    tc.native_n = reader.readDouble();
                    break;
                case StorageSpec.BP_STR:
                    tc.native_s = reader.readStr();
                    break;
                default:
                    throw ExceptionHandling.dieInternal(tc, "Invalid REPR data for VMArray");
                }
                obj.bind_pos_native(tc, i);
            }
        }
    }

    @Override
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        int elems = (int)obj.elems(tc);
        writer.writeInt32(elems);
        if (obj.st.REPRData == null) {
            for (long i = 0; i < elems; i++)
                writer.writeRef(obj.at_pos_boxed(tc, i));
        }
        else {
            short boxPrim = ((VMArrayREPRData)obj.st.REPRData).ss.boxed_primitive;
            for (long i = 0; i < elems; i++) {
                obj.at_pos_native(tc, i);
                switch (boxPrim) {
                case StorageSpec.BP_INT:
                    writer.writeInt(tc.native_i);
                    break;
                case StorageSpec.BP_NUM:
                    writer.writeNum(tc.native_n);
                    break;
                case StorageSpec.BP_STR:
                    writer.writeStr(tc.native_s);
                    break;
                default:
                    throw ExceptionHandling.dieInternal(tc, "Invalid REPR data for VMArray");
                }
            }
        }
    }

    @Override
    public StorageSpec get_value_storage_spec(ThreadContext tc, STable st) {
        return st.REPRData == null ? StorageSpec.BOXED : ((VMArrayREPRData)st.REPRData).ss;
    }

    /**
     * REPR data serialization. Serializes the per-type representation data that
     * is attached to the supplied STable.
     */
    @Override
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer)
    {
        writer.writeRef(st.REPRData == null
            ? null
            : ((VMArrayREPRData)st.REPRData).type);
    }

    /**
     * REPR data deserialization. Deserializes the per-type representation data and
     * attaches it to the supplied STable.
     */
    @Override
    public void deserialize_repr_data(ThreadContext tc, STable st, SerializationReader reader)
    {
        if (reader.version >= 7) {
            SixModelObject type = reader.readRef();
            if (Ops.isnull(type) == 0) {
                VMArrayREPRData reprData = new VMArrayREPRData();
                reprData.type = type;
                reprData.ss = type.st.REPR.get_storage_spec(tc, type.st);
                st.REPRData = reprData;
            }
        }
    }
}
