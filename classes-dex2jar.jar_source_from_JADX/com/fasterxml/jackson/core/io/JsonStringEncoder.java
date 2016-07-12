package com.fasterxml.jackson.core.io;

import android.support.v4.media.TransportMediator;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.lang.ref.SoftReference;
import org.apache.commons.io.IOUtils;

public final class JsonStringEncoder {
    private static final byte[] HB;
    private static final char[] HC;
    private static final int SURR1_FIRST = 55296;
    private static final int SURR1_LAST = 56319;
    private static final int SURR2_FIRST = 56320;
    private static final int SURR2_LAST = 57343;
    protected static final ThreadLocal<SoftReference<JsonStringEncoder>> _threadEncoder;
    protected ByteArrayBuilder _bytes;
    protected final char[] _qbuf;
    protected TextBuffer _text;

    static {
        HC = CharTypes.copyHexChars();
        HB = CharTypes.copyHexBytes();
        _threadEncoder = new ThreadLocal();
    }

    public JsonStringEncoder() {
        this._qbuf = new char[6];
        this._qbuf[0] = IOUtils.DIR_SEPARATOR_WINDOWS;
        this._qbuf[2] = '0';
        this._qbuf[3] = '0';
    }

    private int _appendByte(int i, int i2, ByteArrayBuilder byteArrayBuilder, int i3) {
        byteArrayBuilder.setCurrentSegmentLength(i3);
        byteArrayBuilder.append(92);
        if (i2 < 0) {
            byteArrayBuilder.append(117);
            if (i > MotionEventCompat.ACTION_MASK) {
                int i4 = i >> 8;
                byteArrayBuilder.append(HB[i4 >> 4]);
                byteArrayBuilder.append(HB[i4 & 15]);
                i &= MotionEventCompat.ACTION_MASK;
            } else {
                byteArrayBuilder.append(48);
                byteArrayBuilder.append(48);
            }
            byteArrayBuilder.append(HB[i >> 4]);
            byteArrayBuilder.append(HB[i & 15]);
        } else {
            byteArrayBuilder.append((byte) i2);
        }
        return byteArrayBuilder.getCurrentSegmentLength();
    }

    private int _appendNamed(int i, char[] cArr) {
        cArr[1] = (char) i;
        return 2;
    }

    private int _appendNumeric(int i, char[] cArr) {
        cArr[1] = 'u';
        cArr[4] = HC[i >> 4];
        cArr[5] = HC[i & 15];
        return 6;
    }

    private static int _convert(int i, int i2) {
        if (i2 >= SURR2_FIRST && i2 <= SURR2_LAST) {
            return (AccessibilityNodeInfoCompat.ACTION_CUT + ((i - SURR1_FIRST) << 10)) + (i2 - SURR2_FIRST);
        }
        throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(i2) + "; illegal combination");
    }

    private static void _illegal(int i) {
        throw new IllegalArgumentException(UTF8Writer.illegalSurrogateDesc(i));
    }

    public static JsonStringEncoder getInstance() {
        SoftReference softReference = (SoftReference) _threadEncoder.get();
        JsonStringEncoder jsonStringEncoder = softReference == null ? null : (JsonStringEncoder) softReference.get();
        if (jsonStringEncoder != null) {
            return jsonStringEncoder;
        }
        jsonStringEncoder = new JsonStringEncoder();
        _threadEncoder.set(new SoftReference(jsonStringEncoder));
        return jsonStringEncoder;
    }

    public byte[] encodeAsUTF8(String str) {
        int i;
        ByteArrayBuilder byteArrayBuilder = this._bytes;
        if (byteArrayBuilder == null) {
            byteArrayBuilder = new ByteArrayBuilder(null);
            this._bytes = byteArrayBuilder;
        }
        int length = str.length();
        byte[] resetAndGetFirstSegment = byteArrayBuilder.resetAndGetFirstSegment();
        int length2 = resetAndGetFirstSegment.length;
        int i2 = 0;
        int i3 = 0;
        loop0:
        while (i2 < length) {
            int charAt = str.charAt(i2);
            int i4 = i2 + 1;
            byte[] bArr = resetAndGetFirstSegment;
            int i5 = i3;
            byte[] bArr2 = bArr;
            while (charAt <= TransportMediator.KEYCODE_MEDIA_PAUSE) {
                if (i5 >= length2) {
                    bArr2 = byteArrayBuilder.finishCurrentSegment();
                    length2 = bArr2.length;
                    i5 = 0;
                }
                i2 = i5 + 1;
                bArr2[i5] = (byte) charAt;
                if (i4 >= length) {
                    i = i2;
                    break loop0;
                }
                charAt = str.charAt(i4);
                i4++;
                i5 = i2;
            }
            if (i5 >= length2) {
                bArr2 = byteArrayBuilder.finishCurrentSegment();
                length2 = bArr2.length;
                i2 = 0;
            } else {
                i2 = i5;
            }
            if (charAt < AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT) {
                i5 = i2 + 1;
                bArr2[i2] = (byte) ((charAt >> 6) | 192);
                i2 = charAt;
                charAt = i4;
            } else if (charAt < SURR1_FIRST || charAt > SURR2_LAST) {
                i5 = i2 + 1;
                bArr2[i2] = (byte) ((charAt >> 12) | 224);
                if (i5 >= length2) {
                    bArr2 = byteArrayBuilder.finishCurrentSegment();
                    length2 = bArr2.length;
                    i5 = 0;
                }
                bArr2[i5] = (byte) (((charAt >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                i5++;
                i2 = charAt;
                charAt = i4;
            } else {
                if (charAt > SURR1_LAST) {
                    _illegal(charAt);
                }
                if (i4 >= length) {
                    _illegal(charAt);
                }
                int i6 = i4 + 1;
                charAt = _convert(charAt, str.charAt(i4));
                if (charAt > 1114111) {
                    _illegal(charAt);
                }
                i5 = i2 + 1;
                bArr2[i2] = (byte) ((charAt >> 18) | 240);
                if (i5 >= length2) {
                    bArr2 = byteArrayBuilder.finishCurrentSegment();
                    length2 = bArr2.length;
                    i5 = 0;
                }
                i2 = i5 + 1;
                bArr2[i5] = (byte) (((charAt >> 12) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                if (i2 >= length2) {
                    bArr2 = byteArrayBuilder.finishCurrentSegment();
                    length2 = bArr2.length;
                    i5 = 0;
                } else {
                    i5 = i2;
                }
                bArr2[i5] = (byte) (((charAt >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                i5++;
                i2 = charAt;
                charAt = i6;
            }
            if (i5 >= length2) {
                bArr2 = byteArrayBuilder.finishCurrentSegment();
                length2 = bArr2.length;
                i5 = 0;
            }
            bArr2[i5] = (byte) ((i2 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            i2 = charAt;
            bArr = bArr2;
            i3 = i5 + 1;
            resetAndGetFirstSegment = bArr;
        }
        i = i3;
        return this._bytes.completeAndCoalesce(i);
    }

    public char[] quoteAsString(String str) {
        TextBuffer textBuffer = this._text;
        if (textBuffer == null) {
            textBuffer = new TextBuffer(null);
            this._text = textBuffer;
        }
        Object emptyAndGetCurrentSegment = textBuffer.emptyAndGetCurrentSegment();
        int[] iArr = CharTypes.get7BitOutputEscapes();
        char length = iArr.length;
        int length2 = str.length();
        int i = 0;
        int i2 = 0;
        loop0:
        while (i < length2) {
            int i3;
            while (true) {
                char charAt = str.charAt(i);
                if (charAt < length && iArr[charAt] != 0) {
                    break;
                }
                if (i2 >= emptyAndGetCurrentSegment.length) {
                    emptyAndGetCurrentSegment = textBuffer.finishCurrentSegment();
                    i3 = 0;
                } else {
                    i3 = i2;
                }
                i2 = i3 + 1;
                emptyAndGetCurrentSegment[i3] = charAt;
                i++;
                if (i >= length2) {
                    break loop0;
                }
            }
            char charAt2 = str.charAt(i);
            int i4 = iArr[charAt2];
            i3 = i4 < 0 ? _appendNumeric(charAt2, this._qbuf) : _appendNamed(i4, this._qbuf);
            if (i2 + i3 > emptyAndGetCurrentSegment.length) {
                i4 = emptyAndGetCurrentSegment.length - i2;
                if (i4 > 0) {
                    System.arraycopy(this._qbuf, 0, emptyAndGetCurrentSegment, i2, i4);
                }
                emptyAndGetCurrentSegment = textBuffer.finishCurrentSegment();
                i2 = i3 - i4;
                System.arraycopy(this._qbuf, i4, emptyAndGetCurrentSegment, 0, i2);
            } else {
                System.arraycopy(this._qbuf, 0, emptyAndGetCurrentSegment, i2, i3);
                i2 += i3;
            }
            i++;
        }
        textBuffer.setCurrentLength(i2);
        return textBuffer.contentsAsArray();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] quoteAsUTF8(java.lang.String r11) {
        /*
        r10 = this;
        r9 = 127; // 0x7f float:1.78E-43 double:6.27E-322;
        r4 = 0;
        r0 = r10._bytes;
        if (r0 != 0) goto L_0x000f;
    L_0x0007:
        r0 = new com.fasterxml.jackson.core.util.ByteArrayBuilder;
        r1 = 0;
        r0.<init>(r1);
        r10._bytes = r0;
    L_0x000f:
        r7 = r11.length();
        r1 = r0.resetAndGetFirstSegment();
        r2 = r4;
        r3 = r4;
    L_0x0019:
        if (r2 >= r7) goto L_0x0056;
    L_0x001b:
        r6 = com.fasterxml.jackson.core.io.CharTypes.get7BitOutputEscapes();
    L_0x001f:
        r8 = r11.charAt(r2);
        if (r8 > r9) goto L_0x0029;
    L_0x0025:
        r5 = r6[r8];
        if (r5 == 0) goto L_0x0045;
    L_0x0029:
        r5 = r1.length;
        if (r3 < r5) goto L_0x0031;
    L_0x002c:
        r1 = r0.finishCurrentSegment();
        r3 = r4;
    L_0x0031:
        r5 = r2 + 1;
        r8 = r11.charAt(r2);
        if (r8 > r9) goto L_0x005d;
    L_0x0039:
        r1 = r6[r8];
        r3 = r10._appendByte(r8, r1, r0, r3);
        r1 = r0.getCurrentSegment();
        r2 = r5;
        goto L_0x0019;
    L_0x0045:
        r5 = r1.length;
        if (r3 < r5) goto L_0x00ff;
    L_0x0048:
        r1 = r0.finishCurrentSegment();
        r5 = r4;
    L_0x004d:
        r3 = r5 + 1;
        r8 = (byte) r8;
        r1[r5] = r8;
        r2 = r2 + 1;
        if (r2 < r7) goto L_0x001f;
    L_0x0056:
        r0 = r10._bytes;
        r0 = r0.completeAndCoalesce(r3);
        return r0;
    L_0x005d:
        r2 = 2047; // 0x7ff float:2.868E-42 double:1.0114E-320;
        if (r8 > r2) goto L_0x007d;
    L_0x0061:
        r2 = r8 >> 6;
        r2 = r2 | 192;
        r2 = (byte) r2;
        r1[r3] = r2;
        r2 = r8 & 63;
        r2 = r2 | 128;
        r3 = r3 + 1;
    L_0x006e:
        r6 = r1.length;
        if (r3 < r6) goto L_0x0076;
    L_0x0071:
        r1 = r0.finishCurrentSegment();
        r3 = r4;
    L_0x0076:
        r2 = (byte) r2;
        r1[r3] = r2;
        r3 = r3 + 1;
        r2 = r5;
        goto L_0x0019;
    L_0x007d:
        r2 = 55296; // 0xd800 float:7.7486E-41 double:2.732E-319;
        if (r8 < r2) goto L_0x0087;
    L_0x0082:
        r2 = 57343; // 0xdfff float:8.0355E-41 double:2.8331E-319;
        if (r8 <= r2) goto L_0x00a8;
    L_0x0087:
        r2 = r3 + 1;
        r6 = r8 >> 12;
        r6 = r6 | 224;
        r6 = (byte) r6;
        r1[r3] = r6;
        r3 = r1.length;
        if (r2 < r3) goto L_0x00fd;
    L_0x0093:
        r1 = r0.finishCurrentSegment();
        r3 = r4;
    L_0x0098:
        r2 = r8 >> 6;
        r2 = r2 & 63;
        r2 = r2 | 128;
        r2 = (byte) r2;
        r1[r3] = r2;
        r2 = r8 & 63;
        r2 = r2 | 128;
        r3 = r3 + 1;
        goto L_0x006e;
    L_0x00a8:
        r2 = 56319; // 0xdbff float:7.892E-41 double:2.78253E-319;
        if (r8 <= r2) goto L_0x00b0;
    L_0x00ad:
        _illegal(r8);
    L_0x00b0:
        if (r5 < r7) goto L_0x00b5;
    L_0x00b2:
        _illegal(r8);
    L_0x00b5:
        r6 = r5 + 1;
        r2 = r11.charAt(r5);
        r5 = _convert(r8, r2);
        r2 = 1114111; // 0x10ffff float:1.561202E-39 double:5.50444E-318;
        if (r5 <= r2) goto L_0x00c7;
    L_0x00c4:
        _illegal(r5);
    L_0x00c7:
        r2 = r3 + 1;
        r8 = r5 >> 18;
        r8 = r8 | 240;
        r8 = (byte) r8;
        r1[r3] = r8;
        r3 = r1.length;
        if (r2 < r3) goto L_0x00d8;
    L_0x00d3:
        r1 = r0.finishCurrentSegment();
        r2 = r4;
    L_0x00d8:
        r3 = r2 + 1;
        r8 = r5 >> 12;
        r8 = r8 & 63;
        r8 = r8 | 128;
        r8 = (byte) r8;
        r1[r2] = r8;
        r2 = r1.length;
        if (r3 < r2) goto L_0x00eb;
    L_0x00e6:
        r1 = r0.finishCurrentSegment();
        r3 = r4;
    L_0x00eb:
        r2 = r5 >> 6;
        r2 = r2 & 63;
        r2 = r2 | 128;
        r2 = (byte) r2;
        r1[r3] = r2;
        r2 = r5 & 63;
        r2 = r2 | 128;
        r3 = r3 + 1;
        r5 = r6;
        goto L_0x006e;
    L_0x00fd:
        r3 = r2;
        goto L_0x0098;
    L_0x00ff:
        r5 = r3;
        goto L_0x004d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.JsonStringEncoder.quoteAsUTF8(java.lang.String):byte[]");
    }
}
