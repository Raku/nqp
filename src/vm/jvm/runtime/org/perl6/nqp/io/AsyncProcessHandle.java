package org.perl6.nqp.io;

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
    public AsyncProcessHandle(ThreadContext tc, SixModelObject queue, SixModelObject argsObj,
            String cwd, SixModelObject envObj, SixModelObject configObj) {
        List<String> args = getArgs(tc, argsObj);
        Map<String, String> env = getEnv(tc, envObj);
        Map<String, SixModelObject> config = getConfig(tc, configObj);

        throw ExceptionHandling.dieInternal(tc, "NYI");
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

    public void writeBytes(ThreadContext tc, AsyncTaskInstance task, SixModelObject toWrite) {
    }

    @Override
    public void close(ThreadContext tc) {
    }
}
