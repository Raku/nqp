package org.perl6.nqp.sixmodel.reprs;

import java.util.HashMap;
import java.util.Map.Entry;

import com.sun.jna.Pointer;
import com.sun.jna.Structure;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.NativeCallOps;
import org.perl6.nqp.runtime.ThreadContext;

import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.sixmodel.reprs.CStructREPRData.AttrInfo;
import org.perl6.nqp.sixmodel.reprs.NativeCall.ArgType;

public class CStructInstance extends SixModelObject implements Refreshable {
    public Structure storage;
    /* XXX: Using a hash to store members is probably not an optimal solution.
     * Dynamically generating subclasses that have the appropriate members and
     * such is probably better, but that's harder to implement. */
    public HashMap<String, SixModelObject> memberCache = new HashMap<String, SixModelObject>();

    public void bind_attribute_boxed(ThreadContext tc, SixModelObject class_handle, String name, long hint, SixModelObject value) {
        CStructREPRData data = (CStructREPRData) class_handle.st.REPRData;
        AttrInfo info = data.fieldTypes.get(name);
        /* XXX: This'll break if we try to set a callback member. OTOH, it's
         * broken on Parrot too, so it's not a NativeCall regression as
         * such... */
        storage.writeField(name, NativeCallOps.toJNAType(tc, value, info.argType, null));
        memberCache.put(name, value);
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
        SixModelObject member = memberCache.get(name);
        if (member != null) return member;

        CStructREPRData data = (CStructREPRData) class_handle.st.REPRData;
        AttrInfo info = data.fieldTypes.get(name);
        member = NativeCallOps.toNQPType(tc, info.argType, info.type, storage.readField(name));
        memberCache.put(name, member);
        return member;
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

    public void refresh(ThreadContext tc) {
        CStructREPRData repr_data = (CStructREPRData) st.REPRData;

        // Recursively refresh our members.
        for (Entry<String, SixModelObject> entry: memberCache.entrySet()) {
            ArgType argType = repr_data.fieldTypes.get(entry.getKey()).argType;
            SixModelObject child = entry.getValue();
            if (argType == ArgType.CARRAY || argType == ArgType.CSTRUCT) {
                NativeCallOps.refresh(child, tc);
            }
        }

        /* This is the take a hammer to it approach. Just dump the entire
         * cache and rebuild everything on next read. Future versions should
         * compare the pointer in C memory and the one in the object in the
         * loop above and only dump the entries where the two are different.
         */
        memberCache.clear();
    }
}
