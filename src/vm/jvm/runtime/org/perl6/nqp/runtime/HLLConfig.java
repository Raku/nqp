package org.perl6.nqp.runtime;

import org.perl6.nqp.sixmodel.SixModelObject;

/**
 * Contains configuration specific to a given HLL.
 */
public class HLLConfig {
    /* HLL type roles. */
    public static final int ROLE_NONE  = 0;
    public static final int ROLE_INT   = 1;
    public static final int ROLE_NUM   = 2;
    public static final int ROLE_STR   = 3;
    public static final int ROLE_ARRAY = 4;
    public static final int ROLE_HASH  = 5;
    public static final int ROLE_CODE  = 6;
    
    /**
     * HLL name.
     */
    public String name;
    
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
    
    /**
     * HLL interop types.
     */
    public SixModelObject foreignTypeInt;
    public SixModelObject foreignTypeNum;
    public SixModelObject foreignTypeStr;
    public SixModelObject nullValue;
    
    /**
     * HLL interop mappers.
     */
    public SixModelObject foreignTransformInt;
    public SixModelObject foreignTransformNum;
    public SixModelObject foreignTransformStr;
    public SixModelObject foreignTransformArray;
    public SixModelObject foreignTransformHash;
    public SixModelObject foreignTransformCode;
    public SixModelObject foreignTransformAny;
    
    /**
     * Block exit handler, for those that need it.
     */
    public SixModelObject exitHandler;

    /**
     * HLL Handler for lexical exceptions without handler.
     */
    public SixModelObject lexicalHandlerNotFoundError;

    /**
     * Native reference types.
     */
    public SixModelObject intLexRef;
    public SixModelObject numLexRef;
    public SixModelObject strLexRef;
    public SixModelObject intAttrRef;
    public SixModelObject numAttrRef;
    public SixModelObject strAttrRef;
    public SixModelObject intPosRef;
    public SixModelObject numPosRef;
    public SixModelObject strPosRef;
}
