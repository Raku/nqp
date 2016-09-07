package org.perl6.nqp.sixmodel.reprs;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class DecoderInstance extends SixModelObject {
    private CharsetDecoder decoder;

    public void configure(ThreadContext tc, String encoding, SixModelObject config) {
        if (decoder == null)
            decoder = Charset.forName(encoding).newDecoder();
        else
            throw ExceptionHandling.dieInternal(tc, "Decoder already configured");
    }
}
