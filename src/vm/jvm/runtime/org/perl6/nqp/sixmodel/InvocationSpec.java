package org.perl6.nqp.sixmodel;

/* How do we invoke this thing? Specifies either an attribute to look at for
 * an invokable thing, or alternatively a method to call. */
public class InvocationSpec {
    /**
     * Class handle where we find the attribute to invoke.
     */
    public SixModelObject ClassHandle;
    
    /**
     * Attribute name where we find the attribute to invoke.
     */
    public String AttrName;
    
    /**
     * Attribute lookup hint used in gradual typing.
     */
    public long Hint;
    
    /**
     * Thing that handles invocation.
     */
    public SixModelObject InvocationHandler;
}
