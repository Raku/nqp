package org.perl6.nqp.runtime;

import org.perl6.nqp.sixmodel.SixModelObject;

public final class IOOps {

    public static SixModelObject signal(SixModelObject queue, SixModelObject schedulee,
            long signalNum, SixModelObject asyncType, ThreadContext tc) {
        throw new UnsupportedOperationException("signal is not yet implemented.");
    }

    public static SixModelObject watchfile(SixModelObject queue, SixModelObject schedulee,
            String filename, SixModelObject asyncType, ThreadContext tc) {
        throw new UnsupportedOperationException("watchfile is not yet implemented.");
    }

    public static SixModelObject asyncconnect(SixModelObject queue, SixModelObject schedulee,
            String host, long port, SixModelObject asyncType, ThreadContext tc) {
        throw new UnsupportedOperationException("asyncconnect is not yet implemented.");
    }

    public static SixModelObject asynclisten(SixModelObject queue, SixModelObject schedulee,
            String host, long port, SixModelObject asyncType, ThreadContext tc) {
        throw new UnsupportedOperationException("asynclisten is not yet implemented.");
    }

    public static SixModelObject asyncwritestr(SixModelObject handle, SixModelObject queue,
            SixModelObject schedulee, String toWrite, SixModelObject asyncType, ThreadContext tc) {
        throw new UnsupportedOperationException("asyncwritestr is not yet implemented.");
    }

    public static SixModelObject asyncwritebytes(SixModelObject handle, SixModelObject queue,
            SixModelObject schedulee, SixModelObject toWrite, SixModelObject asyncType,
            ThreadContext tc) {
        throw new UnsupportedOperationException("asyncwritebytes is not yet implemented.");
    }

    public static SixModelObject asyncreadchars(SixModelObject handle, SixModelObject queue,
            SixModelObject schedulee, SixModelObject asyncType, ThreadContext tc) {
        throw new UnsupportedOperationException("asyncreadchars is not yet implemented.");
    }

    public static SixModelObject asyncreadbytes(SixModelObject handle, SixModelObject queue,
            SixModelObject schedulee, SixModelObject bufType, SixModelObject asyncType,
            ThreadContext tc) {
        throw new UnsupportedOperationException("asyncreadbytes is not yet implemented.");
    }
}
