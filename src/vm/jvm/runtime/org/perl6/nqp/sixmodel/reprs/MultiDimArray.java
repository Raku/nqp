package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;
import org.perl6.nqp.sixmodel.TypeObject;

public class MultiDimArray extends REPR {
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        MultiDimArrayREPRData rd = (MultiDimArrayREPRData)st.REPRData;
        if (rd != null) {
            MultiDimArrayInstance obj = new MultiDimArrayInstance();
            obj.dimensions = new long[rd.numDimensions];
            obj.st = st;
            return obj;
        }
        else {
            throw ExceptionHandling.dieInternal(tc,
                 "Cannot allocate a multi-dim array type before it is composed");
        }
    }
    
    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        SixModelObject arrayInfo = repr_info.at_key_boxed(tc, "array");
        if (arrayInfo != null) {
            MultiDimArrayREPRData reprData = new MultiDimArrayREPRData();

            SixModelObject dims = arrayInfo.at_key_boxed(tc, "dimensions");
            if (dims == null)
                 throw ExceptionHandling.dieInternal(tc,
                    "MultiDimArray REPR must be composed with a number of dimensions");
            int dimensions = (int)dims.get_int(tc);
            if (dimensions < 1)
                throw ExceptionHandling.dieInternal(tc,
                     "MultiDimArray REPR must be composed with at least 1 dimension");
            reprData.numDimensions = dimensions;

            SixModelObject type = arrayInfo.at_key_boxed(tc, "type");
            StorageSpec ss = type != null ? type.st.REPR.get_storage_spec(tc, type.st) : null;
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

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        throw ExceptionHandling.dieInternal(tc, "deserialize NYI");
    }
    
    public void deserialize_finish(ThreadContext tc, STable st,
            SerializationReader reader, SixModelObject obj) {
        throw ExceptionHandling.dieInternal(tc, "deserialize NYI");
    }
    
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        throw ExceptionHandling.dieInternal(tc, "serialize NYI");
    }

    public StorageSpec get_value_storage_spec(ThreadContext tc, STable st) {
        return st.REPRData == null ? StorageSpec.BOXED : ((MultiDimArrayREPRData)st.REPRData).ss;
    }
    
    /**
     * REPR data serialization. Serializes the per-type representation data that
     * is attached to the supplied STable.
     */
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer)
    {
        throw ExceptionHandling.dieInternal(tc, "repr serialize NYI");
    }
    
    /**
     * REPR data deserialization. Deserializes the per-type representation data and
     * attaches it to the supplied STable.
     */
    public void deserialize_repr_data(ThreadContext tc, STable st, SerializationReader reader)
    {
        throw ExceptionHandling.dieInternal(tc, "repr deserialize NYI");
    }
}
