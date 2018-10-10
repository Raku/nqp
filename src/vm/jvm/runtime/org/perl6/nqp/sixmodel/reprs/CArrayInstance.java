package org.perl6.nqp.sixmodel.reprs;

import java.util.Arrays;

import com.sun.jna.Memory;
import com.sun.jna.Native;
import com.sun.jna.Pointer;
import com.sun.jna.Structure;
import com.sun.jna.Union;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.NativeCallOps;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.CArrayREPRData.ElemKind;
import org.perl6.nqp.sixmodel.reprs.NativeCall.ArgType;

public class CArrayInstance extends SixModelObject implements Refreshable {

    public Pointer storage;
    public boolean managed;
    public long elems;

    private SixModelObject[] childObjects;
    private long allocated;


    public void at_pos_native(ThreadContext tc, long index) {
        final CArrayREPRData REPRData = (CArrayREPRData) st.REPRData;

        if (managed && index >= elems) {
            if (REPRData.elem_kind == ElemKind.INTEGER) {
                tc.native_type = ThreadContext.NATIVE_INT;
                tc.native_i = 0;
            } else if (REPRData.elem_kind == ElemKind.NUMERIC) {
                tc.native_type = ThreadContext.NATIVE_NUM;
                tc.native_n = 0;
            } else {
                ExceptionHandling.dieInternal(tc, "CArray can only at_pos_native with ints and nums.");
            }
            return;
        }

        if (REPRData.elem_kind == ElemKind.INTEGER) {
            tc.native_type = ThreadContext.NATIVE_INT;

            if (REPRData.elem_size == 8) {
                tc.native_i = storage.getByte(index*REPRData.jna_size);
            } else if (REPRData.elem_size == 16) {
                tc.native_i = storage.getShort(index*REPRData.jna_size);
            } else if (REPRData.elem_size == 32) {
                tc.native_i = storage.getInt(index*REPRData.jna_size);
            } else if (REPRData.elem_size == 64) {
                tc.native_i = storage.getLong(index*REPRData.jna_size);
            }
        } else if (REPRData.elem_kind == ElemKind.NUMERIC) {
            tc.native_type = ThreadContext.NATIVE_NUM;

            if (REPRData.elem_size == 32) {
                tc.native_n = storage.getFloat(index*REPRData.jna_size);
            } else if (REPRData.elem_size == 64) {
                tc.native_n = storage.getDouble(index*REPRData.jna_size);
            }
        } else {
            ExceptionHandling.dieInternal(tc, "CArray can only at_pos_native with ints and nums.");
        }
    }

    public SixModelObject at_pos_boxed(ThreadContext tc, long index) {
        final CArrayREPRData REPRData = (CArrayREPRData) st.REPRData;

        // TODO: die if this is a NUMERIC/INTEGER CArray

        if (managed && index >= elems) {
            return REPRData.elem_type;
        }

        if (index >= allocated) {
            expand(tc, index + 1);
        }

        if (childObjects[(int)index] != null) {
            return childObjects[(int)index];
        }

        final SixModelObject obj = makeObject(tc, storage.getPointer(index*REPRData.jna_size));
        childObjects[(int)index] = obj;
        return obj;
    }

    public void bind_pos_native(ThreadContext tc, long index) {
        final CArrayREPRData REPRData = (CArrayREPRData) st.REPRData;

        if (index >= allocated) {
            expand(tc, index+1);
        }

        if (REPRData.elem_kind == ElemKind.INTEGER) {
            tc.native_type = ThreadContext.NATIVE_INT;

            if (REPRData.elem_size == 8) {
                storage.setByte(index*REPRData.jna_size, (byte) tc.native_i);
            } else if (REPRData.elem_size == 16) {
                storage.setShort(index*REPRData.jna_size, (short) tc.native_i);
            } else if (REPRData.elem_size == 32) {
                storage.setInt(index*REPRData.jna_size, (int) tc.native_i);
            } else if (REPRData.elem_size == 64) {
                storage.setLong(index*REPRData.jna_size, tc.native_i);
            }
        } else if (REPRData.elem_kind == ElemKind.NUMERIC) {
            tc.native_type = ThreadContext.NATIVE_NUM;

            if (REPRData.elem_size == 32) {
                storage.setFloat(index*REPRData.jna_size, (float) tc.native_n);
            } else if (REPRData.elem_size == 64) {
                storage.setDouble(index*REPRData.jna_size, tc.native_n);
            }
        } else {
            ExceptionHandling.dieInternal(tc, "CArray can only bind_pos_native with ints and nums.");
        }
    }

    public void bind_pos_boxed(ThreadContext tc, long index, SixModelObject value) {
        final CArrayREPRData repr_data = (CArrayREPRData) st.REPRData;
        value = Ops.decont(value, tc);

        // TODO: die if this is a NUMERIC/INTEGER CArray.

        if (index >= allocated) {
            expand(tc, index + 1);
        }

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

        childObjects[(int) index] = value;
        storage.setPointer(index*repr_data.jna_size, ptr);
    }

    private void expand(ThreadContext tc, long new_size) {
        final CArrayREPRData REPRData = (CArrayREPRData) st.REPRData;

        if (managed) {
            final Memory newStorage = new Memory(new_size*REPRData.jna_size);
            newStorage.clear();
            if (storage != null) {
                final Memory oldStorage = (Memory) storage;
                newStorage.write(0, oldStorage.getByteArray(0, (int) oldStorage.size()), 0, (int) oldStorage.size());
            }
            storage = newStorage;
        }

        final boolean complex =
            REPRData.elem_kind == ElemKind.CARRAY
            || REPRData.elem_kind == ElemKind.CPOINTER
            || REPRData.elem_kind == ElemKind.CSTRUCT
            || REPRData.elem_kind == ElemKind.CPPSTRUCT
            || REPRData.elem_kind == ElemKind.CUNION
            || REPRData.elem_kind == ElemKind.STRING;

        if (complex) {
            childObjects = (childObjects == null)
                ? new SixModelObject[(int) new_size]
                : Arrays.copyOf(childObjects, (int) new_size);
        }

        elems = new_size;
        allocated = new_size;
    }

    public long elems(ThreadContext tc) {
        return elems;
    }

    private SixModelObject makeObject(ThreadContext tc, Pointer ptr) {
        final CArrayREPRData REPRData = (CArrayREPRData) st.REPRData;

        if (ptr == null) {
            return REPRData.elem_type;
        }

        switch (REPRData.elem_kind) {
        case STRING:
            return NativeCallOps.toNQPType(tc, ArgType.UTF8STR, REPRData.elem_type, ptr.getString(0));
        case CARRAY:
            return NativeCallOps.toNQPType(tc, ArgType.CARRAY, REPRData.elem_type, ptr);
        case CPOINTER:
            return NativeCallOps.toNQPType(tc, ArgType.CPOINTER, REPRData.elem_type, ptr);
        case CSTRUCT: {
            Class<?> structClass = ((CStructREPRData) REPRData.elem_type.st.REPRData).structureClass;
            return NativeCallOps.toNQPType(tc, ArgType.CSTRUCT, REPRData.elem_type, Structure.newInstance(structClass, ptr));
        }
        case CPPSTRUCT: {
            Class<?> structClass = ((CPPStructREPRData) REPRData.elem_type.st.REPRData).structureClass;
            return NativeCallOps.toNQPType(tc, ArgType.CPPSTRUCT, REPRData.elem_type, Structure.newInstance(structClass, ptr));
        }
        case CUNION: {
            Class<?> structClass = ((CUnionREPRData) REPRData.elem_type.st.REPRData).structureClass;
            return NativeCallOps.toNQPType(tc, ArgType.CUNION, REPRData.elem_type, Union.newInstance(structClass, ptr));
        }
        default:
            ExceptionHandling.dieInternal(tc, "CArray can only makeObject strings, arrays, structs and pointers");
        }

        // and a dummy return statement to placate Java's flow analysis.
        return null;
    }

    public void refresh(ThreadContext tc) {
        final CArrayREPRData REPRData = (CArrayREPRData) st.REPRData;

        // No need to refresh if we don't have any cached children.
        if (childObjects == null) return;

        if (REPRData.elem_kind == ElemKind.CARRAY
         || REPRData.elem_kind == ElemKind.CSTRUCT
         || REPRData.elem_kind == ElemKind.CPPSTRUCT
         || REPRData.elem_kind == ElemKind.CUNION
        ) {
            refreshComplex(tc);
        } else {
            refreshSimple(tc);
        }
    }

    /**
     * Refresh logic for CArray of complex (CArray or CStruct) types.
     */
    private void refreshComplex(ThreadContext tc) {
        for (int i = 0; i < childObjects.length; i++) {
            final SixModelObject child = childObjects[i];

            // No cache for this element? Go to next.
            if (child == null) continue;

            // invalidate cache and recursively refresh child too.
            // future versions here should only invalidate the cache
            // if C memory has a different pointer than the cached object
            childObjects[i] = null;
            NativeCallOps.refresh(child, tc);
        }
    }

    /**
     * Refresh logic for CArray of simple (CPointer) types.
     */
    private void refreshSimple(ThreadContext tc) {
        for (int i = 0; i < childObjects.length; i++) {
            final SixModelObject child = childObjects[i];

            // No cache for this element? Go to next.
            if (child == null) continue;

            // invalidate cache.
            // future versions here should only invalidate the cache
            // if C memory has a different pointer than the cached object
            childObjects[i] = null;
        }
    }
}
