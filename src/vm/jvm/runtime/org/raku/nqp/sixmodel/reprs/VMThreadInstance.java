package org.raku.nqp.sixmodel.reprs;

import java.lang.Thread;

import org.raku.nqp.sixmodel.SixModelObject;

public class VMThreadInstance extends SixModelObject {
    public Thread thread;
    public long lockCount = 0;
}
