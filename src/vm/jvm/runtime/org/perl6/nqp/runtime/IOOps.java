package org.perl6.nqp.runtime;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.perl6.nqp.io.AsyncProcessHandle;
import org.perl6.nqp.io.AsyncServerSocketHandle;
import org.perl6.nqp.io.AsyncSocketHandle;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.AsyncTaskInstance;
import org.perl6.nqp.sixmodel.reprs.IOHandleInstance;

public final class IOOps {

    private static class SigRunnable implements Runnable {

        private final ThreadContext tc;
        private final SixModelObject schedulee;
        private final long signum;

        SigRunnable(ThreadContext tc, SixModelObject schedulee, long signum) {
            this.tc = tc;
            this.schedulee = schedulee;
            this.signum = signum;
        }

        public void run() {
            Ops.invokeDirect(tc, schedulee, Ops.invocantCallSite,
                Collections.singleton(Ops.box_i(signum, tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intBoxType, tc)).toArray());
        }
    }

    private static class SigProcess {

        private static final int SIGNUM_HIGHEST = 32;

        private static class SigSupported {
            private static List<String> supported = Arrays.asList("SIGINT", "SIGKILL");

            public static Map<String, Integer> build() {
                return supported
                    .stream()
                    .collect(Collectors.toMap(Function.identity(), ignore -> 1));
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

        private static String getNameFromVal(int signum) {
            // Use sh kill builtin, seems most portable across MacOSX, and Linux and BSD variants
            final String SH_ARG = "kill -l " + Integer.toString(signum);
            final ProcessBuilder pb = new ProcessBuilder("sh", "-c", SH_ARG);
            try {
                int retval = -1;
                boolean finished = false;

                final Process process = pb.start();
                do {
                    try {
                        retval   = process.waitFor();
                        finished = true;
                    } catch (InterruptedException e) {
                        // do nothing
                    }
                } while (!finished);

                if (retval == 0) {
                    final BufferedReader br = new BufferedReader(
                        new InputStreamReader(process.getInputStream())
                    );
                    final String s = br.readLine();
                    if (s != null) {
                        return "SIG" + s.trim().toUpperCase();
                    }
                }
            } catch (IOException e) {
                // do nothing
            }
            return null;
        }

        private static void retrieveValsWin(Map<String, Integer> sigWanted) {
            // Use same sigs defined for _WIN32 in MoarVM
            sigWanted.put("SIGHUP", 1);
            sigWanted.put("SIGKILL", 9);
            sigWanted.put("SIGWINCH", 28);
        }

        private static void retrieveValsPosix(Map<String, Integer> sigWanted) {
            for (int i = 1; i < SIGNUM_HIGHEST; i++) {
                final String sigval = getNameFromVal(i);

                if (sigval == null) {
                    break;
                }

                if (sigWanted.containsKey(sigval)) {
                    sigWanted.put(sigval, i);
                }
            }
        }

        public static Map<String, Integer> process() {
            final Map<String, Integer> sigWanted = sigKeys.stream()
                .collect(Collectors.toMap(Function.identity(), ignore -> 0));

            // Get available signals on host system
            final String os = System.getProperty("os.name").toLowerCase();
            if (os.contains("win")) {
                retrieveValsWin(sigWanted);
            } else {
                retrieveValsPosix(sigWanted);
            }

            // Negate sigs not supported by backend
            for (final String sig : sigWanted.keySet()) {
                int signum = sigWanted.get(sig);
                int signumFinal = sigSupported.containsKey(sig) ? signum : -signum;
                sigWanted.put(sig, signumFinal);
            }
            return sigWanted;
        }
    }

    private static SixModelObject sigCache = null;

    public static SixModelObject getsignals(ThreadContext tc) {
        if (sigCache != null) return sigCache;

        SixModelObject listType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.listType;
        SixModelObject strType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.strBoxType;
        SixModelObject intType = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig.intBoxType;
        SixModelObject res = listType.st.REPR.allocate(tc, listType.st);

        Map<String, Integer> sigWanted = SigProcess.process();

        // Box the list values for HLL
        for (String sig : SigProcess.sigKeys) {
            long signum = (long)sigWanted.get(sig);
            res.push_boxed( tc, Ops.box_s(sig, strType, tc) );
            res.push_boxed( tc, Ops.box_i(signum, intType, tc) );
        }
        sigCache = res;
        return res;
    }

    public static SixModelObject signal(
        SixModelObject queue,
        SixModelObject schedulee,
        long signalNum,
        SixModelObject asyncType,
        ThreadContext tc
    ) {
        switch((int)signalNum) {
            case 2: // INT
            case 9: // KILL
                break;
            default:
                ExceptionHandling.dieInternal(tc, "Unsupported signal " + signalNum);
        }
        final AsyncTaskInstance task = (AsyncTaskInstance) asyncType.st.REPR.allocate(tc, asyncType.st);
        task.queue = queue;
        task.schedulee = schedulee;

        final Runnable sigrun = new SigRunnable(tc, schedulee, signalNum);
        Runtime.getRuntime().addShutdownHook(new Thread(sigrun));

        return task;
    }

    public static SixModelObject watchfile(
        SixModelObject queue,
        SixModelObject schedulee,
        String filename,
        SixModelObject asyncType,
        ThreadContext tc
    ) {
        // TODO NYI
        throw new UnsupportedOperationException("watchfile is not yet implemented.");
    }

    public static SixModelObject asyncconnect(
        SixModelObject queue,
        SixModelObject schedulee,
        String host,
        long port,
        SixModelObject asyncType,
        ThreadContext tc
    ) {
        final AsyncTaskInstance task = (AsyncTaskInstance) asyncType.st.REPR.allocate(tc, asyncType.st);
        task.queue = queue;
        task.schedulee = schedulee;

        final AsyncSocketHandle handle = new AsyncSocketHandle(tc);
        task.handle = handle;
        handle.connect(tc, host, (int) port, task);

        return task;
    }

    public static SixModelObject asynclisten(
        SixModelObject queue,
        SixModelObject schedulee,
        String host,
        long port,
        long backlog,
        SixModelObject asyncType,
        ThreadContext tc
    ) {
        final AsyncTaskInstance task = (AsyncTaskInstance) asyncType.st.REPR.allocate(tc, asyncType.st);
        task.queue = queue;
        task.schedulee = schedulee;

        final AsyncServerSocketHandle handle = new AsyncServerSocketHandle(tc);
        task.handle = handle;
        handle.bind(tc, host, (int) port, (int) backlog);
        handle.accept(tc, task);

        return task;
    }

    public static SixModelObject asyncwritebytes(
        SixModelObject handle,
        SixModelObject queue,
        SixModelObject schedulee,
        SixModelObject toWrite,
        SixModelObject asyncType,
        ThreadContext tc
    ) {
        final AsyncTaskInstance task = (AsyncTaskInstance) asyncType.st.REPR.allocate(tc, asyncType.st);
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

    public static SixModelObject asyncreadbytes(
        SixModelObject handle,
        SixModelObject queue,
        SixModelObject schedulee,
        SixModelObject bufType,
        SixModelObject asyncType,
        ThreadContext tc
    ) {
        final AsyncTaskInstance task = (AsyncTaskInstance) asyncType.st.REPR.allocate(tc, asyncType.st);
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

    public static SixModelObject spawnprocasync(
        SixModelObject queue,
        SixModelObject args,
        String cwd,
        SixModelObject env,
        SixModelObject config,
        ThreadContext tc
    ) {
        final HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        final SixModelObject IOType = hllConfig.ioType;

        final IOHandleInstance ioHandle = (IOHandleInstance)IOType.st.REPR.allocate(tc, IOType.st);
        ioHandle.handle = new AsyncProcessHandle(tc, queue, args, cwd, env, config);

        return ioHandle;
    }

    public static long killprocasync(SixModelObject handle, long signal, ThreadContext tc) {
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
