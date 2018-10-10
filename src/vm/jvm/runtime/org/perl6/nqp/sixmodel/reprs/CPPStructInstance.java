package org.perl6.nqp.sixmodel.reprs;

import java.util.HashMap;
import java.util.Map.Entry;

import com.sun.jna.Union;
import com.sun.jna.Structure;
import com.sun.jna.Pointer;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.NativeCallOps;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.CPPStructREPRData.AttrInfo;
import org.perl6.nqp.sixmodel.reprs.NativeCall.ArgType;

public class CPPStructInstance extends SixModelObject implements Refreshable {

    public Structure storage;
    // TODO
    // Using a hash to store members is probably not an optimal solution.
    // Dynamically generating subclasses that have the appropriate members
    // and such is probably better, but that's harder to implement.

    private HashMap<String, SixModelObject> memberCache = new HashMap<>();

    public void bind_attribute_boxed(
        ThreadContext tc,
        SixModelObject class_handle,
        String name,
        long hint,
        SixModelObject value
    ) {

        final CPPStructREPRData data = (CPPStructREPRData) class_handle.st.REPRData;
        final AttrInfo info = data.fieldTypes.get(name);

        // TODO
        // This'll break if we try to set a callback member.
        // OTOH, it's broken on Parrot too, so it's not a NativeCall
        // regression as such...

        final ArgType type = info.argType;
        Object o = NativeCallOps.toJNAType(tc, value, type, null);

        if (info.inlined == 0) {
            if (type == ArgType.CSTRUCT || type == ArgType.CPPSTRUCT) {
                o = ((Structure)o).getPointer();
            } else if (type == ArgType.CUNION) {
                o = ((Union)o).getPointer();
            }
        }

        storage.writeField(name, o);
        memberCache.put(name, value);
    }

    public void bind_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        final CPPStructREPRData data = (CPPStructREPRData) class_handle.st.REPRData;
        final AttrInfo info = data.fieldTypes.get(name);
        final Object value;

        switch (info.argType) {
        case CHAR:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = (byte) tc.native_i;
            break;
        case SHORT:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = (short) tc.native_i;
            break;
        case INT:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = (int) tc.native_i;
            break;
        case LONG:
            tc.native_type = ThreadContext.NATIVE_INT;
            value = tc.native_i;
            break;
        case FLOAT:
            tc.native_type = ThreadContext.NATIVE_NUM;
            value = (float) tc.native_n;
            break;
        case DOUBLE:
            tc.native_type = ThreadContext.NATIVE_NUM;
            value = tc.native_n;
            break;
        default:
            ExceptionHandling.dieInternal(tc, String.format("CPPStruct.bind_attribute_native: Can't handle %s", info.argType));
            value = null;
        }

        storage.writeField(name, value);
    }

    public SixModelObject get_attribute_boxed(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        final SixModelObject cachedMember = memberCache.get(name);
        if (cachedMember != null) {
            return cachedMember;
        }

        final CPPStructREPRData data = (CPPStructREPRData) class_handle.st.REPRData;
        final AttrInfo info = data.fieldTypes.get(name);

        Object o = storage.readField(name);
        if (info.inlined == 0) {
            if (info.argType == ArgType.CSTRUCT) {
                o = Structure.newInstance(((CStructREPRData)info.type.st.REPRData).structureClass, ((Pointer)o));
            } else if (info.argType == ArgType.CPPSTRUCT) {
                o = Structure.newInstance(((CPPStructREPRData)info.type.st.REPRData).structureClass, ((Pointer)o));
            } else if (info.argType == ArgType.CUNION) {
                o = Union.newInstance(((CUnionREPRData)info.type.st.REPRData).structureClass, ((Pointer)o));
            }
        }

        final SixModelObject member = NativeCallOps.toNQPType(tc, info.argType, info.type, o);

        memberCache.put(name, member);

        return member;
    }

    public void get_attribute_native(ThreadContext tc, SixModelObject class_handle, String name, long hint) {
        final CPPStructREPRData data = (CPPStructREPRData) class_handle.st.REPRData;
        final AttrInfo info = data.fieldTypes.get(name);
        final Object o = storage.readField(name);

        switch (info.argType) {
        case CHAR:
            tc.native_type = ThreadContext.NATIVE_INT;
            tc.native_i = (Byte) o;
            break;
        case SHORT:
            tc.native_type = ThreadContext.NATIVE_INT;
            tc.native_i = (Short) o;
            break;
        case INT:
            tc.native_type = ThreadContext.NATIVE_INT;
            tc.native_i = (Integer) o;
            break;
        case LONG:
            tc.native_type = ThreadContext.NATIVE_INT;
            tc.native_i = (Long) o;
            break;
        case FLOAT:
            tc.native_type = ThreadContext.NATIVE_NUM;
            tc.native_n = (Float) o;
            break;
        case DOUBLE:
            tc.native_type = ThreadContext.NATIVE_NUM;
            tc.native_n = (Double) o;
            break;
        default:
            ExceptionHandling.dieInternal(tc, String.format("CPPStruct.get_attribute_native: Can't handle %s", info.argType));
        }
    }

    public void refresh(ThreadContext tc) {
        final CPPStructREPRData data = (CPPStructREPRData) st.REPRData;

        // Recursively refresh our members.
        for (Entry<String, SixModelObject> entry: memberCache.entrySet()) {
            final ArgType argType = data.fieldTypes.get(entry.getKey()).argType;
            final SixModelObject child = entry.getValue();
            if (argType == ArgType.CARRAY
             || argType == ArgType.CSTRUCT
             || argType == ArgType.CPPSTRUCT
             || argType == ArgType.CUNION
            ) {
                NativeCallOps.refresh(child, tc);
            }
        }

        // This is the take a hammer to it approach.
        // Just dump the entire cache and rebuild everything on next read.
        // Future versions should compare the pointer in C memory
        // and the one in the object in the loop above and only
        // dump the entries where the two are different.
        memberCache.clear();
    }
}
