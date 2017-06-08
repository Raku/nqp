package org.perl6.nqp.io;

import java.io.File;
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

    public AsyncProcessHandle(ThreadContext tc, SixModelObject queue, SixModelObject argsObj,
            String cwd, SixModelObject envObj, SixModelObject configObj) {
        List<String> args = getArgs(tc, argsObj);
        Map<String, String> env = getEnv(tc, envObj);
        Map<String, SixModelObject> config = getConfig(tc, configObj);

        ProcessBuilder pb = new ProcessBuilder(args);
        pb.directory(new File(cwd));
        pb.environment().clear();
        pb.environment().putAll(env);
        setupInputOutput(tc, pb, config);

        this.queue = queue;
        this.tc = tc;
        this.hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        try {
            this.proc = pb.start();
            SixModelObject ready = config.get("ready");
            if (ready != null)
                send(ready);
        }
        catch (Throwable t) {
            SixModelObject message = boxError(t.getMessage());

            SixModelObject error = config.get("error");
            if (error != null)
                send(error, message);

            SixModelObject stdoutBytes = config.get("stdout_bytes");
            if (stdoutBytes != null)
                send(stdoutBytes, this.hllConfig.intBoxType, this.hllConfig.strBoxType, message);

            SixModelObject stderrBytes = config.get("stderr_bytes");
            if (stderrBytes != null)
                send(stderrBytes, this.hllConfig.intBoxType, this.hllConfig.strBoxType, message);
        }
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
        // TODO Implement this
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

    public void writeBytes(ThreadContext tc, AsyncTaskInstance task, SixModelObject toWrite) {
    }

    @Override
    public void close(ThreadContext tc) {
    }
}
