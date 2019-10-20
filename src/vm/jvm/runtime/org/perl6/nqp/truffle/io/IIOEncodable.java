package org.perl6.nqp.truffle.io;

import java.nio.charset.Charset;

public interface IIOEncodable {
    public void setEncoding(Charset cs);
}
