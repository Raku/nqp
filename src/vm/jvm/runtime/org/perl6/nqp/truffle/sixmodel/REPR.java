package org.perl6.nqp.truffle.sixmodel;

/**
 * Base of all 6model representations. Has default implementations of functions that
 * are not mandatory.
 */
public abstract class REPR {

    public abstract Object allocate();

    public abstract void setSc(Object obj, SerializationContext sc);
    public abstract void setSTable(Object obj, STable stable);

    /**
     * Object deserialization. Happens in two steps. The first stub step
     * creates an object to be filled out later. Note that the STable may
     * not be fully available yet if it's in the current compilation unit.
     * The second step has the STable fully formed (though objects it
     * references may not be) and should do the rest of the work. */
    public abstract Object deserializeStub();
    public abstract void deserializeFinish(SerializationReader reader, Object obj);
    public void deserializeReprData(SerializationReader reader, STable stable) {
    }

    public Object deserializeInline(SerializationReader reader) {
        throw new RuntimeException("Can't serialize this repr inline: " + this.getClass().getName());
    }

    public StorageSpec getStorageSpec() {
        return StorageSpec.BOXED;
    }

    public void compose(Object reprInfo) {
        // By default, nothing to do.
    }
}
