package org.perl6.nqp.runtime.profiler;

import java.util.ArrayList;
import java.util.List;

import org.perl6.nqp.runtime.CallFrame;
import org.perl6.nqp.runtime.HLLConfig;
import org.perl6.nqp.runtime.Ops;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class ProfileCallNode {
    public CallFrame cf;
    public long cur_entry_time;

    public long total_time = 0;
    public long total_entries = 0;

    public ProfileCallNode predecessor;
    public List<ProfileCallNode> successors = new ArrayList<ProfileCallNode>();

    public ProfileCallNode(CallFrame cf, ProfileCallNode predecessor) {
        this.cf = cf;
        this.predecessor = predecessor;
    }

    public void enter() {
        cur_entry_time = System.nanoTime();
        total_entries++;
    }

    public ProfileCallNode leave() {
        total_time += System.nanoTime() - cur_entry_time;
        return predecessor;
    }

    public SixModelObject dumpCallGraph(ThreadContext tc) {
        HLLConfig hllConfig = tc.curFrame.codeRef.staticInfo.compUnit.hllConfig;
        SixModelObject nodeHash = hllConfig.slurpyHashType.st.REPR.allocate(tc, hllConfig.slurpyHashType.st);

        Ops.bindkey(nodeHash, "name", Ops.box_s(cf.codeRef.name, hllConfig.strBoxType, tc), tc);
        Ops.bindkey(nodeHash, "id", Ops.box_i(cf.codeRef.hashCode(), hllConfig.intBoxType, tc), tc);
        Ops.bindkey(nodeHash, "file", Ops.box_s("<none>", hllConfig.strBoxType, tc), tc);
        Ops.bindkey(nodeHash, "entries", Ops.box_i(total_entries, hllConfig.intBoxType, tc), tc);
        Ops.bindkey(nodeHash, "inclusive_time", Ops.box_i(total_time / 1000, hllConfig.intBoxType, tc), tc);

        if (successors.size() > 0) {
            SixModelObject callees = hllConfig.slurpyArrayType.st.REPR.allocate(tc, hllConfig.slurpyArrayType.st);
            long exclusive_time = total_time;
            for (ProfileCallNode node : successors) {
                Ops.push(callees, node.dumpCallGraph(tc), tc);
                exclusive_time -= node.total_time;
            }
            Ops.bindkey(nodeHash, "exclusive_time", Ops.box_i(exclusive_time / 1000, hllConfig.intBoxType, tc), tc);
            Ops.bindkey(nodeHash, "callees", callees, tc);
        } else {
            Ops.bindkey(nodeHash, "exclusive_time", Ops.box_i(total_time / 1000, hllConfig.intBoxType, tc), tc);
        }

        return nodeHash;
    }
}
