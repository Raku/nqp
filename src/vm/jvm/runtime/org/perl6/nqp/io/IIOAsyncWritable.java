package org.perl6.nqp.io;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public interface IIOAsyncWritable {
    public void spurt(ThreadContext tc, SixModelObject Str, SixModelObject data, SixModelObject done,
                      SixModelObject error);
}
