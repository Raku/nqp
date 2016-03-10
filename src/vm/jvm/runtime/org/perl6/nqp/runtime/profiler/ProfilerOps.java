package org.perl6.nqp.runtime.profiler;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class ProfilerOps {

    public static SixModelObject startProfiling(SixModelObject config, ThreadContext tc) {
        tc.gc.startProfiling();
        return config;
    }

    public static SixModelObject endProfiling(ThreadContext tc) {
        tc.gc.stopProfiling();
        return ProfileThreadData.end(tc);
    }
}
