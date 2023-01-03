package org.raku.nqp.sixmodel.reprs;

import java.util.Arrays;

import com.sun.jna.Memory;
import com.sun.jna.Native;
import com.sun.jna.Pointer;
import com.sun.jna.Structure;
import com.sun.jna.Union;

import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.NativeCallOps;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;

import org.raku.nqp.sixmodel.SixModelObject;

import org.raku.nqp.sixmodel.reprs.CArrayREPRData.ElemKind;

public class CArrayInstance extends SixModelObject implements Refreshable {
    public Pointer storage;
    public SixModelObject[] child_objs;
    public boolean managed;
    public long allocated;
    public long elems;

    @Override
    public void at_pos_native(ThreadContext tc, long index) {
        CArrayREPRData repr_data = (CArrayREPRData) st.REPRData;

        if (managed && index >= elems) {
            if (repr_data.elem_kind == ElemKind.INTEGER) {
                tc.native_type = ThreadContext.NATIVE_INT;
                tc.native_i = 0;
            }
            else if (repr_data.elem_kind == ElemKind.NUMERIC) {
                tc.native_type = ThreadContext.NATIVE_NUM;
                tc.native_n = 0;
            }
            else {
                ExceptionHandling.dieInternal(tc, "CArray can only at_pos_native with ints and nums.");
            }
            return;
        }

        if (repr_data.elem_kind == ElemKind.INTEGER) {
            tc.native_type = ThreadContext.NATIVE_INT;
            if (repr_data.elem_size == 8) {
                tc.native_i = storage.getByte(index*repr_data.jna_size);
            }
            else if (repr_data.elem_size == 16) {
                tc.native_i = storage.getShort(index*repr_data.jna_size);
            }
            else if (repr_data.elem_size == 32) {
                tc.native_i = storage.getInt(index*repr_data.jna_size);
            }
            else if (repr_data.elem_size == 64) {
                tc.native_i = storage.getLong(index*repr_data.jna_size);
            }
        }
        else if (repr_data.elem_kind == ElemKind.NUMERIC) {
            tc.native_type = ThreadContext.NATIVE_NUM;
            if (repr_data.elem_size == 32) {
                tc.native_n = storage.getFloat(index*repr_data.jna_size);
            }
            else if (repr_data.elem_size == 64) {
                tc.native_n = storage.getDouble(index*repr_data.jna_size);
            }
        }
        else {
            ExceptionHandling.dieInternal(tc, "CArray can only at_pos_native with ints and nums.");
        }
    }

    @Override
    public SixModelObject at_pos_boxed(ThreadContext tc, long index) {
        CArrayREPRData repr_data = (CArrayREPRData) st.REPRData;
        int intidx = (int) index;

        /* TODO: Die if this is a NUMERIC/INTEGER CArray. */

        if (managed && index >= elems)
            return repr_data.elem_type;
        else if (index >= allocated)
            expand(tc, index+1);

        if (Ops.isnull(child_objs[intidx]) == 0) {
            return child_objs[intidx];
        }
        else {
            SixModelObject obj = makeObject(tc, storage.getPointer(index*repr_data.jna_size));
            child_objs[intidx] = obj;
            return obj;
        }
    }

    @Override
    public void bind_pos_native(ThreadContext tc, long index) {
        CArrayREPRData repr_data = (CArrayREPRData) st.REPRData;

        if (index >= allocated) {
            expand(tc, index+1);
        }

        if (repr_data.elem_kind == ElemKind.INTEGER) {
            tc.native_type = ThreadContext.NATIVE_INT;
            if (repr_data.elem_size == 8) {
                storage.setByte(index*repr_data.jna_size, (byte) tc.native_i);
            }
            else if (repr_data.elem_size == 16) {
                storage.setShort(index*repr_data.jna_size, (short) tc.native_i);
            }
            else if (repr_data.elem_size == 32) {
                storage.setInt(index*repr_data.jna_size, (int) tc.native_i);
            }
            else if (repr_data.elem_size == 64) {
                storage.setLong(index*repr_data.jna_size, tc.native_i);
            }
        }
        else if (repr_data.elem_kind == ElemKind.NUMERIC) {
            tc.native_type = ThreadContext.NATIVE_NUM;
            if (repr_data.elem_size == 32) {
                storage.setFloat(index*repr_data.jna_size, (float) tc.native_n);
            }
            else if (repr_data.elem_size == 64) {
                storage.setDouble(index*repr_data.jna_size, tc.native_n);
            }
        }
        else {
            ExceptionHandling.dieInternal(tc, "CArray can only bind_pos_native with ints and nums.");
        }
    }

    @Override
    public void bind_pos_boxed(ThreadContext tc, long index, SixModelObject value) {
        CArrayREPRData repr_data = (CArrayREPRData) st.REPRData;
        int intidx = (int) index;
        value = Ops.decont(value, tc);

        /* TODO: Die if this is a NUMERIC/INTEGER CArray. */
        if (index >= allocated)
            expand(tc, index+1);

        Pointer ptr = null;
        if (Ops.isconcrete(value, tc) != 0) {
            switch (repr_data.elem_kind) {
            case STRING:
                byte[] bytes = Native.toByteArray(value.get_str(tc));
                ptr = new Memory(bytes.length);
                ptr.write(0, bytes, 0, bytes.length);
                break;
            case CARRAY:
                ptr = ((CArrayInstance) value).storage;
                break;
            case CSTRUCT:
                ptr = ((CStructInstance) value).storage.getPointer();
                break;
            case CPPSTRUCT:
                ptr = ((CPPStructInstance) value).storage.getPointer();
                break;
            case CUNION:
                ptr = ((CUnionInstance) value).storage.getPointer();
                break;
            case CPOINTER:
                ptr = ((CPointerInstance) value).pointer;
                break;
            default:
                ExceptionHandling.dieInternal(tc, "CArray.bind_pos_boxed reached its default case. This should never happen.");
            }
        }

        child_objs[intidx] = value;
        storage.setPointer(index*repr_data.jna_size, ptr);
    }

    private void expand(ThreadContext tc, long new_size) {
        CArrayREPRData repr_data = (CArrayREPRData) st.REPRData;

        if (managed) {
            Memory new_storage = new Memory(new_size*repr_data.jna_size);
            new_storage.clear();
            if (storage != null) {
                Memory old_storage = (Memory) storage;
                new_storage.write(0, old_storage.getByteArray(0, (int) old_storage.size()), 0, (int) old_storage.size());
            }
            storage = new_storage;
        }

        boolean complex = repr_data.elem_kind == ElemKind.CARRAY
            || repr_data.elem_kind == ElemKind.CPOINTER
            || repr_data.elem_kind == ElemKind.CSTRUCT
            || repr_data.elem_kind == ElemKind.CPPSTRUCT
            || repr_data.elem_kind == ElemKind.CUNION
            || repr_data.elem_kind == ElemKind.STRING;

        if (complex) {
            child_objs = child_objs == null?
                new SixModelObject[(int) new_size]:
                Arrays.copyOf(child_objs, (int) new_size);
        }

        elems = new_size;
        allocated = new_size;
    }

    @Override
    public long elems(ThreadContext tc) {
        return elems;
    }

    private SixModelObject makeObject(ThreadContext tc, Pointer ptr) {
        CArrayREPRData repr_data = (CArrayREPRData) st.REPRData;

        if (ptr == null)
            return repr_data.elem_type;

        switch (repr_data.elem_kind) {
        case STRING:
            return NativeCallOps.toNQPType(tc, NativeCall.ArgType.UTF8STR, repr_data.elem_type, ptr.getString(0));
        case CARRAY:
            return NativeCallOps.toNQPType(tc, NativeCall.ArgType.CARRAY, repr_data.elem_type, ptr);
        case CPOINTER:
            return NativeCallOps.toNQPType(tc, NativeCall.ArgType.CPOINTER, repr_data.elem_type, ptr);
        case CSTRUCT: {
            Class<Structure> structClass = (Class<Structure>) ((CStructREPRData) repr_data.elem_type.st.REPRData).structureClass;
            return NativeCallOps.toNQPType(tc, NativeCall.ArgType.CSTRUCT, repr_data.elem_type, Structure.newInstance(structClass, ptr));
        }
        case CPPSTRUCT: {
            Class<Structure> structClass = (Class<Structure>) ((CPPStructREPRData) repr_data.elem_type.st.REPRData).structureClass;
            return NativeCallOps.toNQPType(tc, NativeCall.ArgType.CPPSTRUCT, repr_data.elem_type, Structure.newInstance(structClass, ptr));
        }
        case CUNION: {
            Class<Union> structClass = (Class<Union>) ((CUnionREPRData) repr_data.elem_type.st.REPRData).structureClass;
            return NativeCallOps.toNQPType(tc, NativeCall.ArgType.CUNION, repr_data.elem_type, Union.newInstance(structClass, ptr));
        }
        default:
            ExceptionHandling.dieInternal(tc, "CArray can only makeObject strings, arrays, structs and pointers");
        }

        /* And a dummy return statement to placate Java's flow analysis. */
        return null;
    }

    @Override
    public void refresh(ThreadContext tc) {
        CArrayREPRData repr_data = (CArrayREPRData) st.REPRData;

        // No need to refresh if we don't have any cached children.
        if (child_objs == null) return;

        if (repr_data.elem_kind == ElemKind.CARRAY
         || repr_data.elem_kind == ElemKind.CSTRUCT
         || repr_data.elem_kind == ElemKind.CPPSTRUCT
         || repr_data.elem_kind == ElemKind.CUNION) {
            refreshComplex(tc);
        }
        else {
            refreshSimple(tc);
        }
    }

    /**
     * Refresh logic for CArray of complex (CArray or CStruct) types.
     */
    private void refreshComplex(ThreadContext tc) {
        for (int i = 0; i < child_objs.length; i++) {
            SixModelObject child = child_objs[i];

            // No cache for this element? Go to next.
            if (Ops.isnull(child) == 1) continue;

            /* Invalidate cache and recursively refresh child too. Future
             * versions here should only invalidate the cache if C memory has
             * a different pointer than the cached object.
             */
            child_objs[i] = null;
            NativeCallOps.refresh(child, tc);
        }
    }

    /**
     * Refresh logic for CArray of simple (CPointer) types.
     */
    private void refreshSimple(ThreadContext tc) {
        for (int i = 0; i < child_objs.length; i++) {
            SixModelObject child = child_objs[i];

            // No cache for this element? Go to next.
            if (Ops.isnull(child) == 1) continue;

            /* Invalidate cache. Future versions here should only invalidate
             * the cache if C memory has a different pointer than the cached
             * object.
             */
            child_objs[i] = null;
        }
    }
}
