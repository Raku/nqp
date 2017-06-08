package org.perl6.nqp.io;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ProcessBuilder;
import java.lang.ProcessBuilder.Redirect;
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
        new Thread(new Runnable() {
            public void run() {
                try {
                    AsyncProcessHandle.this.proc = pb.start();

                    SixModelObject ready = config.get("ready");
                    if (ready != null)
                        send(ready);

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
                    if (done != null)
                        send(done, boxInt(outcome));
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
        }).start();
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
    }

    @Override
    public void close(ThreadContext tc) {
    }
}
