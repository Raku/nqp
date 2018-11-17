package org.perl6.nqp.truffle.sixmodel.reprs;

import java.util.ArrayList;
import java.util.HashMap;

import org.perl6.nqp.truffle.sixmodel.STable;
import org.perl6.nqp.truffle.sixmodel.REPR;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;

import org.perl6.nqp.truffle.runtime.NQPHash;

public class KnowHOWREPR extends FixedSizeObjectREPR {
    public KnowHOWREPR(STable stable) {
        super(stable);
    }

    @Override
    public Object deserializeStub() {
        return new KnowHOWREPRInstance(stable);
    }

    @Override
    public Object allocate() {
        KnowHOWREPRInstance object = new KnowHOWREPRInstance(stable);
        object.name = "<anon>";
        object.attributes = new ArrayList<Object>();
        object.methods = new HashMap<String, Object>();
        return object;
    }

    @Override
    public void deserializeFinish(SerializationReader reader, Object obj) {
        KnowHOWREPRInstance body = (KnowHOWREPRInstance)obj;
        body.name = reader.readString();

        body.attributes = new ArrayList<>();
        Object attrs = reader.readRef();

        /*long elems = attrs.elems(tc);
        for (long i = 0; i < elems; i++)
            body.attributes.add(attrs.at_pos_boxed(tc, i));*/

        body.methods = ((NQPHash)reader.readRef()).getContents();
    }
}
