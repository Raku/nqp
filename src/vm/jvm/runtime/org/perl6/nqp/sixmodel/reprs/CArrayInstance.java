package org.perl6.nqp.sixmodel.reprs;

import java.util.Arrays;

import com.sun.jna.Memory;
import com.sun.jna.Native;
import com.sun.jna.Pointer;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.NativeCallOps;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;

import org.perl6.nqp.sixmodel.SixModelObject;

import org.perl6.nqp.sixmodel.reprs.CArrayREPRData.ElemKind;
import org.perl6.nqp.sixmodel.reprs.NativeCall.ArgType;

public class CArrayInstance extends SixModelObject {
    public Pointer storage;
    public SixModelObject[] child_objs;
    public boolean managed;
    public long allocated;
    public long elems;

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

    public SixModelObject at_pos_boxed(ThreadContext tc, long index) {
        CArrayREPRData repr_data = (CArrayREPRData) st.REPRData;
        int intidx = (int) index;

        /* TODO: Die if this is a NUMERIC/INTEGER CArray. */

        if (managed && index >= elems)
            return repr_data.elem_type;
        else if (index >= allocated)
            expand(tc, index+1);

        if (child_objs[intidx] != null) {
            return child_objs[intidx];
        }
        else {
            SixModelObject obj = makeObject(tc, storage.getPointer(index*repr_data.jna_size));
            child_objs[intidx] = obj;
            return obj;
        }
    }

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

    public void bind_pos_boxed(ThreadContext tc, long index, SixModelObject value) {
        CArrayREPRData repr_data = (CArrayREPRData) st.REPRData;
        int intidx = (int) index;

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
            if (storage != null) {
                Memory old_storage = (Memory) storage;
                new_storage.write(0, old_storage.getByteArray(0, (int) old_storage.size()), 0, (int) old_storage.size());
            }
            storage = new_storage;
        }

        boolean complex = repr_data.elem_kind == ElemKind.CARRAY
            || repr_data.elem_kind == ElemKind.CPOINTER
            || repr_data.elem_kind == ElemKind.CSTRUCT
            || repr_data.elem_kind == ElemKind.STRING;

        if (complex) {
            child_objs = child_objs == null?
                new SixModelObject[(int) new_size]:
                Arrays.copyOf(child_objs, (int) new_size);
        }

        elems = new_size;
        allocated = new_size;
    }

    private SixModelObject makeObject(ThreadContext tc, Pointer ptr) {
        CArrayREPRData repr_data = (CArrayREPRData) st.REPRData;

        if (ptr == null)
            return repr_data.elem_type;

        switch (repr_data.elem_kind) {
        case STRING:
            return NativeCallOps.toNQPType(tc, ArgType.UTF8STR, repr_data.elem_type, ptr.getString(0));
        case CARRAY:
            return NativeCallOps.toNQPType(tc, ArgType.CARRAY, repr_data.elem_type, ptr);
        case CPOINTER:
            return NativeCallOps.toNQPType(tc, ArgType.CPOINTER, repr_data.elem_type, ptr);
        default:
            ExceptionHandling.dieInternal(tc, "CArray can only makeObject strings, arrays and pointers");
        }

        /* And a dummy return statement to placate Java's flow analysis. */
        return null;
    }
}
