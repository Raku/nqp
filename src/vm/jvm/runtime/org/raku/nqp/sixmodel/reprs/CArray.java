package org.raku.nqp.sixmodel.reprs;

import com.sun.jna.Native;

import org.raku.nqp.runtime.CallSiteDescriptor;
import static org.raku.nqp.runtime.CallSiteDescriptor.*;
import org.raku.nqp.runtime.ExceptionHandling;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;

import org.raku.nqp.sixmodel.REPR;
import org.raku.nqp.sixmodel.SerializationReader;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.sixmodel.StorageSpec;
import org.raku.nqp.sixmodel.STable;
import org.raku.nqp.sixmodel.TypeObject;

import org.raku.nqp.sixmodel.reprs.CArrayREPRData.ElemKind;

public class CArray extends REPR {
    @Override
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        st.REPRData = null; /* No REPR data yet. */
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    @Override
    public SixModelObject allocate(ThreadContext tc, STable st) {
        CArrayInstance obj = new CArrayInstance();
        obj.managed = true;

        if (st.REPRData == null)
            fillREPRData(tc, st);

        obj.st = st;
        return obj;
    }

    private void fillREPRData(ThreadContext tc, STable st) {
        CArrayREPRData data = new CArrayREPRData();

        SixModelObject meth = Ops.findmethodNonFatal(st.WHAT, "of", tc);
        if (Ops.isnull(meth) == 1)
            ExceptionHandling.dieInternal(tc, "CArray representation expects an 'of' method, specifying the element type");

        Ops.invokeDirect(tc, meth, new CallSiteDescriptor(new byte[] { ARG_OBJ }, null), new Object[] { st.WHAT });
        data.elem_type = Ops.decont(Ops.result_o(tc.resultFrame()), tc);
        if (Ops.isnull(data.elem_type) == 1)
            ExceptionHandling.dieInternal(tc, "CArray representation expects a non-null return value from the 'of' method, specifying the element type");

        StorageSpec ss = data.elem_type.st.REPR.get_storage_spec(tc, data.elem_type.st);
        data.elem_size = ss.bits;
        if (ss.boxed_primitive == StorageSpec.BP_INT) {
            if (ss.bits == 8) {
                data.jna_size = Native.getNativeSize(Byte.class);
            }
            else if (ss.bits == 16) {
                data.jna_size = Native.getNativeSize(Short.class);
            }
            else if (ss.bits == 32) {
                data.jna_size = Native.getNativeSize(Integer.class);
            }
            else if (ss.bits == 64) {
                data.jna_size = Native.getNativeSize(Long.class);
            }
            else {
                ExceptionHandling.dieInternal(tc, "CArray can only handle 8, 16, 32 and 64 bit ints.");
            }
            data.elem_kind = ElemKind.INTEGER;
        }
        else if (ss.boxed_primitive == StorageSpec.BP_NUM) {
            if (ss.bits == 32) {
                data.jna_size = Native.getNativeSize(Float.class);
            }
            else if (ss.bits == 64) {
                data.jna_size = Native.getNativeSize(Double.class);
            }
            else {
                ExceptionHandling.dieInternal(tc, "CArray can only handle 32 and 64 bit floats.");
            }
            data.elem_kind = ElemKind.NUMERIC;
        }
        else if ((ss.can_box & StorageSpec.CAN_BOX_STR) != 0) {
            data.jna_size = Native.POINTER_SIZE;
            data.elem_kind = ElemKind.STRING;
        }
        else if (data.elem_type.st.REPR instanceof CPointer) {
            data.jna_size = Native.POINTER_SIZE;
            data.elem_kind = ElemKind.CPOINTER;
        }
        else if (data.elem_type.st.REPR instanceof CArray) {
            data.jna_size = Native.POINTER_SIZE;
            data.elem_kind = ElemKind.CARRAY;
        }
        else if (data.elem_type.st.REPR instanceof CStruct) {
            data.jna_size = Native.POINTER_SIZE;
            data.elem_kind = ElemKind.CSTRUCT;
        }
        else if (data.elem_type.st.REPR instanceof CPPStruct) {
            data.jna_size = Native.POINTER_SIZE;
            data.elem_kind = ElemKind.CPPSTRUCT;
        }
        else if (data.elem_type.st.REPR instanceof CUnion) {
            data.jna_size = Native.POINTER_SIZE;
            data.elem_kind = ElemKind.CUNION;
        }
        else {
            /* TODO: Remaining cases. */
            ExceptionHandling.dieInternal(tc, "CArray only handles ints, nums, strings, CArrays, CPointers, CStructs, CPPStructs and CUnions so far.");
        }

        st.REPRData = data;
    }

    @Override
    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        /* This REPR can't be serialized. */
        ExceptionHandling.dieInternal(tc, "Can't deserialize_stub a CArray object.");

        return null;
    }

    @Override
    public void deserialize_finish(ThreadContext tc, STable st, SerializationReader reader, SixModelObject obj) {
        ExceptionHandling.dieInternal(tc, "Can't deserialize_finish a CArray object.");
    }
}
