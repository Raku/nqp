package org.perl6.nqp.truffle.sixmodel;

public class STable {
    /** Initializes a new STable.
     */
    public STable(Object how) {
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
     * Array of type objects. If this is set, then it is expected to contain
     * the type objects of all types that this type is equivalent to (e.g.
     * all the things it isa and all the things it does).
     */
    public Object[] typeCheckCache;

    /**
     * The type checking mode and method cache mode.
     */
    public int modeFlags;

    /**
     * If this is a container, then this contains information needed in
     * order to fetch the value in it. If not, it'll be null, which can
     * be taken as a "not a container" indication.
     */
    //public ContainerSpec containerSpec;

    /**
     * If this is invokable, then this contains information needed to
     * figure out how to invoke it. If not, it'll be null.
     */
    //public InvocationSpec invocationSpec;

    /**
     * Information - if any - about how we can turn something of this type
     * into a boolean.
     */
    //public BoolificationSpec BoolificationSpec;

    /**
     * The underlying package stash.
     */
    public Object who;


    /**
     * Serialization context that this s-table belongs to.
     */
    public SerializationContext sc;
}
