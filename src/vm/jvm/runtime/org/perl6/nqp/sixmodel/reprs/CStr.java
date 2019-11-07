package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.TypeObject;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;

public class CStr extends REPR {
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);

        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;

        CStrREPRData rd = new CStrREPRData();
        rd.type = REPR.P6STR_C_TYPE_CHAR;
        st.REPRData = rd;

        return st.WHAT;
    }

    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
        CStrREPRData   rd         = (CStrREPRData) st.REPRData;
        SixModelObject stringInfo = repr_info.at_key_boxed(tc, "string");

        if (stringInfo != null) {
            SixModelObject nativetype = stringInfo.at_key_boxed(tc, "nativetype");
            if (nativetype != null)
                rd.type = (byte) nativetype.get_int(tc);
            else
                rd.type = REPR.P6STR_C_TYPE_CHAR;
        }
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        SixModelObject obj = new CStrInstance();
        obj.st = st;
        return obj;
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        /* This REPR can't be serialized. */
        ExceptionHandling.dieInternal(tc, "Can't deserialize_stub a CStr object.");

        return null;
    }

    public void deserialize_finish(ThreadContext tc, STable st, SerializationReader reader, SixModelObject obj) {
        ExceptionHandling.dieInternal(tc, "Can't deserialize_finish a CStr object.");
    }

    /**
     * REPR data serialization. Serializes the per-type representation data that
     * is attached to the supplied STable.
     */
    public void serialize_repr_data(ThreadContext tc, STable st, SerializationWriter writer) {
        CStrREPRData rd = (CStrREPRData) st.REPRData;
        writer.writeInt(rd.type);
    }

    /**
     * REPR data deserialization. Deserializes the per-type representation data and
     * attaches it to the supplied STable.
     */
    public void deserialize_repr_data(ThreadContext tc, STable st, SerializationReader reader) {
        CStrREPRData rd = new CStrREPRData();

        if (reader.version >= 12)
            rd.type = (byte) reader.readLong();
        else
            rd.type = REPR.P6STR_C_TYPE_CHAR;

        st.REPRData = rd;
    }
}
