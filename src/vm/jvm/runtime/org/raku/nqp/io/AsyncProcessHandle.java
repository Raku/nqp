package org.raku.nqp.io;

import com.sun.jna.*;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ProcessBuilder;
import java.lang.ProcessBuilder.Redirect;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.raku.nqp.runtime.Buffers;
import org.raku.nqp.runtime.HLLConfig;
import org.raku.nqp.runtime.Ops;
import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.sixmodel.reprs.AsyncTaskInstance;
import org.raku.nqp.sixmodel.reprs.ConcBlockingQueueInstance;

public class AsyncProcessHandle implements IIOClosable {
    private Process proc;
    private SixModelObject queue;
    private ThreadContext tc;
    private HLLConfig hllConfig;
    private SixModelObject bufType;
    private int outSeq = 0;
    private int errSeq = 0;
    private boolean procStarted = false;

    public AsyncProcessHandle(ThreadContext tc, SixModelObject queue, String prog,
            SixModelObject argsObj, String cwd, SixModelObject envObj,
            SixModelObject configObj) {
        final List<String> args = getArgs(tc, argsObj);
        // Impossible in Java to specify arg0, so overwrite with the program to
        // execute.
        args.set(0, prog);
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
        Thread thread = new Thread(() -> {
            try {
                AsyncProcessHandle.this.proc = pb.start();
                procStarted = true;

                int pid = (int)getPID(AsyncProcessHandle.this.proc);

                SixModelObject ready = config.get("ready");
                if (Ops.isnull(ready) == 0) {
                    send(ready, null, boxInt(pid));
                }

                SixModelObject outputCallback = config.get("merge_bytes");
                if (Ops.isnull(outputCallback) == 1)
                    outputCallback = config.get("stdout_bytes");
                if (Ops.isnull(outputCallback) == 0)
                    launchReader(outputCallback, false);

                SixModelObject errorCallback = config.get("stderr_bytes");
                if (Ops.isnull(errorCallback) == 0)
                    launchReader(errorCallback, true);

                int outcome = AsyncProcessHandle.this.proc.waitFor();
                SixModelObject done = config.get("done");
                /* Return exit code left shifted by 8 for POSIX emulation. */
                if (Ops.isnull(done) == 0)
                    send(done, boxInt(outcome << 8));
            }
            catch (Throwable t) {
                SixModelObject message = boxError(t.toString());

                SixModelObject error = config.get("error");
                /* Return exception message and hard-coded exit code -1. */
                if (Ops.isnull(error) == 0)
                    send(error, message, boxInt(-1 << 8));

                SixModelObject stdoutBytes = config.get("stdout_bytes");
                if (Ops.isnull(stdoutBytes) == 0)
                    send(stdoutBytes, AsyncProcessHandle.this.hllConfig.intBoxType,
                            AsyncProcessHandle.this.hllConfig.strBoxType, message);

                SixModelObject stderrBytes = config.get("stderr_bytes");
                if (Ops.isnull(stderrBytes) == 0)
                    send(stderrBytes, AsyncProcessHandle.this.hllConfig.intBoxType,
                            AsyncProcessHandle.this.hllConfig.strBoxType, message);
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
        Map<String, SixModelObject> env = new HashMap<>();
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

        if (Ops.isnull(config.get("write")) == 0) {
            pb.redirectInput(Redirect.PIPE);
        }
        else if (Ops.isnull(desc = config.get("stdin_fd")) == 0) {
        }
        else {
            pb.redirectInput(Redirect.INHERIT);
        }

        if (Ops.isnull(config.get("merge_bytes")) == 0) {
            pb.redirectOutput(Redirect.PIPE);
            pb.redirectErrorStream(true);
        }
        else {
            if (Ops.isnull(config.get("stdout_bytes")) == 0) {
                pb.redirectOutput(Redirect.PIPE);
            }
            else if (Ops.isnull(desc = config.get("stdout_fd")) == 0) {
            }
            else {
                pb.redirectOutput(Redirect.INHERIT);
            }
            if (Ops.isnull(config.get("stderr_bytes")) == 0) {
                pb.redirectError(Redirect.PIPE);
            }
            else if (Ops.isnull(desc = config.get("stderr_fd")) == 0) {
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
        new Thread(() -> {
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
                        boxError(t.toString()));
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

    public synchronized void writeBytes(ThreadContext tc, AsyncTaskInstance task, SixModelObject toWrite) {
        ByteBuffer buffer = Buffers.unstashBytes(toWrite, tc);
        SixModelObject Array = this.hllConfig.listType;
        SixModelObject result = Array.st.REPR.allocate(tc, Array.st);
        result.push_boxed(tc, task.schedulee);
        try {
            /* wait up to one second for proc */
            for (int counter = 0; !procStarted && counter < 100; counter++)
                wait(10);
            /* TODO: is it better to check if proc is null and
             * throw an Exception with a fitting message? */
            OutputStream stream = this.proc.getOutputStream();
            byte[] bytes = new byte[buffer.remaining()];
            buffer.get(bytes);
            stream.write(bytes);
            result.push_boxed(tc, boxInt(bytes.length));
            result.push_boxed(tc, this.hllConfig.strBoxType);
        }
        catch (Throwable t) {
            result.push_boxed(tc, this.hllConfig.strBoxType);
            result.push_boxed(tc, boxError(t.toString()));
        }
        ((ConcBlockingQueueInstance)task.queue).push_boxed(tc, result);
    }

    interface Kernel32 extends Library {
        Kernel32 INSTANCE = (Kernel32)Native.loadLibrary("kernel32", Kernel32.class);
        int GetProcessId(Long hProcess);
    }

    private long getPID(Process proc) {
        long result = 0;
        try {
            result = proc.toHandle().pid();
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
