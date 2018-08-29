package org.perl6.nqp.truffle.sixmodel;

public final class SerializationContext {
    /* The handle of this SC. */
    public String handle;

    /* Description (probably the file name) if any. */
    public String description;

    public SerializationContext(String handle) {
        this.handle = handle;
    }

}
