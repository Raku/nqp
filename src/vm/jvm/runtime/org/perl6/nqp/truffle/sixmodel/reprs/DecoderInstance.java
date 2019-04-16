package org.perl6.nqp.truffle.sixmodel.reprs;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.util.ArrayList;
import java.util.List;

import org.perl6.nqp.truffle.sixmodel.STable;

public class DecoderInstance extends FixedSizeObject {
    private Charset charset;
    private CharsetDecoder decoder;
    private List<ByteBuffer> toDecode;
    private List<CharBuffer> decoded;
    private List<String> lineSeps;

    public DecoderInstance(STable stable) {
        super(stable);
    }
}
