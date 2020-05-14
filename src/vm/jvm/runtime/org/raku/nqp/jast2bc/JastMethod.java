package org.raku.nqp.jast2bc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.objectweb.asm.Label;
import org.objectweb.asm.Type;

import org.raku.nqp.runtime.ThreadContext;

import org.raku.nqp.sixmodel.SixModelObject;
import org.raku.nqp.runtime.Ops;

public class JastMethod {
    public String name;
    public boolean isStatic = false;
    public Type returns;
    public List<Type> arguments = new ArrayList<Type>();
    public Map<String, JASTCompiler.VariableDef> locals = new HashMap<String, JASTCompiler.VariableDef>();
    public SixModelObject instructions;
    public String crName;
    public String crCuid;
    public int crOuter = -2; // -1 = has no outer  -2 = not a coderef
    public List<String> crOlex = new ArrayList<String>();
    public List<String> crIlex = new ArrayList<String>();
    public List<String> crNlex = new ArrayList<String>();
    public List<String> crSlex = new ArrayList<String>();
    public long[] crHandlers;
    public boolean hasExitHandler = false;
    public short argsExpectation = 0;
    public boolean isThunk = false;

    Label beginAll, endAll;
    Map<String, JASTCompiler.LabelInfo> labels = new HashMap<String, JASTCompiler.LabelInfo>();

    public JastMethod(SixModelObject jast, SixModelObject jastMethod, ThreadContext tc) throws Exception {
        if (Ops.istype(jast, jastMethod, tc) == 0)
            throw new Exception("JAST node isn't a JAST::Method");

        SixModelObject iter;
        beginAll = new Label();
        endAll = new Label();
        int curArgIndex = 1;

        name = Ops.getattr_s(jast, jastMethod, "$!name", nameHint, tc);
        returns = JASTCompiler.processType(Ops.getattr(jast, jastMethod, "$!returns", returnsHint, tc).get_str(tc));
        isStatic = Ops.getattr_i(jast, jastMethod, "$!static", staticHint, tc) != 0;
        if (isStatic)
            curArgIndex = 0;

        iter = Ops.iter(Ops.getattr(jast, jastMethod, "@!arguments", argumentsHint, tc), tc);
        while (Ops.istrue(iter, tc) != 0) {
            SixModelObject pair = iter.shift_boxed(tc);
            String name = pair.at_pos_boxed(tc, 0).get_str(tc);
            Type type = JASTCompiler.processType(pair.at_pos_boxed(tc, 1).get_str(tc));
            arguments.add(type);
            if (locals.containsKey(name))
                throw new Exception("Duplicate local name: " + name);
            locals.put(name, new JASTCompiler.VariableDef(curArgIndex, type.getDescriptor(), beginAll, endAll));
            curArgIndex += (type == Type.LONG_TYPE || type == Type.DOUBLE_TYPE ? 2 : 1);
        }

        iter = Ops.iter(Ops.getattr(jast, jastMethod, "@!locals", localsHint, tc), tc);
        while (Ops.istrue(iter, tc) != 0) {
            SixModelObject pair = iter.shift_boxed(tc);
            String name = pair.at_pos_boxed(tc, 0).get_str(tc);
            Type type = JASTCompiler.processType(pair.at_pos_boxed(tc, 1).get_str(tc));
            if (locals.containsKey(name))
                throw new Exception("Duplicate local name: " + name);
            locals.put(name, new JASTCompiler.VariableDef(curArgIndex, type.getDescriptor(), beginAll, endAll));
            curArgIndex += (type == Type.LONG_TYPE || type == Type.DOUBLE_TYPE ? 2 : 1);
        }

        instructions = Ops.getattr(jast, jastMethod, "@!instructions", instructionsHint, tc);

        crName = Ops.getattr_s(jast, jastMethod, "$!cr_name", crNameHint, tc);
        crCuid = Ops.getattr_s(jast, jastMethod, "$!cr_cuid", crCuidHint, tc);
        crOuter = (int) Ops.getattr_i(jast, jastMethod, "$!cr_outer", crOuterHint, tc);

        fillList(crOlex, Ops.getattr(jast, jastMethod, "@!cr_olex", crOlexHint, tc), tc);
        fillList(crIlex, Ops.getattr(jast, jastMethod, "@!cr_ilex", crIlexHint, tc), tc);
        fillList(crNlex, Ops.getattr(jast, jastMethod, "@!cr_nlex", crNlexHint, tc), tc);
        fillList(crSlex, Ops.getattr(jast, jastMethod, "@!cr_slex", crSlexHint, tc), tc);

        SixModelObject handlersList = Ops.getattr(jast, jastMethod, "@!cr_handlers", crHandlersHint, tc);
        iter = Ops.iter(handlersList, tc);
        crHandlers = new long[(int) Ops.elems(handlersList, tc)];
        for (int i = 0; Ops.istrue(iter, tc) != 0; i++) {
            crHandlers[i] = iter.shift_boxed(tc).get_int(tc);
        }
        hasExitHandler = Ops.getattr_i(jast, jastMethod, "$!has_exit_handler", hasExitHandlerHint, tc) != 0;
        argsExpectation = (short) Ops.getattr_i(jast, jastMethod, "$!args_expectation", argsExpectationHint, tc);
        try {
            isThunk = Ops.getattr_i(jast, jastMethod, "$!is_thunk", isThunkHint, tc) != 0;
        } catch (Throwable t) {
            /* Most likely a version of the node without the field. */
        }
    }

    private void fillList(List<String> list, SixModelObject smoList, ThreadContext tc) {
        SixModelObject iter = Ops.iter(smoList, tc);
        while(Ops.istrue(iter, tc) != 0) {
            String value = iter.shift_boxed(tc).get_str(tc);
            list.add(value);
        }
    }

    private static long nameHint, staticHint, returnsHint, argumentsHint,
            localsHint, instructionsHint, crNameHint, crCuidHint, crOuterHint,
            crOlexHint, crIlexHint, crNlexHint, crSlexHint, crHandlersHint,
            hasExitHandlerHint, argsExpectationHint, isThunkHint;
    public static void setup(SixModelObject jastMethod, ThreadContext tc) {
        nameHint            = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!name");
        staticHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!static");
        returnsHint         = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!returns");
        argumentsHint       = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!arguments");
        localsHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!locals");
        instructionsHint    = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!instructions");
        crNameHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!cr_name");
        crCuidHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!cr_cuid");
        crOuterHint         = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!cr_outer");
        crOlexHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!cr_olex");
        crIlexHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!cr_ilex");
        crNlexHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!cr_nlex");
        crSlexHint          = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!cr_slex");
        crHandlersHint      = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "@!cr_handlers");
        hasExitHandlerHint  = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!has_exit_handler");
        argsExpectationHint = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!args_expectation");
        isThunkHint         = jastMethod.st.REPR.hint_for(tc, jastMethod.st, jastMethod, "$!is_thunk");
    }
}
