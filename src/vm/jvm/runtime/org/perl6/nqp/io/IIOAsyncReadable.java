package org.perl6.nqp.io;

import java.util.concurrent.LinkedBlockingQueue;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public interface IIOAsyncReadable {
    public void slurp(ThreadContext tc, SixModelObject Str, SixModelObject done,
                      SixModelObject error);
    public void lines(ThreadContext tc, SixModelObject Str, boolean chomp,
                      LinkedBlockingQueue<SixModelObject> queue, SixModelObject done,
                      SixModelObject error);
}
