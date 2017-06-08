package org.perl6.nqp.runtime;

import org.perl6.nqp.io.AsyncProcessHandle;
import org.perl6.nqp.io.AsyncServerSocketHandle;
import org.perl6.nqp.io.AsyncSocketHandle;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.AsyncTaskInstance;
import org.perl6.nqp.sixmodel.reprs.IOHandleInstance;
import org.perl6.nqp.runtime.Ops;

public final class IOOps {

    private static class SigRunnable implements Runnable {
        public static ThreadContext tc;
        public static SixModelObject schedulee;
        public static long signum;

        public SigRunnable(ThreadContext tc, SixModelObject schedulee, long signum) {
            this.tc = tc;
            this.schedulee = schedulee;
            this.signum = signum;
        }

        public void run() {
            Ops.invokeDirect(tc, schedulee, Ops.invocantCallSite, 
                new Object[] { Ops.box_i(signum, tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intBoxType, tc) });
        }
    }
    public static SixModelObject signal(SixModelObject queue, SixModelObject schedulee,
            long signalNum, SixModelObject asyncType, ThreadContext tc) {
        switch((int)signalNum) {
            case 2: // INT
                break;
            case 9: // KILL
                break;
            default:
                ExceptionHandling.dieInternal(tc, "Unsupported signal " + signalNum);
        }
        AsyncTaskInstance task = (AsyncTaskInstance) asyncType.st.REPR.allocate(tc, asyncType.st);
        task.queue = queue;
        task.schedulee = schedulee;

        Runnable sigrun = new SigRunnable(tc, schedulee, signalNum);
        Runtime.getRuntime().addShutdownHook(new Thread(sigrun));
        return task;
    }

    public static SixModelObject watchfile(SixModelObject queue, SixModelObject schedulee,
            String filename, SixModelObject asyncType, ThreadContext tc) {
        throw new UnsupportedOperationException("watchfile is not yet implemented.");
    }

    public static SixModelObject asyncconnect(SixModelObject queue, SixModelObject schedulee,
            String host, long port, SixModelObject asyncType, ThreadContext tc) {

        AsyncTaskInstance task = (AsyncTaskInstance) asyncType.st.REPR.allocate(tc, asyncType.st);
        task.queue = queue;
        task.schedulee = schedulee;

        AsyncSocketHandle handle = new AsyncSocketHandle(tc);
        task.handle = handle;
        handle.connect(tc, host, (int) port, task);

        return task;
    }

    public static SixModelObject asynclisten(SixModelObject queue, SixModelObject schedulee,
            String host, long port, long backlog, SixModelObject asyncType, ThreadContext tc) {

        AsyncTaskInstance task = (AsyncTaskInstance) asyncType.st.REPR.allocate(tc, asyncType.st);
        task.queue = queue;
        task.schedulee = schedulee;

        AsyncServerSocketHandle handle = new AsyncServerSocketHandle(tc);
        task.handle = handle;

        handle.bind(tc, host, (int) port, (int) backlog);
        handle.accept(tc, task);

        return task;
    }

    public static SixModelObject asyncwritebytes(SixModelObject handle, SixModelObject queue,
            SixModelObject schedulee, SixModelObject toWrite, SixModelObject asyncType,
            ThreadContext tc) {
        AsyncTaskInstance task = (AsyncTaskInstance) asyncType.st.REPR.allocate(tc, asyncType.st);
        task.queue = queue;
        task.schedulee = schedulee;
        task.handle = ((IOHandleInstance)handle).handle;

        if (task.handle instanceof AsyncSocketHandle) {
            ((AsyncSocketHandle)task.handle).writeBytes(tc, task, toWrite);
        } else if (task.handle instanceof AsyncProcessHandle) {
            ((AsyncProcessHandle)task.handle).writeBytes(tc, task, toWrite);
        } else {
            throw ExceptionHandling.dieInternal(tc, "This handle does not support asyncwritebytes");
        }
        return task;
    }

    public static SixModelObject asyncreadbytes(SixModelObject handle, SixModelObject queue,
            SixModelObject schedulee, SixModelObject bufType, SixModelObject asyncType,
            ThreadContext tc) {
        AsyncTaskInstance task = (AsyncTaskInstance) asyncType.st.REPR.allocate(tc, asyncType.st);
        task.queue = queue;
        task.schedulee = schedulee;
        task.handle = ((IOHandleInstance)handle).handle;

        if (task.handle instanceof AsyncSocketHandle) {
            ((AsyncSocketHandle)task.handle).readBytes(tc, task, bufType);
        } else {
            throw ExceptionHandling.dieInternal(tc, "This handle does not support asyncreadbytes");
        }
        return task;
    }

    public static SixModelObject spawnprocasync(SixModelObject queue, SixModelObject args,
            String cwd, SixModelObject env, SixModelObject config, ThreadContext tc) {
        HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        final SixModelObject IOType = hllConfig.ioType;
        IOHandleInstance ioHandle = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        ioHandle.handle = new AsyncProcessHandle(tc, queue, args, cwd, env, config);
        return ioHandle;
    }
}
