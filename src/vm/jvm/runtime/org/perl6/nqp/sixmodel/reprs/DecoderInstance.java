package org.perl6.nqp.sixmodel.reprs;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.text.Normalizer;
import java.util.ArrayList;
import java.util.List;
import org.perl6.nqp.runtime.Buffers;
import org.perl6.nqp.runtime.ExceptionHandling;
import org.perl6.nqp.runtime.ThreadContext;
import org.perl6.nqp.sixmodel.SixModelObject;
import org.perl6.nqp.sixmodel.StorageSpec;

public class DecoderInstance extends SixModelObject {
    private Charset charset;
    private CharsetDecoder decoder;
    private List<ByteBuffer> toDecode;
    private List<CharBuffer> decoded;
    private List<String> lineSeps;

    public void configure(ThreadContext tc, String encoding, SixModelObject config) {
        if (decoder == null) {
            charset = Charset.forName(encoding);
            decoder = charset.newDecoder();
            decoded = new ArrayList<CharBuffer>();
            lineSeps = new ArrayList<String>();
            lineSeps.add("\n");
            lineSeps.add("\r\n");
        }
        else {
            throw ExceptionHandling.dieInternal(tc, "Decoder already configured");
        }
    }

    public void setLineSeps(ThreadContext tc, SixModelObject seps) {
        final int prim = seps.st.REPR.get_value_storage_spec(tc, seps.st).boxed_primitive;
        if (prim != StorageSpec.BP_STR)
            ExceptionHandling.dieInternal(tc,
                    "Line separators must be provided as an array of native strings");
        lineSeps.clear();
        long numSeps = seps.elems(tc);
        for (long i = 0; i < numSeps; i++) {
            seps.at_pos_native(tc, i);
            lineSeps.add(tc.native_s);
        }
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
        eatAllDecodedChars(target);
        if (target.position() != chars)
            eatUndecodedBytes(target, false);

        String normalized = Normalizer.normalize(
            decodedBuffer(target),
            Normalizer.Form.NFC);
        if (normalized.length() > chars) {
            String result = normalized.substring(0, (int)chars);
            String remaining = normalized.substring((int)chars, normalized.length());
            if (remaining.length() > 0) {
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
        eatAllDecodedChars(target);
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
        eatAllDecodedChars(target);
        if (toDecode != null) {
            if (toDecode.size() == 0)
                toDecode.add(ByteBuffer.allocate(0));
            eatUndecodedBytes(target, true);
            decoder.flush(target);
            decoder.reset();
        }
        return Normalizer.normalize(decodedBuffer(target), Normalizer.Form.NFC);
    }

    public String takeLine(ThreadContext tc, boolean chomp, boolean eof) {
        ensureConfigured(tc);
        while (true) {
            /* See if we can find the separator in any of the decoded chars. */
            int charsToTake = 0;
            for (int i = 0; i < (decoded == null ? 0 : decoded.size()); i++) {
                CharBuffer search = decoded.get(i);
                for (int j = 0; j < search.remaining(); j++) {
                    char c = search.charAt(j);
                    for (int k = 0; k < lineSeps.size(); k++) {
                        String sep = lineSeps.get(k);
                        if (sep.charAt(0) == c) {
                            if (sep.length() == 1 || sepMatchAt(i, j, sep)) {
                                return takeCharsSkipChars(
                                        chomp ? charsToTake : charsToTake + sep.length(),
                                        chomp ? sep.length() : 0);
                            }
                        }
                    }
                    charsToTake++;
                }
            }

            /* If there are no more buffers to decode then we're done. */
            if (toDecode == null || toDecode.size() == 0)
                break;

            /* Otherwise decode one of them. */
            ByteBuffer decodee = toDecode.get(0);
            CharBuffer target = CharBuffer.allocate(decodee.limit());
            decoder.decode(decodee, target, eof && toDecode.size() == 1);
            target.rewind();
            decoded.add(target);
            toDecode.remove(0);
        }

        return eof ? takeAllChars(tc) : null;
    }

    public long bytesAvailable(ThreadContext tc) {
        ensureConfigured(tc);
        forceDecodedBackToBytes();
        return availableUndecodedBytes();
    }

    public SixModelObject takeBytes(ThreadContext tc, SixModelObject bufType, long lBytes) {
        int available = (int)bytesAvailable(tc); // Implicitly forces decoded back to bytes
        SixModelObject res = bufType.st.REPR.allocate(tc, bufType.st);
        byte[] resBytes = new byte[available];
        int bytes = (int)lBytes;
        if (bytes > available)
            bytes = available;
        int need = bytes;
        while (need > 0) {
            ByteBuffer takeFrom = toDecode.get(0);
            int fromAvailable = takeFrom.remaining();
            if (need >= fromAvailable) {
                takeFrom.get(resBytes, bytes - need, fromAvailable);
                need -= fromAvailable;
                toDecode.remove(0);
            }
            else {
                takeFrom.get(resBytes, bytes - need, need);
                need = 0;
            }
        }
        Buffers.stashBytes(tc, res, resBytes);
        return res;
    }

    private boolean sepMatchAt(int decStart, int charStart, String sep) {
        int sepIndex = 0;
        boolean firstBuffer = true;
        for (int i = decStart; i < decoded.size(); i++) {
            CharBuffer search = decoded.get(i);
            for (int j = firstBuffer ? charStart : 0; j < search.remaining(); j++) {
                if (search.charAt(j) != sep.charAt(sepIndex++))
                    return false;
                if (sepIndex == sep.length())
                    return true;
            }
            firstBuffer = false;
        }
        return false;
    }

    private String takeCharsSkipChars(int take, int skip) {
        CharBuffer target = CharBuffer.allocate(take);
        eatDecodedChars(target, take);
        if (skip > 0)
            eatDecodedChars(CharBuffer.allocate(skip), skip);
        target.rewind();
        return Normalizer.normalize(target, Normalizer.Form.NFC);
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
                available += toDecode.get(i).remaining();
        return available;
    }

    private void eatAllDecodedChars(CharBuffer target) {
        if (decoded != null) {
            for (int i = 0; i < decoded.size(); i++) {
                target.append(decoded.get(i));
            }
            decoded.clear();
        }
    }

    private void eatDecodedChars(CharBuffer target, int n) {
        int remaining = n;
        while (remaining > 0 && decoded.size() > 0) {
            CharBuffer source = decoded.get(0);
            if (source.remaining() <= remaining) {
                target.append(source);
                remaining -= source.remaining();
                decoded.remove(0);
            }
            else {
                target.append(source.subSequence(0, remaining));
                decoded.set(0, source.subSequence(remaining, source.remaining()));
                remaining = 0;
            }
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

    private void forceDecodedBackToBytes() {
        for (int i = decoded.size() - 1; i >= 0; i--) {
            toDecode.add(0, charset.encode(decoded.get(i)));
            decoded.remove(i);
        }
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
            throw ExceptionHandling.dieInternal(tc, "Decoder not yet configured");
    }
}
