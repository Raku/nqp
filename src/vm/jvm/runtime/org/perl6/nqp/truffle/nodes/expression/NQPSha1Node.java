package org.perl6.nqp.truffle.nodes.expression;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.perl6.nqp.truffle.nodes.NQPNode;
import org.perl6.nqp.truffle.nodes.NQPStrNode;
import org.perl6.nqp.dsl.Deserializer;


@NodeInfo(shortName = "sha1")
public final class NQPSha1Node extends NQPStrNode {
    @Child private NQPNode argNode;

    @Deserializer
    public NQPSha1Node(NQPNode argNode) {
        this.argNode = argNode;
    }

    @Override
    public String executeStr(VirtualFrame frame) {
        return sha1(argNode.executeStr(frame));
    }


    @TruffleBoundary
    public String sha1(String str) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA1");

            byte[] inBytes = str.getBytes("UTF-8");
            byte[] outBytes = md.digest(inBytes);

            StringBuilder sb = new StringBuilder();
            for (byte b : outBytes) {
                sb.append(String.format("%02X", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException("Should not happen");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("Should not happen");
        }
    }
}
