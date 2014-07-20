package org.perl6.nqp.sixmodel.reprs;

import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.REPR;
import org.perl6.nqp.sixmodel.STable;
import org.perl6.nqp.sixmodel.SerializationReader;
import org.perl6.nqp.sixmodel.SerializationWriter;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.TypeObject;

public class NFA extends REPR {
    /* NFA constants. */
    public static final int EDGE_FATE             = 0;
    public static final int EDGE_EPSILON          = 1;
    public static final int EDGE_CODEPOINT        = 2;
    public static final int EDGE_CODEPOINT_NEG    = 3;
    public static final int EDGE_CHARCLASS        = 4;
    public static final int EDGE_CHARCLASS_NEG    = 5;
    public static final int EDGE_CHARLIST         = 6;
    public static final int EDGE_CHARLIST_NEG     = 7;
    public static final int EDGE_CODEPOINT_I      = 9;
    public static final int EDGE_CODEPOINT_I_NEG  = 10;
    public static final int EDGE_GENERIC_VAR      = 11;
    public static final int EDGE_CHARRANGE        = 12;
    public static final int EDGE_CHARRANGE_NEG    = 13;
    
    public SixModelObject type_object_for(ThreadContext tc, SixModelObject HOW) {
        STable st = new STable(this, HOW);
        SixModelObject obj = new TypeObject();
        obj.st = st;
        st.WHAT = obj;
        return st.WHAT;
    }

    public SixModelObject allocate(ThreadContext tc, STable st) {
        NFAInstance obj = new NFAInstance();
        obj.st = st;
        return obj;
    }

    public SixModelObject deserialize_stub(ThreadContext tc, STable st) {
        NFAInstance stub = new NFAInstance();
        stub.st = st;
        return stub;
    }

    public void deserialize_finish(ThreadContext tc, STable st,
            SerializationReader reader, SixModelObject obj) {
        NFAInstance body = (NFAInstance)obj;
        
        /* Read fates. */
        body.fates = reader.readRef();
        
        /* Read number of states. */
        body.numStates = (int)reader.readLong();
        
        if (body.numStates > 0) {
            /* Read state edge list counts. */
            int[] numStateEdges = new int[body.numStates];
            for (int i = 0; i < body.numStates; i++)
                numStateEdges[i] = (int)reader.readLong();
                
            /* Read state graph. */
            body.states = new NFAStateInfo[body.numStates][];
            for (int i = 0; i < body.numStates; i++) {
                int edges = numStateEdges[i];
                body.states[i] = new NFAStateInfo[edges];
                for (int j = 0; j < edges; j++) {
                    body.states[i][j] = new NFAStateInfo();
                    body.states[i][j].act = (int)reader.readLong();
                    body.states[i][j].to = (int)reader.readLong();
                    switch (body.states[i][j].act) {
                    case EDGE_FATE:
                    case EDGE_CODEPOINT:
                    case EDGE_CODEPOINT_NEG:
                    case EDGE_CHARCLASS:
                    case EDGE_CHARCLASS_NEG:
                        body.states[i][j].arg_i = (int)reader.readLong();
                        break;
                    case EDGE_CHARLIST:
                    case EDGE_CHARLIST_NEG:
                        body.states[i][j].arg_s = reader.readStr();
                        break;
                    case EDGE_CODEPOINT_I:
                    case EDGE_CODEPOINT_I_NEG:
                    case EDGE_CHARRANGE:
                    case EDGE_CHARRANGE_NEG: {
                        body.states[i][j].arg_lc = (char)reader.readLong();
                        body.states[i][j].arg_uc = (char)reader.readLong();
                        break;
                    }
                    }
                }
            }
        }
    }
    
    public void serialize(ThreadContext tc, SerializationWriter writer, SixModelObject obj) {
        NFAInstance body = (NFAInstance)obj;
        
        /* Write fates. */
        writer.writeRef(body.fates);
        
        /* Write number of states. */
        writer.writeInt(body.numStates);
        
        /* Write state edge list counts. */
        for (int i = 0; i < body.numStates; i++)
            writer.writeInt(body.states[i].length);

        /* Write state graph. */
        for (int i = 0; i < body.numStates; i++) {
            for (int j = 0; j < body.states[i].length; j++) {
                writer.writeInt(body.states[i][j].act);
                writer.writeInt(body.states[i][j].to);
                switch (body.states[i][j].act) {
                case EDGE_FATE:
                case EDGE_CODEPOINT:
                case EDGE_CODEPOINT_NEG:
                case EDGE_CHARCLASS:
                case EDGE_CHARCLASS_NEG:
                    writer.writeInt(body.states[i][j].arg_i);
                    break;
                case EDGE_CHARLIST:
                case EDGE_CHARLIST_NEG:
                    writer.writeStr(body.states[i][j].arg_s);
                    break;
                case EDGE_CODEPOINT_I:
                case EDGE_CODEPOINT_I_NEG:
                case EDGE_CHARRANGE:
                case EDGE_CHARRANGE_NEG: {
                    writer.writeInt(body.states[i][j].arg_lc);
                    writer.writeInt(body.states[i][j].arg_uc);
                    break;
                }
                }
            }
        }
    }
}
