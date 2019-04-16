package org.perl6.nqp.truffle.sixmodel.reprs;
import org.perl6.nqp.truffle.sixmodel.SerializationReader;
import org.perl6.nqp.truffle.sixmodel.STable;


public class VMIter extends FixedSizeObjectREPR {
    public VMIter(STable stable) {
        super(stable);
    }

    public Object allocate() {
        System.out.println("NYI allocating a VMIter");
          return null;
//        return new VMIterInstance(stable);
    }

    public Object deserializeStub() {
        System.out.println("NYI deserializing a VMIter");
        return null;
        //return new VMIterInstance(stable);
    }

    public void deserializeFinish(SerializationReader reader, Object obj) {
    }
}
