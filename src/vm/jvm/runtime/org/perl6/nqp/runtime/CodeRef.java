package org.perl6.nqp.runtime;
import java.lang.invoke.MethodHandle;

import org.perl6.nqp.sixmodel.SixModelObject;

/**
 * Object representing a reference to a piece of code (may later become a
 * REPR).
 */
public class CodeRef extends SixModelObject {
    /**
     * The static data about this code reference.
     */
    public StaticCodeInfo staticInfo;
    
    /**
     * The captured outer frame, if any.
     */
    public CallFrame outer;
    
    /**
     * High level code object, if any.
     */
    public SixModelObject codeObject;
    
    /**
     * Is this flagged as a static code ref?
     */
    public boolean isStaticCodeRef;
    
    /**
     * Is this flagged as a compiler stub?
     */
    public boolean isCompilerStub;
    
    /**
     * Sets up the code-ref data structure.
     */
    public CodeRef(CompilationUnit compUnit, MethodHandle mh,
    		String name, String uniqueId,
            String[] oLexicalNames, String[] iLexicalNames,
            String[] nLexicalNames, String[] sLexicalNames,
            long[][] handlers) {
        staticInfo = new StaticCodeInfo(compUnit, mh, name,uniqueId,
                oLexicalNames, iLexicalNames, nLexicalNames, sLexicalNames,
                handlers, this);
    }
    
    /**
     * Clones the object.
     */
    public SixModelObject clone(ThreadContext tc) {
        CodeRef clone = new CodeRef();
        clone.st = this.st;
        clone.staticInfo = this.staticInfo;
        if (this.outer != null)
        	clone.outer = this.outer;
        else
        	clone.outer = staticInfo.outerStaticInfo.priorInvocation;
        return clone;
    }
    
    /**
     * Private constructor for the sake of clone.
     */
    private CodeRef() {
    }
}
