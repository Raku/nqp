package org.perl6.nqp.runtime;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.util.ArrayList;
import java.util.List;

import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.VMExceptionInstance;

public class ExceptionHandling {
    // ----------------------------------------
    // Exception handler categories
    // ----------------------------------------

    public static final int EX_CAT_CATCH = 1;
    public static final int EX_CAT_NEXT = 4;
    public static final int EX_CAT_REDO = 8;
    public static final int EX_CAT_LAST = 16;
    public static final int EX_CAT_RETURN = 32;
    public static final int EX_CAT_TAKE = 128;
    public static final int EX_CAT_WARN = 256;
    public static final int EX_CAT_SUCCEED = 512;
    public static final int EX_CAT_PROCEED = 1024;
    public static final int EX_CAT_LABELED = 4096;
    public static final int EX_CAT_AWAIT = 8192;
    public static final int EX_CAT_EMIT = 16384;
    public static final int EX_CAT_DONE = 32768;

    // ----------------------------------------
    // Exception handler kinds
    // ----------------------------------------

    public static final int EX_UNWIND_SIMPLE = 0;
    public static final int EX_UNWIND_OBJECT = 1;
    public static final int EX_BLOCK = 2;

    /**
     * A simple string exception thrown on internal errors, using NQP handler model.
     * Note that the exception is not resumable.
     */
    private static final RuntimeException STOOGE = new RuntimeException("Stooge exception leaked");

    private static RuntimeException dieInternal(ThreadContext tc, String errorMessage, Throwable t) {
        final SixModelObject exceptionType;
        final VMExceptionInstance exObj;

        if (tc.gc.noisyExceptions) {
            ((t != null) ? t : new Throwable(errorMessage)).printStackTrace();
        }

        try {
            exceptionType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.exceptionType;
            exObj = (VMExceptionInstance) exceptionType.st.REPR.allocate(tc, exceptionType.st);
            exObj.message = errorMessage;
            exObj.category = ExceptionHandling.EX_CAT_CATCH;
            exObj.origin = tc.curFrame;
            exObj.nativeTrace = (new Throwable()).getStackTrace();
        } catch (Exception e) {
            throw new RuntimeException(errorMessage);
        }

        try {
            handlerDynamic(tc, ExceptionHandling.EX_CAT_CATCH, false, exObj);
        } catch (SaveStackException e) {
            ExceptionHandling.dieInternal(tc, "control operator crossed continuation barrier");
        }
        return STOOGE;
    }

    public static RuntimeException dieInternal(ThreadContext tc, Throwable e) {
        return dieInternal(tc, e.toString(), e);
    }

    public static RuntimeException dieInternal(ThreadContext tc, String errorMessage) {
        return dieInternal(tc, errorMessage, null);
    }

    // Finds and executes a handler, using dynamic scope to find it.
    public static void handlerDynamic(
        ThreadContext tc,
        long category,
        boolean retStr,
        VMExceptionInstance exObj
    ) {
        if (tc.gc.shuttingDown) {
            throw new ThreadDeath();
        }

        for (CallFrame frame = tc.curFrame; frame != null; frame = frame.caller) {
            if (frame.curHandler != 0) {
                long[] handler = findHandler(tc, category, frame);

                if (handler != null) {
                    invokeHandler(tc, handler, category, frame, retStr, exObj, null);
                }
            }
        }

        panic(tc, category, exObj);
    }

    // Finds and executes a handler, using lexical scope to find it.
    public static void handlerLexical(
        ThreadContext tc,
        long category,
        VMExceptionInstance exObj,
        boolean skipCaller
    ) {
        if (tc.gc.shuttingDown) {
            throw new ThreadDeath();
        }

        for (CallFrame frame = getCurrentFrame(tc, skipCaller); frame != null; frame = frame.outer) {
            if (frame.curHandler != 0) {
                long[] handler = findHandler(tc, category, frame);

                if (handler != null) {
                    invokeHandler(tc, handler, category, frame, false, exObj, null);
                    return;
                }
            }
        }

        if (tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.lexicalHandlerNotFoundError != null) {
            Ops.invokeDirect(tc, tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.lexicalHandlerNotFoundError,
                Ops.intIntCallSite, false, new Object[] { category, 0L });
        } else {
            panic(tc, category, exObj);
        }
    }

    private static CallFrame getCurrentFrame(ThreadContext tc, boolean skipCaller) {
        if (!skipCaller) {
            return tc.curFrame;
        }

        CallFrame frame = tc.curFrame.caller;
        while (frame != null
            && (frame.codeRef.staticInfo.isThunk || frame.codeRef.isCompilerStub)) {
            frame = frame.caller;
        }
        return frame;
    }

    private static long[] findHandler(
        ThreadContext tc,
        long category,
        CallFrame frame
    ) {
        long[][] handlers = frame.codeRef.staticInfo.handlers;

        for (long curHandler = frame.curHandler; curHandler != 0; ) {
            for (long[] handler : handlers) {
                if (handler[0] == curHandler) { // check if the handler is active
                    if ((handler[2] & category) != 0) { // check if the handler is the right category

                        // ensure we aren't already in it
                        boolean valid = tc.handlers.stream()
                            .allMatch(handlerInfo -> handlerInfo.handlerInfo != handler);
                        if (valid) {
                            return handler;
                        }
                    }

                    // try outer one
                    curHandler = handler[1];
                    break;
                }
            }
        }

        return null;
    }

    // Invokes the handler
    private static final MethodHandle INVOKE_HANDLER_REENTER;
    static {
        try {
            INVOKE_HANDLER_REENTER = MethodHandles.insertArguments(
                    MethodHandles.lookup().findStatic(ExceptionHandling.class, "invokeHandler",
                        MethodType.methodType(Void.TYPE, ThreadContext.class, long[].class, long.class, CallFrame.class, boolean.class, VMExceptionInstance.class, ResumeStatus.Frame.class)),
                    0, null, null, 0L, null, false, null);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private static void invokeHandler(
        ThreadContext tc,
        long[] handlerInfo,
        long category,
        CallFrame handlerFrame,
        boolean retStr,
        VMExceptionInstance exObj,
        ResumeStatus.Frame resume
    ) {
        // resume state, parameters would not be modified after here
        if (resume != null) {
            final Object[] bits = resume.saveSpace;
            tc = resume.tc;
            handlerInfo = (long[]) bits[0];
            handlerFrame = (CallFrame) bits[1];
            retStr = (boolean) bits[2];
            exObj = (VMExceptionInstance) bits[3];
        }

        if (tc.gc.noisyExceptions) {
            // capture stack
            tc.unwinder = new UnwindException();
        }

        switch ((int)handlerInfo[3]) {
            case EX_UNWIND_SIMPLE:
                tc.unwinder.unwindTarget = handlerInfo[0];
                tc.unwinder.unwindCompUnit = handlerFrame.codeRef.staticInfo.compUnit;
                tc.unwinder.category = category;
                tc.unwinder.payload = null;
                throw tc.unwinder;
            case EX_UNWIND_OBJECT:
                tc.unwinder.unwindTarget = handlerInfo[0];
                tc.unwinder.unwindCompUnit = handlerFrame.codeRef.staticInfo.compUnit;
                tc.unwinder.category = category;
                tc.unwinder.payload = (exObj != null) ? exObj.payload : null;
                throw tc.unwinder;
            case EX_BLOCK:
                try {
                    tc.handlers.add(new HandlerInfo(exObj, handlerInfo));
                    if (resume != null) {
                        resume.resumeNext();
                    } else {
                        Ops.invokeDirect(tc, Ops.getlex_o(handlerFrame, (int) handlerInfo[4]), Ops.emptyCallSite, false, Ops.emptyArgList);
                    }
                } catch (ResumeException e) {
                    tc.curFrame.retType = (byte)(retStr ? CallFrame.RET_STR : CallFrame.RET_OBJ);
                    if (retStr) {
                        tc.curFrame.sRet = exObj.message;
                    } else {
                        tc.curFrame.oRet = exObj;
                    }
                    return;
                } catch (SaveStackException sse) {
                    throw sse.pushFrame(0, INVOKE_HANDLER_REENTER, new Object[] { handlerInfo, handlerFrame, retStr, exObj }, null);
                } catch (RuntimeException re) {
                    throw re;
                } catch (Throwable t) {
                    throw new RuntimeException(t);
                } finally {
                    tc.handlers.remove(tc.handlers.size() - 1);
                }

                tc.unwinder.category = category;
                tc.unwinder.unwindTarget = handlerInfo[0];
                tc.unwinder.unwindCompUnit = handlerFrame.codeRef.staticInfo.compUnit;
                tc.unwinder.result = Ops.result_o(tc.curFrame);
                if (exObj != null) {
                    tc.unwinder.payload = exObj.payload;
                }
                throw tc.unwinder;
            default:
                throw ExceptionHandling.dieInternal(tc, "Unknown exception kind");
        }
    }

    // Unhandled exception, exit with stack trace.
    private static SixModelObject panic(ThreadContext tc, long category, VMExceptionInstance exObj) {
        final StringBuilder message = new StringBuilder();
        if (exObj != null && exObj.message != null) {
            message.append("Unhandled exception: ");
            message.append(exObj.message);
        } else {
            message.append("Unhandled exception; category = ");
            message.append(category);
        }
        message.append("\n");

        final VMExceptionInstance newVMExceptionInstance = new VMExceptionInstance();
        newVMExceptionInstance.origin = tc.curFrame;
        newVMExceptionInstance.nativeTrace = (new Throwable()).getStackTrace();

        for (final String line : backtraceStrings(newVMExceptionInstance)) {
            message.append(line);
            message.append("\n");
        }

        tc.gc.err.println(message.toString());
        tc.gc.exit(1);
        return newVMExceptionInstance;
    }

    public static List<String> backtraceStrings(VMExceptionInstance ex) {
        final List<String> result = new ArrayList<>();
        for (TraceElement e : backtrace(ex)) {
            final StringBuilder message = new StringBuilder();
            message.append("  in ");

            final String name = e.frame.codeRef.name;

            if (name == null || name.equals("")) {
                message.append("<anon>");
            } else {
                message.append(name);
            }

            if (e.file != null) {
                message.append(" (");
                message.append(e.file);

                if (e.line >= 0) {
                    message.append(":");
                    message.append(e.line);
                }

                message.append(")");
            }

            result.add(message.toString());
        }
        return result;
    }

    public static class TraceElement {
        public final CallFrame frame;
        public final String file;
        public final int line;

        public TraceElement(CallFrame frame, String file, int line) {
            this.frame = frame;
            this.file = file;
            this.line = line;
        }
    }

    public static List<TraceElement> backtrace(VMExceptionInstance ex) {
        // Each CallFrame which is actually on the stack corresponds,
        // except in exceptional circumstances, to a native frame.
        // We probably ought to use a Levenshteiny thing eventually,
        // but this should be good enough for now.

        final List<TraceElement> result = new ArrayList<>();

        int traceCursor = 0;

        for (CallFrame frame = ex.origin; frame != null; frame = frame.caller) {
            final StaticCodeInfo info = frame.codeRef.staticInfo;
            final String className = info.compUnit.getClass().getName();
            final String methodName = info.methodName;

            while (ex.nativeTrace != null
                && traceCursor < ex.nativeTrace.length
                && !className.equals(ex.nativeTrace[traceCursor].getClassName())
                && (methodName == null || !methodName.equals(ex.nativeTrace[traceCursor].getMethodName()))
            ) {
                traceCursor += 1;
            }


            if (ex.nativeTrace != null && traceCursor < ex.nativeTrace.length) {
                final StackTraceElement stackTraceElement = ex.nativeTrace[traceCursor++];
                result.add(new TraceElement(
                    frame, stackTraceElement.getFileName(), stackTraceElement.getLineNumber()));
            } else {
                result.add(new TraceElement(frame, null, -1));
            }
        }
        return result;
    }

    // prohibit instant
    private ExceptionHandling() { }
}
