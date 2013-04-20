package org.perl6.nqp.runtime;

import java.lang.invoke.*;
import java.lang.invoke.MethodHandles.Lookup;

import org.perl6.nqp.sixmodel.SixModelObject;

public class IndyBootstrap {
	public static CallSite wval(Lookup caller, String name, MethodType type) {
		try {
			/* Look up wval resolver method. */
			MethodType resType = MethodType.methodType(SixModelObject.class,
					MutableCallSite.class, String.class, long.class, ThreadContext.class);
			MethodHandle res = caller.findStatic(IndyBootstrap.class, "wvalResolve", resType);
			
			/* Create a mutable callsite, and curry the resolve with it. */
			MutableCallSite cs = new MutableCallSite(type);
			cs.setTarget(res.bindTo(cs));
			
			/* Produce callsite; it'll be updated with the resolved WVal upon the
			 * first invocation. */
			return cs;
		}
		catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	public static SixModelObject wvalResolve(MutableCallSite cs, String sc, long idx, ThreadContext tc) {
		/* Look up the WVal. */
		SixModelObject res = tc.gc.scs.get(sc).root_objects.get((int)idx);
		
		/* Update this callsite, so that we never run the lookup again and instead
		 * just always use the resolved object. Discards incoming arguments, as
		 * they are no longer needed. */
		cs.setTarget(MethodHandles.dropArguments(
				MethodHandles.constant(SixModelObject.class, res),
				0, String.class, long.class, ThreadContext.class));
		
		/* Hand back the resulting object, for this first call. */
		return res;
	}
	
}
