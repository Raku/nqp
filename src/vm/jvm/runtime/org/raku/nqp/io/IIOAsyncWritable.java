package org.raku.nqp.io;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public interface IIOAsyncWritable {
    void spurt(ThreadContext tc, SixModelObject Str, SixModelObject data, SixModelObject done,
                      SixModelObject error);
}
