package org.raku.nqp.sixmodel.reprs;

import java.util.HashMap;
import java.util.Map.Entry;

import com.sun.jna.Union;
import com.sun.jna.Structure;
import com.sun.jna.Pointer;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.NativeCallOps;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;

import org.raku.nqp.sixmodel.SixModelObject;

import org.raku.nqp.sixmodel.reprs.NativeCall.ArgType;

public class CUnionInstance extends SixModelObject implements Refreshable {
    public Union storage;
    /* XXX: Using a hash to store members is probably not an optimal solution.
     * Dynamically generating subclasses that have the appropriate members and
     * such is probably better, but that's harder to implement. */
    public HashMap<String, SixModelObject> memberCache = new HashMap<String, SixModelObject>();

    @Override
    public void bind_attribute_boxed(ThreadContext tc, SixModelObject class_handle, String name, long hint, SixModelObject value) {
        CUnionREPRData data = (CUnionREPRData) class_handle.st.REPRData;
        CUnionREPRData.AttrInfo info = data.fieldTypes.get(name);
        /* XXX: This'll break if we try to set a callback member. OTOH, it's
         * broken on Parrot too, so it's not a NativeCall regression as
         * such... */
        ArgType type = info.argType;
        Object o     = NativeCallOps.toJNAType(tc, value, type, null);
        if (info.inlined == 0) {
            if (type == ArgType.CSTRUCT || type == ArgType.CPPSTRUCT) {
                type = ArgType.CPOINTER;
                o    = (Object)((Structure)o).getPointer();
            }
            else if (type == ArgType.CUNION) {
                type = ArgType.CPOINTER;
                o    = (Object)((Union)o).getPointer();
            }
        }
        storage.writeField(name, o);
        memberCache.put(name, value);
    }

    @Override
    public void bind_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        CUnionREPRData data = (CUnionREPRData) class_handle.st.REPRData;
        CUnionREPRData.AttrInfo info = data.fieldTypes.get(name);
        Object value;
        switch (info.argType) {
        case CHAR:
        case UCHAR:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = (byte) tc.native_i;
            break;
        case SHORT:
        case USHORT:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = (short) tc.native_i;
            break;
        case INT:
        case UINT:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = (int) tc.native_i;
            break;
        case LONG:
        case ULONG:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = (long) tc.native_i;
            break;
        case FLOAT:
            tc.native_type = ThreadContext.NATIVE_NUM;
            value = (float) tc.native_n;
            break;
        case DOUBLE:
            tc.native_type = ThreadContext.NATIVE_NUM;
            value = (double) tc.native_n;
            break;
        default:
            ExceptionHandling.dieInternal(tc, String.format("CUnion.bind_attribute_native: Can't handle %s", info.argType));
            value = null;
        }
        storage.writeField(name, value);
    }

    @Override
    public SixModelObject get_attribute_boxed(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        SixModelObject member = memberCache.get(name);
        if (Ops.isnull(member) == 0) return member;

        CUnionREPRData data = (CUnionREPRData) class_handle.st.REPRData;
        CUnionREPRData.AttrInfo info = data.fieldTypes.get(name);

        Object o = storage.readField(name);
        if (info.inlined == 0) {
            if (info.argType == ArgType.CSTRUCT) {
                Class<?> structClass = ((CStructREPRData)info.type.st.REPRData).structureClass;
                o                    = (Object)Structure.newInstance(structClass, ((Pointer)o));
            }
            else if (info.argType == ArgType.CPPSTRUCT) {
                Class<?> structClass = ((CPPStructREPRData)info.type.st.REPRData).structureClass;
                o                    = (Object)Structure.newInstance(structClass, ((Pointer)o));
            }
            else if (info.argType == ArgType.CUNION) {
                Class<?> structClass = ((CUnionREPRData)info.type.st.REPRData).structureClass;
                o                    = (Object)Union.newInstance(structClass, ((Pointer)o));
            }
        }

        member = NativeCallOps.toNQPType(tc, info.argType, info.type, o);
        memberCache.put(name, member);
        return member;
    }

    @Override
    public void get_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        CUnionREPRData data = (CUnionREPRData) class_handle.st.REPRData;
        CUnionREPRData.AttrInfo info = data.fieldTypes.get(name);

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
        case UCHAR: {
            tc.native_type = ThreadContext.NATIVE_INT;
            long val = ((Byte) o).byteValue();
            if (val < 0)
                val += 0x100;
            tc.native_i = val;
            break;
        }
        case USHORT: {
            tc.native_type = ThreadContext.NATIVE_INT;
            long val = ((Short) o).shortValue();
            if (val < 0)
                val += 0x10000;
            tc.native_i = val;
            break;
        }
        case UINT: {
            tc.native_type = ThreadContext.NATIVE_INT;
            long val = ((Integer) o).intValue();
            if (val < 0)
                val += 0x100000000L;
            tc.native_i = val;
            break;
        }
        case ULONG:
            /* TODO: handle unsignedness properly. */
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
            ExceptionHandling.dieInternal(tc, String.format("CUnion.get_attribute_native: Can't handle %s", info.argType));
        }
    }

    @Override
    public void refresh(ThreadContext tc) {
        CUnionREPRData repr_data = (CUnionREPRData) st.REPRData;

        // Recursively refresh our members.
        for (Entry<String, SixModelObject> entry: memberCache.entrySet()) {
            ArgType argType = repr_data.fieldTypes.get(entry.getKey()).argType;
            SixModelObject child = entry.getValue();
            if (argType == ArgType.CARRAY
             || argType == ArgType.CSTRUCT
             || argType == ArgType.CPPSTRUCT
             || argType == ArgType.CUNION) {
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
