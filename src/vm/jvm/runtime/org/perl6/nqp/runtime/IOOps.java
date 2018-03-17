package org.perl6.nqp.runtime;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.ProcessBuilder.Redirect;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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

    private static class SigSupported {
        private static List<String> supported = Arrays.asList("SIGINT", "SIGKILL");
        public static Map<String, Integer> build() {
            Map<String, Integer> m = new HashMap<String, Integer>();
            for ( String k : supported ) { m.put(k, 1); }
            return m;
        }
    }
    private static final Map<String, Integer> sigSupported = SigSupported.build();
    private static final List<String> sigKeys = Arrays.asList(
        "SIGHUP",  "SIGINT",    "SIGQUIT",   "SIGILL",   "SIGTRAP", "SIGABRT",
        "SIGEMT",  "SIGFPE",    "SIGKILL",   "SIGBUS",   "SIGSEGV", "SIGSYS",
        "SIGPIPE", "SIGALRM",   "SIGTERM",   "SIGURG",   "SIGSTOP", "SIGTSTP",
        "SIGCONT", "SIGCHLD",   "SIGTTIN",   "SIGTTOU",  "SIGIO",   "SIGXCPU",
        "SIGXFSZ", "SIGVTALRM", "SIGPROF",   "SIGWINCH", "SIGINFO", "SIGUSR1",
        "SIGUSR2", "SIGTHR",    "SIGSTKFLT", "SIGPWR",   "SIGBREAK"
    );

    private static SixModelObject sigCache = null;
    public static SixModelObject getsignals(ThreadContext tc) {
        SixModelObject hashType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.hashType;
        SixModelObject intType  = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intBoxType;
        SixModelObject res      = hashType.st.REPR.allocate(tc, hashType.st);

        if (sigCache != null) return sigCache;

        Map<String, Integer> sigWanted = new HashMap<String, Integer>();
        for ( String k : sigKeys ) { sigWanted.put(k, 0); }

        // Get available signals on host system
        String os = System.getProperty("os.name").toLowerCase();
        if ( os.indexOf("win") >= 0 ) {
            // Use same sigs defined for _WIN32 in MoarVM
            sigWanted.put("SIGHUP",    1);
            sigWanted.put("SIGKILL",   9);
            sigWanted.put("SIGWINCH", 28);
        } else {
            ProcessBuilder pb = new ProcessBuilder("/bin/kill", "-l");
            try {
                int     retval    = -1;
                boolean finished  = false;

                Process process = pb.start();
                do {
                    try {
                        retval   = process.waitFor();
                        finished = true;
                    } catch (InterruptedException e) {
                    }
                } while (!finished);
                if (retval == 0) {
                    BufferedReader br = new BufferedReader(
                        new InputStreamReader( process.getInputStream() )
                    );
                    String l;
                    int i = 1;
                    while ( (l = br.readLine()) != null ) {
                        String[] sigs = l.split("\\s+");
                        for (String s : sigs) {
                            if ( s.length() > 0 && !Character.isDigit(s.charAt(0))
                                 && !Character.isWhitespace(s.charAt(0)) )
                            {
                                String sig = "SIG" + s.trim().toUpperCase();
                                if ( sigWanted.containsKey(sig) ) {
                                    sigWanted.put(sig, i);
                                }
                            }
                            i++;
                        }
                    }
                }
            } catch (IOException e) { }
        }

        for (String sig : sigWanted.keySet()) {
            long signum      = (long)sigWanted.get(sig);
            long signumFinal = sigSupported.containsKey(sig) ? signum : -signum;

            res.bind_key_boxed( tc, sig, Ops.box_i(signumFinal, intType, tc) );
        }
        sigCache = res;
        return res;
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

    public static long killprocasync(SixModelObject handle, long signal,
            ThreadContext tc) {
        switch((int)signal) {
            case 1:    // SIGHUP (default used by Rakudo for 'kill')
            case 15:   // SIGTERM
                ((AsyncProcessHandle)((IOHandleInstance)handle).handle).kill(tc);
                break;
            case 9:    // SIGKILL
                ((AsyncProcessHandle)((IOHandleInstance)handle).handle).killForcibly(tc);
                break;
            default:
                throw ExceptionHandling.dieInternal(tc, "Unsupported signal for kill: " + signal);
        }
        return signal;
    }
}
