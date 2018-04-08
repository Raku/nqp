package org.perl6.nqp.io;

import com.sun.jna.*;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ProcessBuilder;
import java.lang.ProcessBuilder.Redirect;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.perl6.nqp.runtime.Buffers;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.HLLConfig;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.reprs.AsyncTaskInstance;
import org.perl6.nqp.sixmodel.reprs.ConcBlockingQueueInstance;
import org.perl6.nqp.sixmodel.reprs.IOHandleInstance;

public class AsyncProcessHandle implements IIOClosable {
    private Process proc;
    private SixModelObject queue;
    private ThreadContext tc;
    private HLLConfig hllConfig;
    private SixModelObject bufType;
    private int outSeq = 0;
    private int errSeq = 0;

    public AsyncProcessHandle(ThreadContext tc, SixModelObject queue, SixModelObject argsObj,
            String cwd, SixModelObject envObj, SixModelObject configObj) {
        final List<String> args = getArgs(tc, argsObj);
        final Map<String, String> env = getEnv(tc, envObj);
        final Map<String, SixModelObject> config = getConfig(tc, configObj);

        final ProcessBuilder pb = new ProcessBuilder(args);
        pb.directory(new File(cwd));
        pb.environment().clear();
        pb.environment().putAll(env);
        setupInputOutput(tc, pb, config);

        this.queue = queue;
        this.tc = tc;
        this.hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        this.bufType = config.get("buf_type");
        Thread thread = new Thread(new Runnable() {
            public void run() {
                try {
                    AsyncProcessHandle.this.proc = pb.start();

                    int pid = (int)getPID(AsyncProcessHandle.this.proc);

                    SixModelObject ready = config.get("ready");
                    if (ready != null) {
                        send(ready, null, boxInt(pid));
                    }

                    SixModelObject outputCallback = config.get("merge_bytes");
                    if (outputCallback == null)
                        outputCallback = config.get("stdout_bytes");
                    if (outputCallback != null)
                        launchReader(outputCallback, false);

                    SixModelObject errorCallback = config.get("stderr_bytes");
                    if (errorCallback != null)
                        launchReader(errorCallback, true);

                    int outcome = AsyncProcessHandle.this.proc.waitFor();
                    SixModelObject done = config.get("done");
                    /* Return exit code left shifted by 8 for POSIX emulation. */
                    if (done != null)
                        send(done, boxInt(outcome << 8));
                }
                catch (Throwable t) {
                    SixModelObject message = boxError(t.getMessage());

                    SixModelObject error = config.get("error");
                    if (error != null)
                        send(error, message);

                    SixModelObject stdoutBytes = config.get("stdout_bytes");
                    if (stdoutBytes != null)
                        send(stdoutBytes, AsyncProcessHandle.this.hllConfig.intBoxType,
                                AsyncProcessHandle.this.hllConfig.strBoxType, message);

                    SixModelObject stderrBytes = config.get("stderr_bytes");
                    if (stderrBytes != null)
                        send(stderrBytes, AsyncProcessHandle.this.hllConfig.intBoxType,
                                AsyncProcessHandle.this.hllConfig.strBoxType, message);
                }
            }
        });
        thread.setDaemon(true);
        thread.start();
    }

    private List<String> getArgs(ThreadContext tc, SixModelObject argsObj) {
        List<String> args = new ArrayList<String>();
        SixModelObject argIter = Ops.iter(argsObj, tc);
        while (Ops.istrue(argIter, tc) != 0) {
            SixModelObject v = argIter.shift_boxed(tc);
            String arg = v.get_str(tc);
            args.add(arg);
        }
        return args;
    }

    private Map<String, String> getEnv(ThreadContext tc, SixModelObject envObj) {
        Map<String, String> env = new HashMap<String, String>();
        SixModelObject iter = Ops.iter(envObj, tc);
        while (Ops.istrue(iter, tc) != 0) {
            SixModelObject kv = iter.shift_boxed(tc);
            String key = Ops.iterkey_s(kv, tc);
            String value = Ops.unbox_s(Ops.iterval(kv, tc), tc);
            env.put(key, value);
        }
        return env;
    }

    private Map<String, SixModelObject> getConfig(ThreadContext tc, SixModelObject configObj) {
        Map<String, SixModelObject> env = new HashMap<String, SixModelObject>();
        SixModelObject iter = Ops.iter(configObj, tc);
        while (Ops.istrue(iter, tc) != 0) {
            SixModelObject kv = iter.shift_boxed(tc);
            env.put(Ops.iterkey_s(kv, tc), Ops.iterval(kv, tc));
        }
        return env;
    }

    private void setupInputOutput(ThreadContext tc, ProcessBuilder pb,
            Map<String, SixModelObject> config) {
        SixModelObject desc;

        if (config.get("write") != null) {
            pb.redirectInput(Redirect.PIPE);
        }
        else if ((desc = config.get("stdin_fd")) != null) {
        }
        else {
            pb.redirectInput(Redirect.INHERIT);
        }

        if (config.get("merge_bytes") != null) {
            pb.redirectOutput(Redirect.PIPE);
            pb.redirectErrorStream(true);
        }
        else {
            if (config.get("stdout_bytes") != null) {
                pb.redirectOutput(Redirect.PIPE);
            }
            else if ((desc = config.get("stdout_fd")) != null) {
            }
            else {
                pb.redirectOutput(Redirect.INHERIT);
            }
            if (config.get("stderr_bytes") != null) {
                pb.redirectError(Redirect.PIPE);
            }
            else if ((desc = config.get("stderr_fd")) != null) {
            }
            else {
                pb.redirectError(Redirect.INHERIT);
            }
        }
    }

    private void launchReader(final SixModelObject callback, final boolean stderr) {
        final InputStream stream = stderr
            ? this.proc.getErrorStream()
            : this.proc.getInputStream();
        new Thread(new Runnable() {
            public void run() {
                try {
                    byte[] buffer;
                    int read;
                    while ((read = stream.read(buffer = new byte[32768])) != -1) {
                        SixModelObject result = Ops.create(AsyncProcessHandle.this.bufType, tc);
                        Buffers.stashBytes(tc, result, buffer, read);
                        send(callback,
                                boxInt(stderr
                                    ? AsyncProcessHandle.this.errSeq++
                                    : AsyncProcessHandle.this.outSeq++),
                                result,
                                AsyncProcessHandle.this.hllConfig.strBoxType);
                    }
                    send(callback,
                            boxInt(stderr
                                ? AsyncProcessHandle.this.errSeq++
                                : AsyncProcessHandle.this.outSeq++),
                            AsyncProcessHandle.this.hllConfig.strBoxType,
                            AsyncProcessHandle.this.hllConfig.strBoxType);
                }
                catch (Throwable t) {
                    send(callback, boxInt(-1), AsyncProcessHandle.this.hllConfig.strBoxType,
                            boxError(t.getMessage()));
                }
            }
        }).start();
    }

    private void send(SixModelObject... args) {
        final SixModelObject Array = this.hllConfig.listType;
        SixModelObject result = Array.st.REPR.allocate(this.tc, Array.st);
        for (SixModelObject arg : args)
            result.push_boxed(this.tc, arg);
        ((ConcBlockingQueueInstance)this.queue).push_boxed(this.tc, result);
    }

    private SixModelObject boxError(String error) {
        return Ops.box_s(error, this.hllConfig.strBoxType, this.tc);
    }

    private SixModelObject boxInt(int value) {
        return Ops.box_i(value, this.hllConfig.intBoxType, this.tc);
    }

    public void writeBytes(ThreadContext tc, AsyncTaskInstance task, SixModelObject toWrite) {
        ByteBuffer buffer = Buffers.unstashBytes(toWrite, tc);
        OutputStream stream = this.proc.getOutputStream();
        SixModelObject Array = this.hllConfig.listType;
        SixModelObject result = Array.st.REPR.allocate(tc, Array.st);
        result.push_boxed(tc, task.schedulee);
        try {
            byte[] bytes = new byte[buffer.remaining()];
            buffer.get(bytes);
            stream.write(bytes);
            result.push_boxed(tc, boxInt(bytes.length));
            result.push_boxed(tc, this.hllConfig.strBoxType);
        }
        catch (Throwable t) {
            result.push_boxed(tc, this.hllConfig.strBoxType);
            result.push_boxed(tc, boxError(t.getMessage()));
        }
        ((ConcBlockingQueueInstance)task.queue).push_boxed(tc, result);
    }

    static interface Kernel32 extends Library {
        public static Kernel32 INSTANCE = (Kernel32)Native.loadLibrary("kernel32", Kernel32.class);
        public int GetProcessId(Long hProcess);
    }

    /* not tested on windows; taken from https://stackoverflow.com/a/6032734 */
    private long getPID(Process proc) {
        long result = 0;
        try {
            String procName = proc.getClass().getName();
            /* for unix/linux systems */
            if (procName.equals("java.lang.UNIXProcess")) {
                Field f = proc.getClass().getDeclaredField("pid");
                f.setAccessible(true);
                result = f.getLong(proc);
                f.setAccessible(false);
            }
            /* for windows */
            else if (procName.equals("java.lang.Win32Process") ||
                     procName.equals("java.lang.ProcessImpl")) {
                Field f = proc.getClass().getDeclaredField("handle");
                f.setAccessible(true);
                result = Kernel32.INSTANCE.GetProcessId((Long)f.get(proc));
                f.setAccessible(false);
            }
        }
        catch (Exception ex) {
            result = 0;
        }
        return result;
    }

    @Override
    public void close(ThreadContext tc) {
        try { this.proc.getOutputStream().close(); }
        catch (Throwable t) { }
    }

    public void kill(ThreadContext tc) {
        this.proc.destroy();
    }

    public void killForcibly(ThreadContext tc) {
        this.proc.destroyForcibly();
    }
}
