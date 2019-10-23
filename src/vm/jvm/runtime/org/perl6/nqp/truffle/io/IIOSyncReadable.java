package org.perl6.nqp.truffle.io;

import org.perl6.nqp.runtime.ThreadContext;

public interface IIOSyncReadable {
    public String slurp();
    public String readline();
    public String readchars(int chars);
    public byte[] read(int bytes);
    public boolean eof();
}
