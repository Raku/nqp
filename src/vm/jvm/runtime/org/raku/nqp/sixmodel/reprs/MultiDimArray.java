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

public class MultiDimArray extends REPR {
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
        MultiDimArrayREPRData rd = (MultiDimArrayREPRData)st.REPRData;
        if (rd != null) {
            MultiDimArrayInstanceBase obj;
            if (rd.ss != null) {
                StorageSpec ss = rd.ss;
                switch (ss.boxed_primitive) {
                case StorageSpec.BP_INT:
                    if (ss.bits == 64)
                        obj = new MultiDimArrayInstance_i();
                    else if (ss.bits == 8)
                        obj = ss.is_unsigned == 0
                            ? new MultiDimArrayInstance_i8()
                            : new MultiDimArrayInstance_u8();
                    else if (ss.bits == 16)
                        obj = ss.is_unsigned == 0
                            ? new MultiDimArrayInstance_i16()
                            : new MultiDimArrayInstance_u16();
                    else if (ss.bits == 32)
                        obj = ss.is_unsigned == 0
                            ? new MultiDimArrayInstance_i32()
                            : new MultiDimArrayInstance_u32();
                    else
                        obj = new MultiDimArrayInstance_i();
                    break;
                case StorageSpec.BP_NUM:
                    obj = new MultiDimArrayInstance_n();
                    break;
                case StorageSpec.BP_STR:
                    obj = new MultiDimArrayInstance_s();
                    break;
                default:
                    obj = new MultiDimArrayInstance();
                }
            }
            else {
                obj = new MultiDimArrayInstance();
            }
            obj.dimensions = new long[rd.numDimensions];
            obj.st = st;
            return obj;
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                 "Cannot allocate a multi-dim array type before it is composed");
        }
    }

    @Override
    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        SixModelObject arrayInfo = repr_info.at_key_boxed(tc, "array");
        if (Ops.isnull(arrayInfo) == 0) {
            MultiDimArrayREPRData reprData = new MultiDimArrayREPRData();

            SixModelObject dims = arrayInfo.at_key_boxed(tc, "dimensions");
            if (Ops.isnull(dims) == 1)
                 throw ExceptionHandling.dieInternal(tc,
                    "MultiDimArray REPR must be composed with a number of dimensions");
            int dimensions = (int)dims.get_int(tc);
            if (dimensions < 1)
                throw ExceptionHandling.dieInternal(tc,
                     "MultiDimArray REPR must be composed with at least 1 dimension");
            reprData.numDimensions = dimensions;

            SixModelObject type = arrayInfo.at_key_boxed(tc, "type");
            StorageSpec ss = Ops.isnull(type) == 0 ? type.st.REPR.get_storage_spec(tc, type.st) : null;
            switch (ss != null ? ss.boxed_primitive : StorageSpec.REFERENCE) {
            case StorageSpec.BP_INT:
            case StorageSpec.BP_NUM:
            case StorageSpec.BP_STR:
                reprData.type = type;
                reprData.ss = ss;
                break;
            default:
                if (ss != null && ss.inlineable != StorageSpec.REFERENCE)
                    throw ExceptionHandling.dieInternal(tc, "MultiDimArray can only store native int/num/str or reference types");
            }

            st.REPRData = reprData;
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "MultiDimArray REPR must be composed with array information");
        }
    }

    @Override
    public StorageSpec get_value_storage_spec(ThreadContext tc, STable st) {
        return st.REPRData == null ? StorageSpec.BOXED : ((MultiDimArrayREPRData)st.REPRData).ss;
    }

    @Override
    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        MultiDimArrayREPRData rd = (MultiDimArrayREPRData)st.REPRData;
        MultiDimArrayInstanceBase obj = null;
        if (rd != null && rd.ss != null) {
            StorageSpec ss = rd.ss;
            switch (ss.boxed_primitive) {
            case StorageSpec.BP_INT:
                if (ss.bits == 64)
                    obj = new MultiDimArrayInstance_i();
                else if (ss.bits == 8)
                    obj = ss.is_unsigned == 0
                        ? new MultiDimArrayInstance_i8()
                        : new MultiDimArrayInstance_u8();
                else if (ss.bits == 16)
                    obj = ss.is_unsigned == 0
                        ? new MultiDimArrayInstance_i16()
                        : new MultiDimArrayInstance_u16();
                else if (ss.bits == 32)
                    obj = ss.is_unsigned == 0
                        ? new MultiDimArrayInstance_i32()
                        : new MultiDimArrayInstance_u32();
                else
                    obj = new MultiDimArrayInstance_i();
                break;
            case StorageSpec.BP_NUM:
                obj = new MultiDimArrayInstance_n();
                break;
            case StorageSpec.BP_STR:
                obj = new MultiDimArrayInstance_s();
                break;
            }
        }
        if (Ops.isnull(obj) == 1)
            obj = new MultiDimArrayInstance();
        obj.st = st;
        return obj;
    }

    @Override
    public void deserialize_finish(ThreadContext tc, STable st,
                                   SerializationReader reader, SixModelObject obj) {
        MultiDimArrayInstanceBase mda = (MultiDimArrayInstanceBase)obj;
        MultiDimArrayREPRData rd = (MultiDimArrayREPRData)st.REPRData;
        mda.dimensions = new long[rd.numDimensions];
        for (int i = 0; i < mda.dimensions.length; i++)
            mda.dimensions[i] = reader.readLong();
        mda.deserializeValues(tc, reader);
    }

    @Override
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        MultiDimArrayInstanceBase mda = (MultiDimArrayInstanceBase)obj;
        for (int i = 0; i < mda.dimensions.length; i++)
            writer.writeInt(mda.dimensions[i]);
        mda.serializeValues(tc, writer);
    }

    /**
     * REPR data serialization. Serializes the per-type representation data that
     * is attached to the supplied STable.
     */
    @Override
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer)
    {
        MultiDimArrayREPRData rd = (MultiDimArrayREPRData)st.REPRData;
        if (rd != null) {
            writer.writeInt(rd.numDimensions);
            writer.writeRef(rd.type);
        }
        else {
            writer.writeInt(0);
        }
    }

    /**
     * REPR data deserialization. Deserializes the per-type representation data and
     * attaches it to the supplied STable.
     */
    @Override
    public void deserialize_repr_data(ThreadContext tc, STable st, SerializationReader reader)
    {
        int dims = (int)reader.readLong();
        if (dims > 0) {
            MultiDimArrayREPRData reprData = new MultiDimArrayREPRData();
            reprData.numDimensions = dims;
            SixModelObject type = reader.readRef();
            if (Ops.isnull(type) == 0) {
                reprData.type = type;
                reprData.ss = type.st.REPR.get_storage_spec(tc, type.st);
            }
            st.REPRData = reprData;
        }
    }
}
