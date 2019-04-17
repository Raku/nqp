package org.perl6.nqp.truffle.sixmodel;

/* How do we invoke this thing? Specifies either an attribute to look at for
 * an invokable thing, or alternatively a method to call. */
public class InvocationSpec {
    /**
     * Class handle where we find the attribute to invoke.
     */
    public Object classHandle;

    /**
     * Attribute name where we find the attribute to invoke.
     */
    public String attrName;

    /**
     * Thing that handles invocation.
     */
    public Object invocationHandler;
}
