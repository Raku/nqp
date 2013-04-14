package org.perl6.nqp.runtime;
import java.util.Stack;

import org.perl6.nqp.sixmodel.SixModelObject;

public class ResumeStatus {
    private class ResumeFrame {
        public int ResumePoint;
        public long[] SavedInts;
        public double[] SavedNums;
        public String[] SavedStrs;
        public SixModelObject[] SavedObjs;
    }
    
    private Stack<ResumeFrame> SavedFrames;
    private ResumeFrame CurrentFrame;
    private int CurInt, CurNum, CurStr, CurObj;
    
    public ResumeStatus() {
        SavedFrames = new Stack<ResumeFrame>();
    }
    
    public void PushFrame(int ResumePoint, int NumInts, int NumNums, int NumStrs, int NumObjs) {
        CurrentFrame = new ResumeFrame();
        SavedFrames.push(CurrentFrame);
        CurrentFrame.ResumePoint = ResumePoint;
        if (NumInts > 0)
            CurrentFrame.SavedInts = new long[NumInts];
        if (NumNums > 0)
            CurrentFrame.SavedNums = new double[NumNums];
        if (NumStrs > 0)
            CurrentFrame.SavedStrs = new String[NumStrs];
        if (NumObjs > 0)
            CurrentFrame.SavedObjs = new SixModelObject[NumObjs];
        CurInt = CurNum = CurStr = CurObj = 0;
    }
    
    public void StashInt(long Stashee) {
        CurrentFrame.SavedInts[CurInt++] = Stashee;
    }
    public void StashNum(double Stashee) {
        CurrentFrame.SavedNums[CurNum++] = Stashee;
    }
    public void StashStr(String Stashee) {
        CurrentFrame.SavedStrs[CurStr++] = Stashee;
    }
    public void StashObj(SixModelObject Stashee) {
        CurrentFrame.SavedObjs[CurObj++] = Stashee;
    }
    
    public int PopFrame()
    {
        CurrentFrame = SavedFrames.pop();
        CurInt = CurNum = CurStr = CurObj = 0;
        return CurrentFrame.ResumePoint;
    }
    
    public long UnstashInt() {
        return CurrentFrame.SavedInts[CurInt++];
    }
    public double UnstashNum() {
        return CurrentFrame.SavedNums[CurNum++];
    }
    public String UnstashStr() {
        return CurrentFrame.SavedStrs[CurStr++];
    }
    public SixModelObject UnstashObj() {
        return CurrentFrame.SavedObjs[CurObj++];
    }
}
