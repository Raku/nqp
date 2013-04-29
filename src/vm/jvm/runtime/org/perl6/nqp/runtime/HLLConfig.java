package org.perl6.nqp.runtime;

import org.perl6.nqp.sixmodel.SixModelObject;

/**
 * Contains configuration specific to a given HLL.
 */
public class HLLConfig {
    /**
     * The types the languages wish to get things boxed as.
     */
    public SixModelObject intBoxType;
    public SixModelObject numBoxType;
    public SixModelObject strBoxType;
    
    /**
     * The type to use for nqp::list(...)
     */
    public SixModelObject listType;
    
    /**
     * The type to use for nqp::hash(...)
     */
    public SixModelObject hashType;
    
    /**
     * The type to use for slurpy arrays.
     */
    public SixModelObject slurpyArrayType;
    
    /**
     * The type to use for slurpy hashes.
     */
    public SixModelObject slurpyHashType;
    
    /**
     * The type to use for array iteration (should have VMIter REPR).
     */
    public SixModelObject arrayIteratorType;
    
    /**
     * The type to use for hash iteration (should have VMIter REPR).
     */
    public SixModelObject hashIteratorType;
    
    /**
     * The type to construct for exceptions (should have VMException REPR).
     */
    public SixModelObject exceptionType;
    
    /**
     * The type to construct for IO handles.
     */
    public SixModelObject ioType;
}
