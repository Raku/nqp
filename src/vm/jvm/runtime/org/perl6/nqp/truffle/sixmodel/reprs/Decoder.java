package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;


public class Decoder extends FixedSizeObjectREPR {
    public Decoder(STable stable) {
        super(stable);
    }

    public Object allocate() {
        return new DecoderInstance(stable);
    }

    public Object deserializeStub() {
        throw new RuntimeException("Cannot deserialize a Decoder");
    }

    public void deserializeFinish(SerializationReader reader, Object obj) {
        throw new RuntimeException("Cannot deserialize a Decoder");
    }
}
