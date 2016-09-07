package org.perl6.nqp.sixmodel.reprs;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.List;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;

public class DecoderInstance extends SixModelObject {
    private CharsetDecoder decoder;
    private List<ByteBuffer> toDecode;
    private List<CharBuffer> decoded;

    public void configure(ThreadContext tc, String encoding, SixModelObject config) {
        if (decoder == null)
            decoder = Charset.forName(encoding).newDecoder();
        else
            throw ExceptionHandling.dieInternal(tc, "Decoder already configured");
    }

    public void addBytes(ThreadContext tc, ByteBuffer bytes) {
        ensureConfigured(tc);
        if (toDecode == null)
            toDecode = new ArrayList<ByteBuffer>();
        toDecode.add(bytes);
    }

    public String takeChars(ThreadContext tc, long chars) {
        ensureConfigured(tc);

        if (chars == 0)
            return "";

        CharBuffer target = CharBuffer.allocate((int)chars + 1);
        eatDecodedChars(target);
        if (target.position() != chars)
            eatUndecodedBytes(target, false);

        String normalized = Normalizer.normalize(
            decodedBuffer(target),
            Normalizer.Form.NFC);
        if (normalized.length() > chars) {
            String result = normalized.substring(0, (int)chars);
            String remaining = normalized.substring((int)chars, normalized.length());
            if (remaining.length() > 0) {
                if (decoded == null)
                    decoded = new ArrayList<CharBuffer>();
                decoded.add(CharBuffer.wrap(remaining));
            }
            return result;
        }
        else if (normalized.length() == chars) {
            if (isNormTerminated(normalized))
                return normalized;
        }

        decoded.add(CharBuffer.wrap(normalized));
        return null;
    }

    public String takeAvailableChars(ThreadContext tc) {
        ensureConfigured(tc);

        int maxChars = availableDecodedChars() + availableUndecodedBytes();
        CharBuffer target = CharBuffer.allocate(maxChars);
        eatDecodedChars(target);
        eatUndecodedBytes(target, true);

        String normalized = Normalizer.normalize(
            decodedBuffer(target),
            Normalizer.Form.NFC);
        if (normalized.length() == 0 || isNormTerminated(normalized))
            return normalized;
        String result = normalized.substring(0, normalized.length() - 1);
        String last = normalized.substring(normalized.length() - 1, normalized.length());
        decoded.add(CharBuffer.wrap(last));
        return result;
    }

    public String takeAllChars(ThreadContext tc) {
        ensureConfigured(tc);
        int maxChars = availableDecodedChars() + availableUndecodedBytes();
        CharBuffer target = CharBuffer.allocate(maxChars);
        eatDecodedChars(target);
        if (toDecode != null) {
            if (toDecode.size() == 0)
                toDecode.add(ByteBuffer.allocate(0));
            eatUndecodedBytes(target, true);
            decoder.flush(target);
            decoder.reset();
        }
        return Normalizer.normalize(decodedBuffer(target), Normalizer.Form.NFC);
    }

    private int availableDecodedChars() {
        int available = 0;
        if (decoded != null)
            for (int i = 0; i < decoded.size(); i++)
                available += decoded.get(i).length();
        return available;
    }

    private int availableUndecodedBytes() {
        int available = 0;
        if (toDecode != null)
            for (int i = 0; i < toDecode.size(); i++)
                available += toDecode.get(i).capacity();
        return available;
    }

    private void eatDecodedChars(CharBuffer target) {
        if (decoded != null) {
            for (int i = 0; i < decoded.size(); i++)
                target.append(decoded.get(i));
            decoded.clear();
        }
    }

    private void eatUndecodedBytes(CharBuffer target, boolean eof) {
        if (toDecode != null) {
            while (toDecode.size() > 0) {
                ByteBuffer use = toDecode.get(0);
                decoder.decode(use, target, eof && toDecode.size() == 1);
                if (use.position() == use.limit())
                    toDecode.remove(0);
                else
                    break;
            }
        }
    }

    private boolean isNormTerminated(String s) {
        char last = s.charAt(s.length() - 1);
        return last < 0x20 || last >= 0x7F && last <= 0x9F || last == 0xAD;
    }

    private CharBuffer decodedBuffer(CharBuffer buf) {
        int pos = buf.position();
        buf.rewind();
        return buf.subSequence(0, pos);
    }

    public long isEmpty(ThreadContext tc) {
        ensureConfigured(tc);
        if (toDecode != null && toDecode.size() > 0)
            return 0;
        if (decoded != null && decoded.size() > 0)
            return 0;
        return 1;
    }

    private void ensureConfigured(ThreadContext tc) {
        if (decoder == null)
            throw ExceptionHandling.dieInternal(tc, "Docder not yet configured");
    }
}
