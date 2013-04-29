package org.perl6.nqp.sixmodel;

/**
 * Language interop information that we hold if the type is declaring a
 * container of some sort.
 */
public class ContainerSpec {
    /**
     * Class handle where we find the contained value.
     */
    SixModelObject ClassHandle;
    
    /**
     * Attribute name where we find the contained value.
     */
    String AttrName;
    
    /**
     * Attribute lookup hint used in gradual typing.
     */
    int Hint;
    
    /**
     * FETCH method if applicable.
     */
    SixModelObject FetchMethod;
}
