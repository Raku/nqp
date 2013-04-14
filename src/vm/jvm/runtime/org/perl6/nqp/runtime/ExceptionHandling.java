package org.perl6.nqp.runtime;

import java.util.ArrayList;
import java.util.List;

import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.VMExceptionInstance;

public class ExceptionHandling {
	/* Exception handler categories. */
	public static final int EX_CAT_CATCH = 1;
	public static final int EX_CAT_CONTROL = 2;
	public static final int EX_CAT_NEXT = 4;
	public static final int EX_CAT_REDO = 8;
	public static final int EX_CAT_LAST = 16;
	
	/* Exception handler kinds. */
	public static final int EX_UNWIND_SIMPLE = 0;
	public static final int EX_UNWIND_OBJECT = 1;
	public static final int EX_BLOCK = 2;
	
	/* Throws a simple string exception for some internal error, using our own
	 * handler model. Note the exception is not resumable. */
	private static RuntimeException stooge = new RuntimeException("Stooge exception leaked");
	public static RuntimeException dieInternal(ThreadContext tc, String msg) {
		SixModelObject exType;
		VMExceptionInstance exObj;
		try {
			exType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.exceptionType;
			exObj = (VMExceptionInstance)exType.st.REPR.allocate(tc, exType.st);
			exObj.initialize(tc);
			exObj.message = msg;
			exObj.category = ExceptionHandling.EX_CAT_CATCH;
			exObj.origin = tc.curFrame;
		}
		catch (Exception e) {
			throw new RuntimeException(msg);
		}
    	handlerDynamic(tc, ExceptionHandling.EX_CAT_CATCH, exObj);
    	return stooge;
	}
	
	/* Finds and executes a handler, using dynamic scope to find it. */
	public static SixModelObject handlerDynamic(ThreadContext tc, long category,
			VMExceptionInstance exObj) {
		CallFrame f = tc.curFrame;
		while (f != null) {
			if (f.curHandler != 0) {
				long tryHandler = f.curHandler;				
				long[][] handlers = f.codeRef.staticInfo.handlers;
				while (tryHandler != 0) {
					for (int i = 0; i < handlers.length; i++) {
						if (handlers[i][0] == tryHandler) {
							// Found an active one, but is it the right category?
							if ((handlers[i][2] & category) != 0) {
								// Correct category, but ensure we aren't already in it.
								boolean valid = true;
								for (int j = 0; j < tc.handlers.size(); j++) {
									if (tc.handlers.get(j).handlerInfo == handlers[i]) {
										valid = false;
										break;
									}
								}
								if (valid)
									return invokeHandler(tc, handlers[i], category, f, exObj);
							}
							
							// If not, try outer one.
							tryHandler = handlers[i][1];
							break;
						}
					}
				}
			}
			f = f.caller;
		}
		return panic(tc, category, exObj);
	}

	/* Invokes the handler. */
	private static SixModelObject invokeHandler(ThreadContext tc, long[] handlerInfo,
			long category, CallFrame handlerFrame, VMExceptionInstance exObj) {
		switch ((int)handlerInfo[3]) {
		case EX_UNWIND_SIMPLE:
			tc.unwinder.unwindTarget = handlerInfo[0];
			tc.unwinder.unwindCompUnit = handlerFrame.codeRef.staticInfo.compUnit;
			tc.unwinder.category = category;
			throw tc.unwinder;
		case EX_BLOCK:
			try {
				tc.handlers.add(new HandlerInfo(exObj, handlerInfo));
				Ops.invokeArgless(tc, Ops.getlex_o(handlerFrame, (int)handlerInfo[4]));
			}
			catch (ResumeException e) {
				return exObj;
			}
			finally {
				tc.handlers.remove(tc.handlers.size() - 1);
			}
			tc.unwinder.unwindTarget = handlerInfo[0];
			tc.unwinder.unwindCompUnit = handlerFrame.codeRef.staticInfo.compUnit;
			tc.unwinder.result = Ops.result_o(tc.curFrame);
			throw tc.unwinder;
		default:
			throw ExceptionHandling.dieInternal(tc, "Unknown exception kind");
		}
	}

	/* Unahndled exception. Exit with stack trace. */
	private static SixModelObject panic(ThreadContext tc, long category,
			VMExceptionInstance exObj) {
		StringBuilder message = new StringBuilder();
		if (exObj != null && exObj.message != null)
			message.append("Unhandled exception: " + exObj.message + "\n");
		else
			message.append("Unhandled exception; category = " + category + "\n");
		
		for (String line : backtraceStrings(tc.curFrame)) {
			message.append(line);
			message.append("\n");
		}
		
		System.err.println(message.toString());
		System.exit(1);
		return exObj;
	}
	
	public static List<String> backtraceStrings(CallFrame curFrame) {
		List<String> result = new ArrayList<String>();
		while (curFrame != null) {
			String name = curFrame.codeRef.staticInfo.name;
			if (name == null || name == "")
				name = "<anon>";
			result.add("  in " + name);
			curFrame = curFrame.caller;
		}
		return result;
	}
}
