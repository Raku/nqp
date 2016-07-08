package org.perl6.nqp.runtime;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.util.ArrayList;
import java.util.List;

import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.VMExceptionInstance;

public class ExceptionHandling {
    /* Exception handler categories. */
    public static final int EX_CAT_CATCH = 1;
    public static final int EX_CAT_NEXT = 4;
    public static final int EX_CAT_REDO = 8;
    public static final int EX_CAT_LAST = 16;
    public static final int EX_CAT_TAKE = 32;
    public static final int EX_CAT_WARN = 64;
    public static final int EX_CAT_SUCCEED = 128;
    public static final int EX_CAT_LABELED = 4096;
    public static final int EX_CAT_AWAIT = 8192;
    public static final int EX_CAT_EMIT = 16384;
    public static final int EX_CAT_DONE = 32768;
    public static final int EX_CAT_RETURN = 65536;
    
    /* Exception handler kinds. */
    public static final int EX_UNWIND_SIMPLE = 0;
    public static final int EX_UNWIND_OBJECT = 1;
    public static final int EX_BLOCK = 2;
    
    /* Throws a simple string exception for some internal error, using our own
     * handler model. Note the exception is not resumable. */
    private static RuntimeException stooge = new RuntimeException("Stooge exception leaked");
    private static ThreadDeath death = new ThreadDeath();
    private static RuntimeException dieInternal(ThreadContext tc, String msg, Throwable t) {
        SixModelObject exType;
        VMExceptionInstance exObj;
        if (tc.gc.noisyExceptions) {
            if (t == null) t = new Throwable(msg);
            t.printStackTrace();
        }
        try {
            exType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.exceptionType;
            exObj = (VMExceptionInstance)exType.st.REPR.allocate(tc, exType.st);
            exObj.message = msg;
            exObj.category = ExceptionHandling.EX_CAT_CATCH;
            exObj.origin = tc.curFrame;
            exObj.nativeTrace = (new Throwable()).getStackTrace();
        }
        catch (Exception e) {
            throw new RuntimeException(msg);
        }
        try {
            handlerDynamic(tc, ExceptionHandling.EX_CAT_CATCH, false, exObj);
        } catch (SaveStackException sse) {
            // maaaaybe should be a panic instead
            ExceptionHandling.dieInternal(tc, "control operator crossed continuation barrier");
        }
        return stooge;
    }
    public static RuntimeException dieInternal(ThreadContext tc, Throwable e) {
        return dieInternal(tc, e.toString(), e);
    }
    public static RuntimeException dieInternal(ThreadContext tc, String msg) {
        return dieInternal(tc, msg, null);
    }
    
    /* Finds and executes a handler, using dynamic scope to find it. */
    /* die_s_return causes handlerDynamic to return the exception message instead of the exception object. */
    public static void handlerDynamic(ThreadContext tc, long category,
            boolean die_s_return, VMExceptionInstance exObj) {
        if (tc.gc.shuttingDown)
            throw death;

        CallFrame f = tc.curFrame;
        long[] handler = null;
all:
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
                                if (valid) {
                                    handler = handlers[i];
                                    break all;
                                }
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
        if (handler != null)
            invokeHandler(tc, handler, category, f, die_s_return, exObj, null);
        else
            panic(tc, category, exObj);
    }

    /* Finds and executes a handler, using lexical scope to find it. */
    public static void handlerLexical(ThreadContext tc, long category,
            VMExceptionInstance exObj, boolean skipCaller) {
        if (tc.gc.shuttingDown)
            throw death;

        CallFrame f = tc.curFrame;
        if (skipCaller) {
            f = f.caller;
            while (f != null && (f.codeRef.staticInfo.isThunk || f.codeRef.isCompilerStub))
                f = f.caller;
        }
        long[] handler = null;
    all:
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
                                if (valid) {
                                    handler = handlers[i];
                                    break all;
                                }
                            }
                            
                            // If not, try outer one.
                            tryHandler = handlers[i][1];
                            break;
                        }
                    }
                }
            }
            f = f.outer;
        }
        if (handler != null)
            invokeHandler(tc, handler, category, f, false, exObj, null);
        else if (tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.lexicalHandlerNotFoundError != null) {
            Ops.invokeDirect(tc, tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.lexicalHandlerNotFoundError, 
                Ops.intIntCallSite, false, new Object[] { category, 0L });
        }
        else
            panic(tc, category, exObj);
    }

    /* Invokes the handler. */
    private static final MethodHandle invokeHandlerReenter;
    static {
        try {
            invokeHandlerReenter = MethodHandles.insertArguments(
                    MethodHandles.lookup().findStatic(ExceptionHandling.class, "invokeHandler",
                        MethodType.methodType(Void.TYPE, ThreadContext.class, long[].class, long.class, CallFrame.class, boolean.class, VMExceptionInstance.class, ResumeStatus.Frame.class)),
                    0, null, null, 0L, null, false, null);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
    private static void invokeHandler(ThreadContext tc, long[] handlerInfo,
            long category, CallFrame handlerFrame, boolean die_s_return, VMExceptionInstance exObj, ResumeStatus.Frame resume) {
        if (resume != null) {
            Object[] bits = resume.saveSpace;
            tc = resume.tc;
            handlerInfo = (long[])bits[0];
            handlerFrame = (CallFrame)bits[1];
            die_s_return = (boolean)bits[2];
            exObj = (VMExceptionInstance)bits[3];
        }

        if (tc.gc.noisyExceptions) tc.unwinder = new UnwindException(); // capture stack
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
            if (exObj != null)
                tc.unwinder.payload = (SixModelObject)exObj.payload;
            else
                tc.unwinder.payload = null;
            throw tc.unwinder;
        case EX_BLOCK:
            try {
                tc.handlers.add(new HandlerInfo(exObj, handlerInfo));
                if (resume != null)
                    resume.resumeNext();
                else
                    Ops.invokeDirect(tc, Ops.getlex_o(handlerFrame, (int)handlerInfo[4]), Ops.emptyCallSite, false, Ops.emptyArgList);
            }
            catch (ResumeException e) {
                tc.curFrame.retType = (byte)(die_s_return ? CallFrame.RET_STR : CallFrame.RET_OBJ);
                if (die_s_return)
                    tc.curFrame.sRet = exObj.message;
                else
                    tc.curFrame.oRet = exObj;
                return;
            }
            catch (SaveStackException sse) {
                throw sse.pushFrame(0, invokeHandlerReenter, new Object[] { handlerInfo, handlerFrame, die_s_return, exObj }, null);
            }
            catch (RuntimeException re) {
                throw re;
            }
            catch (Throwable t) {
                throw new RuntimeException(t);
            }
            finally {
                tc.handlers.remove(tc.handlers.size() - 1);
            }
            tc.unwinder.category = category;
            tc.unwinder.unwindTarget = handlerInfo[0];
            tc.unwinder.unwindCompUnit = handlerFrame.codeRef.staticInfo.compUnit;
            tc.unwinder.result = Ops.result_o(tc.curFrame);
            if (exObj != null)
                tc.unwinder.payload = (SixModelObject)exObj.payload;
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

        exObj = new VMExceptionInstance();
        exObj.origin = tc.curFrame;
        exObj.nativeTrace = (new Throwable()).getStackTrace();

        for (String line : backtraceStrings(exObj)) {
            message.append(line);
            message.append("\n");
        }
        
        tc.gc.err.println(message.toString());
        tc.gc.exit(1);
        return exObj;
    }
    
    public static List<String> backtraceStrings(VMExceptionInstance ex) {
        List<String> result = new ArrayList<String>();
        for (TraceElement e : backtrace(ex)) {
            String name = e.frame.codeRef.name;
            if (name == null || name == "")
                name = "<anon>";

            result.add("  in " + name + (e.file == null ? "" : " (" + e.file + (e.line >= 0 ? ":" + e.line : "") + ")"));
        }
        return result;
    }

    public static class TraceElement {
        public CallFrame frame;
        public String file;
        public int line;

        public TraceElement(CallFrame frame, String file, int line) {
            this.frame = frame; this.file = file; this.line = line;
        }
    }

    public static List<TraceElement> backtrace(VMExceptionInstance ex) {
        List<TraceElement> result = new ArrayList<TraceElement>();
        // Each CallFrame which is actually on the stack corresponds, except in exceptional circumstances, to a native frame
        // We probably ought to use a Levenshteiny thing eventually, but this should be good enough for now.

        int jcursor = 0;
        CallFrame ncursor = ex.origin;

        while (ncursor != null) {
            StaticCodeInfo info = ncursor.codeRef.staticInfo;
            String kls = info.compUnit.getClass().getName();
            String method = info.methodName;

            while (jcursor < ex.nativeTrace.length && !kls.equals(ex.nativeTrace[jcursor].getClassName()) &&
                        (method == null || !method.equals(ex.nativeTrace[jcursor].getMethodName())))
                jcursor++;

            StackTraceElement el = jcursor < ex.nativeTrace.length ? ex.nativeTrace[jcursor++] : null;

            result.add(new TraceElement(ncursor, el != null ? el.getFileName() : null, el != null ? el.getLineNumber() : -1));
            ncursor = ncursor.caller;
        }
        return result;
    }
}
