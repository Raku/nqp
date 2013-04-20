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

public class VMArray extends REPR {
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        SixModelObject obj;
        if (st.REPRData == null) {
        	obj = new VMArrayInstance();
        }
        else {
        	switch ((short)st.REPRData) {
        	case StorageSpec.BP_INT:
        		obj = new VMArrayInstance_i();
        		break;
        	case StorageSpec.BP_NUM:
        		obj = new VMArrayInstance_n();
        		break;
        	case StorageSpec.BP_STR:
        		obj = new VMArrayInstance_s();
        		break;
        	default:
        		throw ExceptionHandling.dieInternal(tc, "Invalid REPR data for VMArray");
        	}
        }
        obj.st = st;
        return obj;
    }
    
    public void compose(ThreadContext tc, STable st, SixModelObject repr_info) {
    	SixModelObject arrayInfo = repr_info.at_key_boxed(tc, "array");
    	if (arrayInfo != null) {
        	SixModelObject type = arrayInfo.at_key_boxed(tc, "type");
        	StorageSpec ss = type.st.REPR.get_storage_spec(tc, type.st);
        	switch (ss.boxed_primitive) {
        	case StorageSpec.BP_INT:
        	case StorageSpec.BP_NUM:
        	case StorageSpec.BP_STR:
        		st.REPRData = ss.boxed_primitive;
        		break;
        	default:
        		if (ss.inlineable != StorageSpec.REFERENCE)
        			throw ExceptionHandling.dieInternal(tc, "VMArray can only store native int/num/str or reference types");
        	}
        }
    }

	public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
		SixModelObject obj;
		if (st.REPRData == null) {
        	obj = new VMArrayInstance();
        }
        else {
        	switch ((short)st.REPRData) {
        	case StorageSpec.BP_INT:
        		obj = new VMArrayInstance_i();
        		break;
        	case StorageSpec.BP_NUM:
        		obj = new VMArrayInstance_n();
        		break;
        	case StorageSpec.BP_STR:
        		obj = new VMArrayInstance_s();
        		break;
        	default:
        		throw ExceptionHandling.dieInternal(tc, "Invalid REPR data for VMArray");
        	}
        }
        obj.st = st;
        return obj;
	}

	public void deserialize_finish(ThreadContext tc, STable st,
			SerializationReader reader, SixModelObject obj) {
		int elems = reader.readInt32();
		if (st.REPRData == null) {
			for (int i = 0; i < elems; i++)
				obj.bind_pos_boxed(tc, i, reader.readRef());
		}
		else {
			for (long i = 0; i < elems; i++) {
	    		switch ((short)obj.st.REPRData) {
	        	case StorageSpec.BP_INT:
	        		tc.native_i = reader.readLong();
	        		break;
	        	case StorageSpec.BP_NUM:
	        		tc.native_n = reader.readDouble();
	        		break;
	        	case StorageSpec.BP_STR:
	        		tc.native_s = reader.readStr();
	        		break;
	        	default:
	        		throw ExceptionHandling.dieInternal(tc, "Invalid REPR data for VMArray");
	        	}
	    		obj.bind_pos_native(tc, i);
    		}
		}
	}
	
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
    	int elems = (int)obj.elems(tc);
    	writer.writeInt32(elems);
    	if (obj.st.REPRData == null) {
    		for (long i = 0; i < elems; i++)
    			writer.writeRef(obj.at_pos_boxed(tc, i));
    	}
    	else {
    		for (long i = 0; i < elems; i++) {
	    		obj.at_pos_native(tc, i);
	    		switch ((short)obj.st.REPRData) {
	        	case StorageSpec.BP_INT:
	        		writer.writeInt(tc.native_i);
	        		break;
	        	case StorageSpec.BP_NUM:
	        		writer.writeNum(tc.native_n);
	        		break;
	        	case StorageSpec.BP_STR:
	        		writer.writeStr(tc.native_s);
	        		break;
	        	default:
	        		throw ExceptionHandling.dieInternal(tc, "Invalid REPR data for VMArray");
	        	}
    		}
        }
    }
}
