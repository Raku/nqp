package org.raku.nqp.io;

import java.util.concurrent.LinkedBlockingQueue;

import org.raku.nqp.runtime.ThreadContext;
import org.raku.nqp.sixmodel.SixModelObject;

public interface IIOAsyncReadable {
    public void slurp(ThreadContext tc, SixModelObject Str, SixModelObject done,
                      SixModelObject error);
    public void lines(ThreadContext tc, SixModelObject Str, boolean chomp,
                      LinkedBlockingQueue<SixModelObject> queue, SixModelObject done,
                      SixModelObject error);
}
