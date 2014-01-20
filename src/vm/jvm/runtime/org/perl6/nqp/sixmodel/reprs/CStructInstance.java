package org.perl6.nqp.sixmodel.reprs;

import com.sun.jna.Structure;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.NativeCallOps;
import org.perl6.nqp.runtime.ThreadContext;

import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.sixmodel.reprs.CStructREPRData.AttrInfo;
import org.perl6.nqp.sixmodel.reprs.NativeCall.ArgType;

public class CStructInstance extends SixModelObject {
    public Structure storage;

    public void bind_attribute_boxed(ThreadContext tc, SixModelObject class_handle, String name, long hint, SixModelObject value) {
        CStructREPRData data = (CStructREPRData) class_handle.st.REPRData;
        AttrInfo info = data.fieldTypes.get(name);
        storage.writeField(name, NativeCallOps.toJNAType(tc, value, info.argType));
    }

    public void bind_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        CStructREPRData data = (CStructREPRData) class_handle.st.REPRData;
        AttrInfo info = data.fieldTypes.get(name);
        Object value;
        switch (info.argType) {
        case CHAR:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = new Byte((byte) tc.native_i);
            break;
        case SHORT:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = new Short((short) tc.native_i);
            break;
        case INT:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = new Integer((int) tc.native_i);
            break;
        case LONG:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = new Long((long) tc.native_i);
            break;
        case FLOAT:
            tc.native_type = ThreadContext.NATIVE_NUM;
            value = new Float((float) tc.native_n);
            break;
        case DOUBLE:
            tc.native_type = ThreadContext.NATIVE_NUM;
            value = new Double((double) tc.native_n);
            break;
        default:
            ExceptionHandling.dieInternal(tc, String.format("CStruct.bind_attribute_native: Can't handle %s", info.argType));
            value = null;
        }
        storage.writeField(name, value);
    }

    public SixModelObject get_attribute_boxed(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        CStructREPRData data = (CStructREPRData) class_handle.st.REPRData;
        AttrInfo info = data.fieldTypes.get(name);
        return makeObject(tc, info.type, info.argType, storage.readField(name));
    }

    public void get_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        CStructREPRData data = (CStructREPRData) class_handle.st.REPRData;
        AttrInfo info = data.fieldTypes.get(name);

        Object o = storage.readField(name);
        switch (info.argType) {
        case CHAR:
            tc.native_type = ThreadContext.NATIVE_INT;
            tc.native_i = ((Byte) o).byteValue();
            break;
        case SHORT:
            tc.native_type = ThreadContext.NATIVE_INT;
            tc.native_i = ((Short) o).shortValue();
            break;
        case INT:
            tc.native_type = ThreadContext.NATIVE_INT;
            tc.native_i = ((Integer) o).intValue();
            break;
        case LONG:
            tc.native_type = ThreadContext.NATIVE_INT;
            tc.native_i = ((Long) o).longValue();
            break;
        case FLOAT:
            tc.native_type = ThreadContext.NATIVE_NUM;
            tc.native_n = ((Float) o).floatValue();
            break;
        case DOUBLE:
            tc.native_type = ThreadContext.NATIVE_NUM;
            tc.native_n = ((Double) o).doubleValue();
            break;
        default:
            ExceptionHandling.dieInternal(tc, String.format("CStruct.get_attribute_native: Can't handle %s", info.argType));
        }
    }

    private SixModelObject makeObject(ThreadContext tc, SixModelObject type, ArgType argType, Object o) {
        ExceptionHandling.dieInternal(tc, "CStruct.makeObject NYI");
        return null;
    }
}
