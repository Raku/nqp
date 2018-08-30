package org.perl6.nqp.truffle.sixmodel;

public class STable {
    /** Initializes a new STable.
     */
    public STable(REPR repr, Object how) {
        this.repr = repr;
        this.how = how;
    }

    /**
     * The representation operation table.
     */
    public REPR repr;

    /**
     * The meta-object.
     */
    public Object how;

    /**
     * The type-object.
     */
    public Object what;

    /**
     * Serialization context that this s-table belongs to.
     */
    public SerializationContext sc;
}
