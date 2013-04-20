package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.TypeObject;

public class NFA extends REPR {
	/* NFA constants. */
	public static final int EDGE_FATE             = 0;
	public static final int EDGE_EPSILON          = 1;
	public static final int EDGE_CODEPOINT        = 2;
	public static final int EDGE_CODEPOINT_NEG    = 3;
	public static final int EDGE_CHARCLASS        = 4;
	public static final int EDGE_CHARCLASS_NEG    = 5;
	public static final int EDGE_CHARLIST         = 6;
	public static final int EDGE_CHARLIST_NEG     = 7;
	public static final int EDGE_CODEPOINT_I      = 9;
	public static final int EDGE_CODEPOINT_I_NEG  = 10;
	
	public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
		STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
	}

	public SixModelObject allocate(ThreadContext tc, STable st) {
		NFAInstance obj = new NFAInstance();
        obj.st = st;
        return obj;
	}

	public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
		NFAInstance stub = new NFAInstance();
        stub.st = st;
        return stub;
	}

	public void deserialize_finish(ThreadContext tc, STable st,
			SerializationReader reader, SixModelObject obj) {
		throw ExceptionHandling.dieInternal(tc, "NFA deserialization NYI");
	}
}
