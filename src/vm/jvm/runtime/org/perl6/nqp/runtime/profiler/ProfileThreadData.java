package org.perl6.nqp.runtime.profiler;

import org.perl6.nqp.runtime.CallFrame;
import org.perl6.nqp.runtime.HLLConfig;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class ProfileThreadData {
     public ProfileCallNode call_graph = null;
     public ProfileCallNode current_call = null;

     public long start_time = 0;
     public long end_time = 0;

     public ProfileThreadData() {
         start_time = System.nanoTime();
     }

     public static ProfileThreadData getThreadData(ThreadContext tc) {
         if (tc.profileData == null) {
             tc.profileData = new ProfileThreadData();
         }
         return tc.profileData;
     }

     public static void logEnter(ThreadContext tc, CallFrame cf) {

         ProfileThreadData ptd = getThreadData(tc);

         ProfileCallNode pcn = null;
         if (ptd.current_call != null) {
             for (ProfileCallNode succ : ptd.current_call.successors) {
                 if (succ.cf.codeRef == cf.codeRef) {
                     pcn = succ;
                     break;
                 }
             }
         }

         if (pcn == null) {
             ProfileCallNode predecessor = ptd.current_call;
             pcn = new ProfileCallNode(cf, predecessor);
             if (predecessor != null) {
                 predecessor.successors.add(pcn);
             } else {
                 if (ptd.call_graph == null) {
                     ptd.call_graph = pcn;
                 }
             }
         }

         pcn.enter();
         ptd.current_call = pcn;
     }

     public static void logLeave(ThreadContext tc) {

         ProfileThreadData ptd = getThreadData(tc);
         ProfileCallNode pcn = ptd.current_call;
         if (pcn == null) {
             return;
         }
         ptd.current_call = pcn.leave();
     }

     public static SixModelObject end(ThreadContext tc) {
         ProfileThreadData ptd = getThreadData(tc);
         while (ptd.current_call != null) {
             ProfileThreadData.logLeave(tc);
         }
         ptd.end_time = System.nanoTime();
         return ptd.dumpData(tc);
     }

     public SixModelObject dumpData(ThreadContext tc) {
         HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
         SixModelObject threadsArray = hllConfig.slurpyArrayType.st.REPR.allocate(tc, hllConfig.slurpyArrayType.st);

         Ops.push(threadsArray, dumpThreadData(tc), tc);
         return threadsArray;
     }

     public SixModelObject dumpThreadData(ThreadContext tc) {
         HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
         SixModelObject threadHash = hllConfig.slurpyHashType.st.REPR.allocate(tc, hllConfig.slurpyHashType.st);

         Ops.bindkey(threadHash, "total_time", Ops.box_i(end_time - start_time, hllConfig.intBoxType, tc), tc);
         if (call_graph != null) {
             Ops.bindkey(threadHash, "call_graph", call_graph.dumpCallGraph(tc), tc);
         }

         return threadHash;
     }
}
