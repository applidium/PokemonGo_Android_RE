package com.fasterxml.jackson.core.json;

import android.support.v4.media.TransportMediator;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.base.GeneratorBase;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.math.BigInteger;
import spacemadness.com.lunarconsole.C1401R;

public class UTF8JsonGenerator extends JsonGeneratorImpl {
    private static final byte BYTE_0 = (byte) 48;
    private static final byte BYTE_BACKSLASH = (byte) 92;
    private static final byte BYTE_COLON = (byte) 58;
    private static final byte BYTE_COMMA = (byte) 44;
    private static final byte BYTE_LBRACKET = (byte) 91;
    private static final byte BYTE_LCURLY = (byte) 123;
    private static final byte BYTE_QUOTE = (byte) 34;
    private static final byte BYTE_RBRACKET = (byte) 93;
    private static final byte BYTE_RCURLY = (byte) 125;
    private static final byte BYTE_u = (byte) 117;
    private static final byte[] FALSE_BYTES;
    static final byte[] HEX_CHARS;
    private static final int MAX_BYTES_TO_BUFFER = 512;
    private static final byte[] NULL_BYTES;
    private static final byte[] TRUE_BYTES;
    protected boolean _bufferRecyclable;
    protected boolean _cfgUnqNames;
    protected char[] _charBuffer;
    protected final int _charBufferLength;
    protected byte[] _entityBuffer;
    protected byte[] _outputBuffer;
    protected final int _outputEnd;
    protected final int _outputMaxContiguous;
    protected final OutputStream _outputStream;
    protected int _outputTail;

    static {
        HEX_CHARS = CharTypes.copyHexBytes();
        NULL_BYTES = new byte[]{(byte) 110, BYTE_u, (byte) 108, (byte) 108};
        TRUE_BYTES = new byte[]{(byte) 116, (byte) 114, BYTE_u, (byte) 101};
        FALSE_BYTES = new byte[]{(byte) 102, (byte) 97, (byte) 108, (byte) 115, (byte) 101};
    }

    public UTF8JsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, OutputStream outputStream) {
        boolean z = false;
        super(iOContext, i, objectCodec);
        this._outputTail = 0;
        this._outputStream = outputStream;
        this._bufferRecyclable = true;
        this._outputBuffer = iOContext.allocWriteEncodingBuffer();
        this._outputEnd = this._outputBuffer.length;
        this._outputMaxContiguous = this._outputEnd >> 3;
        this._charBuffer = iOContext.allocConcatBuffer();
        this._charBufferLength = this._charBuffer.length;
        if (isEnabled(Feature.ESCAPE_NON_ASCII)) {
            setHighestNonEscapedChar(TransportMediator.KEYCODE_MEDIA_PAUSE);
        }
        if (!Feature.QUOTE_FIELD_NAMES.enabledIn(i)) {
            z = true;
        }
        this._cfgUnqNames = z;
    }

    public UTF8JsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, OutputStream outputStream, byte[] bArr, int i2, boolean z) {
        boolean z2 = false;
        super(iOContext, i, objectCodec);
        this._outputTail = 0;
        this._outputStream = outputStream;
        this._bufferRecyclable = z;
        this._outputTail = i2;
        this._outputBuffer = bArr;
        this._outputEnd = this._outputBuffer.length;
        this._outputMaxContiguous = this._outputEnd >> 3;
        this._charBuffer = iOContext.allocConcatBuffer();
        this._charBufferLength = this._charBuffer.length;
        if (!Feature.QUOTE_FIELD_NAMES.enabledIn(i)) {
            z2 = true;
        }
        this._cfgUnqNames = z2;
    }

    private final int _handleLongCustomEscape(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IOException, JsonGenerationException {
        int i4;
        int length = bArr2.length;
        if (i + length > i2) {
            this._outputTail = i;
            _flushBuffer();
            i4 = this._outputTail;
            if (length > bArr.length) {
                this._outputStream.write(bArr2, 0, length);
                return i4;
            }
            System.arraycopy(bArr2, 0, bArr, i4, length);
            i4 += length;
        } else {
            i4 = i;
        }
        if ((i3 * 6) + i4 <= i2) {
            return i4;
        }
        _flushBuffer();
        return this._outputTail;
    }

    private final int _outputMultiByteChar(int i, int i2) throws IOException {
        byte[] bArr = this._outputBuffer;
        if (i < GeneratorBase.SURR1_FIRST || i > GeneratorBase.SURR2_LAST) {
            int i3 = i2 + 1;
            bArr[i2] = (byte) ((i >> 12) | 224);
            int i4 = i3 + 1;
            bArr[i3] = (byte) (((i >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            bArr[i4] = (byte) ((i & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            return i4 + 1;
        }
        i3 = i2 + 1;
        bArr[i2] = BYTE_BACKSLASH;
        i4 = i3 + 1;
        bArr[i3] = BYTE_u;
        i3 = i4 + 1;
        bArr[i4] = HEX_CHARS[(i >> 12) & 15];
        i4 = i3 + 1;
        bArr[i3] = HEX_CHARS[(i >> 8) & 15];
        int i5 = i4 + 1;
        bArr[i4] = HEX_CHARS[(i >> 4) & 15];
        i3 = i5 + 1;
        bArr[i5] = HEX_CHARS[i & 15];
        return i3;
    }

    private final int _outputRawMultiByteChar(int i, char[] cArr, int i2, int i3) throws IOException {
        if (i < GeneratorBase.SURR1_FIRST || i > GeneratorBase.SURR2_LAST) {
            byte[] bArr = this._outputBuffer;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            bArr[i4] = (byte) ((i >> 12) | 224);
            i4 = this._outputTail;
            this._outputTail = i4 + 1;
            bArr[i4] = (byte) (((i >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            i4 = this._outputTail;
            this._outputTail = i4 + 1;
            bArr[i4] = (byte) ((i & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            return i2;
        }
        if (i2 >= i3 || cArr == null) {
            _reportError("Split surrogate on writeRaw() input (last character)");
        }
        _outputSurrogates(i, cArr[i2]);
        return i2 + 1;
    }

    private final int _readMore(InputStream inputStream, byte[] bArr, int i, int i2, int i3) throws IOException {
        int i4 = 0;
        while (i < i2) {
            bArr[i4] = bArr[i];
            i4++;
            i++;
        }
        int min = Math.min(i3, bArr.length);
        do {
            int i5 = min - i4;
            if (i5 != 0) {
                i5 = inputStream.read(bArr, i4, i5);
                if (i5 < 0) {
                    break;
                }
                i4 += i5;
            } else {
                break;
            }
        } while (i4 < 3);
        return i4;
    }

    private final void _writeBytes(byte[] bArr) throws IOException {
        int length = bArr.length;
        if (this._outputTail + length > this._outputEnd) {
            _flushBuffer();
            if (length > MAX_BYTES_TO_BUFFER) {
                this._outputStream.write(bArr, 0, length);
                return;
            }
        }
        System.arraycopy(bArr, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail = length + this._outputTail;
    }

    private final void _writeBytes(byte[] bArr, int i, int i2) throws IOException {
        if (this._outputTail + i2 > this._outputEnd) {
            _flushBuffer();
            if (i2 > MAX_BYTES_TO_BUFFER) {
                this._outputStream.write(bArr, i, i2);
                return;
            }
        }
        System.arraycopy(bArr, i, this._outputBuffer, this._outputTail, i2);
        this._outputTail += i2;
    }

    private final int _writeCustomEscape(byte[] bArr, int i, SerializableString serializableString, int i2) throws IOException, JsonGenerationException {
        Object asUnquotedUTF8 = serializableString.asUnquotedUTF8();
        int length = asUnquotedUTF8.length;
        if (length > 6) {
            return _handleLongCustomEscape(bArr, i, this._outputEnd, asUnquotedUTF8, i2);
        }
        System.arraycopy(asUnquotedUTF8, 0, bArr, i, length);
        return length + i;
    }

    private final void _writeCustomStringSegment2(String str, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        char c = this._maximumNonEscapedChar <= 0 ? '\uffff' : this._maximumNonEscapedChar;
        CharacterEscapes characterEscapes = this._characterEscapes;
        while (i < i2) {
            int i4 = i + 1;
            char charAt = str.charAt(i);
            int i5;
            SerializableString escapeSequence;
            if (charAt <= '\u007f') {
                if (iArr[charAt] == 0) {
                    bArr[i3] = (byte) charAt;
                    i3++;
                    i = i4;
                } else {
                    i5 = iArr[charAt];
                    if (i5 > 0) {
                        int i6 = i3 + 1;
                        bArr[i3] = BYTE_BACKSLASH;
                        i3 = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else if (i5 == -2) {
                        escapeSequence = characterEscapes.getEscapeSequence(charAt);
                        if (escapeSequence == null) {
                            _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(charAt) + ", although was supposed to have one");
                        }
                        i3 = _writeCustomEscape(bArr, i3, escapeSequence, i2 - i4);
                        i = i4;
                    } else {
                        i3 = _writeGenericEscape(charAt, i3);
                        i = i4;
                    }
                }
            } else if (charAt > c) {
                i3 = _writeGenericEscape(charAt, i3);
                i = i4;
            } else {
                escapeSequence = characterEscapes.getEscapeSequence(charAt);
                if (escapeSequence != null) {
                    i3 = _writeCustomEscape(bArr, i3, escapeSequence, i2 - i4);
                    i = i4;
                } else {
                    if (charAt <= '\u07ff') {
                        i5 = i3 + 1;
                        bArr[i3] = (byte) ((charAt >> 6) | 192);
                        bArr[i5] = (byte) ((charAt & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                        i3 = i5 + 1;
                    } else {
                        i3 = _outputMultiByteChar(charAt, i3);
                    }
                    i = i4;
                }
            }
        }
        this._outputTail = i3;
    }

    private final void _writeCustomStringSegment2(char[] cArr, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        char c = this._maximumNonEscapedChar <= 0 ? '\uffff' : this._maximumNonEscapedChar;
        CharacterEscapes characterEscapes = this._characterEscapes;
        while (i < i2) {
            int i4 = i + 1;
            char c2 = cArr[i];
            int i5;
            SerializableString escapeSequence;
            if (c2 <= '\u007f') {
                if (iArr[c2] == 0) {
                    bArr[i3] = (byte) c2;
                    i3++;
                    i = i4;
                } else {
                    i5 = iArr[c2];
                    if (i5 > 0) {
                        int i6 = i3 + 1;
                        bArr[i3] = BYTE_BACKSLASH;
                        i3 = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else if (i5 == -2) {
                        escapeSequence = characterEscapes.getEscapeSequence(c2);
                        if (escapeSequence == null) {
                            _reportError("Invalid custom escape definitions; custom escape not found for character code 0x" + Integer.toHexString(c2) + ", although was supposed to have one");
                        }
                        i3 = _writeCustomEscape(bArr, i3, escapeSequence, i2 - i4);
                        i = i4;
                    } else {
                        i3 = _writeGenericEscape(c2, i3);
                        i = i4;
                    }
                }
            } else if (c2 > c) {
                i3 = _writeGenericEscape(c2, i3);
                i = i4;
            } else {
                escapeSequence = characterEscapes.getEscapeSequence(c2);
                if (escapeSequence != null) {
                    i3 = _writeCustomEscape(bArr, i3, escapeSequence, i2 - i4);
                    i = i4;
                } else {
                    if (c2 <= '\u07ff') {
                        i5 = i3 + 1;
                        bArr[i3] = (byte) ((c2 >> 6) | 192);
                        bArr[i5] = (byte) ((c2 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                        i3 = i5 + 1;
                    } else {
                        i3 = _outputMultiByteChar(c2, i3);
                    }
                    i = i4;
                }
            }
        }
        this._outputTail = i3;
    }

    private int _writeGenericEscape(int i, int i2) throws IOException {
        byte[] bArr = this._outputBuffer;
        int i3 = i2 + 1;
        bArr[i2] = BYTE_BACKSLASH;
        int i4 = i3 + 1;
        bArr[i3] = BYTE_u;
        int i5;
        if (i > MotionEventCompat.ACTION_MASK) {
            i5 = (i >> 8) & MotionEventCompat.ACTION_MASK;
            int i6 = i4 + 1;
            bArr[i4] = HEX_CHARS[i5 >> 4];
            i3 = i6 + 1;
            bArr[i6] = HEX_CHARS[i5 & 15];
            i &= MotionEventCompat.ACTION_MASK;
        } else {
            i5 = i4 + 1;
            bArr[i4] = BYTE_0;
            i3 = i5 + 1;
            bArr[i5] = BYTE_0;
        }
        i4 = i3 + 1;
        bArr[i3] = HEX_CHARS[i >> 4];
        bArr[i4] = HEX_CHARS[i & 15];
        return i4 + 1;
    }

    private final void _writeNull() throws IOException {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        System.arraycopy(NULL_BYTES, 0, this._outputBuffer, this._outputTail, 4);
        this._outputTail += 4;
    }

    private final void _writeQuotedInt(int i) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = BYTE_QUOTE;
        this._outputTail = NumberOutput.outputInt(i, this._outputBuffer, this._outputTail);
        bArr = this._outputBuffer;
        i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = BYTE_QUOTE;
    }

    private final void _writeQuotedLong(long j) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
        this._outputTail = NumberOutput.outputLong(j, this._outputBuffer, this._outputTail);
        bArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
    }

    private final void _writeQuotedRaw(String str) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
        writeRaw(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        bArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
    }

    private final void _writeQuotedShort(short s) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
        this._outputTail = NumberOutput.outputInt((int) s, this._outputBuffer, this._outputTail);
        bArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
    }

    private final void _writeSegmentedRaw(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = this._outputEnd;
        byte[] bArr = this._outputBuffer;
        int i4 = i;
        while (i4 < i2) {
            while (true) {
                char c = cArr[i4];
                if (c >= '\u0080') {
                    break;
                }
                if (this._outputTail >= i3) {
                    _flushBuffer();
                }
                int i5 = this._outputTail;
                this._outputTail = i5 + 1;
                bArr[i5] = (byte) c;
                i4++;
                if (i4 >= i2) {
                    return;
                }
            }
            if (this._outputTail + 3 >= this._outputEnd) {
                _flushBuffer();
            }
            i = i4 + 1;
            char c2 = cArr[i4];
            if (c2 < '\u0800') {
                int i6 = this._outputTail;
                this._outputTail = i6 + 1;
                bArr[i6] = (byte) ((c2 >> 6) | 192);
                i6 = this._outputTail;
                this._outputTail = i6 + 1;
                bArr[i6] = (byte) ((c2 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                i4 = i;
            } else {
                i4 = _outputRawMultiByteChar(c2, cArr, i, i2);
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void _writeStringSegment(java.lang.String r7, int r8, int r9) throws java.io.IOException {
        /*
        r6 = this;
        r1 = r9 + r8;
        r0 = r6._outputTail;
        r2 = r6._outputBuffer;
        r3 = r6._outputEscapes;
    L_0x0008:
        if (r8 >= r1) goto L_0x0016;
    L_0x000a:
        r4 = r7.charAt(r8);
        r5 = 127; // 0x7f float:1.78E-43 double:6.27E-322;
        if (r4 > r5) goto L_0x0016;
    L_0x0012:
        r5 = r3[r4];
        if (r5 == 0) goto L_0x0022;
    L_0x0016:
        r6._outputTail = r0;
        if (r8 >= r1) goto L_0x0021;
    L_0x001a:
        r0 = r6._characterEscapes;
        if (r0 == 0) goto L_0x002a;
    L_0x001e:
        r6._writeCustomStringSegment2(r7, r8, r1);
    L_0x0021:
        return;
    L_0x0022:
        r4 = (byte) r4;
        r2[r0] = r4;
        r8 = r8 + 1;
        r0 = r0 + 1;
        goto L_0x0008;
    L_0x002a:
        r0 = r6._maximumNonEscapedChar;
        if (r0 != 0) goto L_0x0032;
    L_0x002e:
        r6._writeStringSegment2(r7, r8, r1);
        goto L_0x0021;
    L_0x0032:
        r6._writeStringSegmentASCII2(r7, r8, r1);
        goto L_0x0021;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8JsonGenerator._writeStringSegment(java.lang.String, int, int):void");
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void _writeStringSegment(char[] r7, int r8, int r9) throws java.io.IOException {
        /*
        r6 = this;
        r1 = r9 + r8;
        r0 = r6._outputTail;
        r2 = r6._outputBuffer;
        r3 = r6._outputEscapes;
    L_0x0008:
        if (r8 >= r1) goto L_0x0014;
    L_0x000a:
        r4 = r7[r8];
        r5 = 127; // 0x7f float:1.78E-43 double:6.27E-322;
        if (r4 > r5) goto L_0x0014;
    L_0x0010:
        r5 = r3[r4];
        if (r5 == 0) goto L_0x0020;
    L_0x0014:
        r6._outputTail = r0;
        if (r8 >= r1) goto L_0x001f;
    L_0x0018:
        r0 = r6._characterEscapes;
        if (r0 == 0) goto L_0x0028;
    L_0x001c:
        r6._writeCustomStringSegment2(r7, r8, r1);
    L_0x001f:
        return;
    L_0x0020:
        r4 = (byte) r4;
        r2[r0] = r4;
        r8 = r8 + 1;
        r0 = r0 + 1;
        goto L_0x0008;
    L_0x0028:
        r0 = r6._maximumNonEscapedChar;
        if (r0 != 0) goto L_0x0030;
    L_0x002c:
        r6._writeStringSegment2(r7, r8, r1);
        goto L_0x001f;
    L_0x0030:
        r6._writeStringSegmentASCII2(r7, r8, r1);
        goto L_0x001f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.UTF8JsonGenerator._writeStringSegment(char[], int, int):void");
    }

    private final void _writeStringSegment2(String str, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i < i2) {
            int i4 = i + 1;
            char charAt = str.charAt(i);
            int i5;
            if (charAt > '\u007f') {
                if (charAt <= '\u07ff') {
                    i5 = i3 + 1;
                    bArr[i3] = (byte) ((charAt >> 6) | 192);
                    bArr[i5] = (byte) ((charAt & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    i3 = i5 + 1;
                } else {
                    i3 = _outputMultiByteChar(charAt, i3);
                }
                i = i4;
            } else if (iArr[charAt] == 0) {
                bArr[i3] = (byte) charAt;
                i3++;
                i = i4;
            } else {
                i5 = iArr[charAt];
                if (i5 > 0) {
                    int i6 = i3 + 1;
                    bArr[i3] = BYTE_BACKSLASH;
                    i3 = i6 + 1;
                    bArr[i6] = (byte) i5;
                    i = i4;
                } else {
                    i3 = _writeGenericEscape(charAt, i3);
                    i = i4;
                }
            }
        }
        this._outputTail = i3;
    }

    private final void _writeStringSegment2(char[] cArr, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        while (i < i2) {
            int i4 = i + 1;
            char c = cArr[i];
            int i5;
            if (c > '\u007f') {
                if (c <= '\u07ff') {
                    i5 = i3 + 1;
                    bArr[i3] = (byte) ((c >> 6) | 192);
                    bArr[i5] = (byte) ((c & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    i3 = i5 + 1;
                } else {
                    i3 = _outputMultiByteChar(c, i3);
                }
                i = i4;
            } else if (iArr[c] == 0) {
                bArr[i3] = (byte) c;
                i3++;
                i = i4;
            } else {
                i5 = iArr[c];
                if (i5 > 0) {
                    int i6 = i3 + 1;
                    bArr[i3] = BYTE_BACKSLASH;
                    i3 = i6 + 1;
                    bArr[i6] = (byte) i5;
                    i = i4;
                } else {
                    i3 = _writeGenericEscape(c, i3);
                    i = i4;
                }
            }
        }
        this._outputTail = i3;
    }

    private final void _writeStringSegmentASCII2(String str, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        char c = this._maximumNonEscapedChar;
        while (i < i2) {
            int i4 = i + 1;
            char charAt = str.charAt(i);
            int i5;
            if (charAt <= '\u007f') {
                if (iArr[charAt] == 0) {
                    bArr[i3] = (byte) charAt;
                    i3++;
                    i = i4;
                } else {
                    i5 = iArr[charAt];
                    if (i5 > 0) {
                        int i6 = i3 + 1;
                        bArr[i3] = BYTE_BACKSLASH;
                        i3 = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else {
                        i3 = _writeGenericEscape(charAt, i3);
                        i = i4;
                    }
                }
            } else if (charAt > c) {
                i3 = _writeGenericEscape(charAt, i3);
                i = i4;
            } else {
                if (charAt <= '\u07ff') {
                    i5 = i3 + 1;
                    bArr[i3] = (byte) ((charAt >> 6) | 192);
                    bArr[i5] = (byte) ((charAt & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    i3 = i5 + 1;
                } else {
                    i3 = _outputMultiByteChar(charAt, i3);
                }
                i = i4;
            }
        }
        this._outputTail = i3;
    }

    private final void _writeStringSegmentASCII2(char[] cArr, int i, int i2) throws IOException {
        if (this._outputTail + ((i2 - i) * 6) > this._outputEnd) {
            _flushBuffer();
        }
        int i3 = this._outputTail;
        byte[] bArr = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        char c = this._maximumNonEscapedChar;
        while (i < i2) {
            int i4 = i + 1;
            char c2 = cArr[i];
            int i5;
            if (c2 <= '\u007f') {
                if (iArr[c2] == 0) {
                    bArr[i3] = (byte) c2;
                    i3++;
                    i = i4;
                } else {
                    i5 = iArr[c2];
                    if (i5 > 0) {
                        int i6 = i3 + 1;
                        bArr[i3] = BYTE_BACKSLASH;
                        i3 = i6 + 1;
                        bArr[i6] = (byte) i5;
                        i = i4;
                    } else {
                        i3 = _writeGenericEscape(c2, i3);
                        i = i4;
                    }
                }
            } else if (c2 > c) {
                i3 = _writeGenericEscape(c2, i3);
                i = i4;
            } else {
                if (c2 <= '\u07ff') {
                    i5 = i3 + 1;
                    bArr[i3] = (byte) ((c2 >> 6) | 192);
                    bArr[i5] = (byte) ((c2 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    i3 = i5 + 1;
                } else {
                    i3 = _outputMultiByteChar(c2, i3);
                }
                i = i4;
            }
        }
        this._outputTail = i3;
    }

    private final void _writeStringSegments(String str, int i, int i2) throws IOException {
        do {
            int min = Math.min(this._outputMaxContiguous, i2);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, i, min);
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }

    private final void _writeStringSegments(String str, boolean z) throws IOException {
        int i;
        if (z) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = BYTE_QUOTE;
        }
        int length = str.length();
        i = 0;
        while (length > 0) {
            int min = Math.min(this._outputMaxContiguous, length);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, i, min);
            i += min;
            length -= min;
        }
        if (z) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            bArr = this._outputBuffer;
            i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = BYTE_QUOTE;
        }
    }

    private final void _writeStringSegments(char[] cArr, int i, int i2) throws IOException {
        do {
            int min = Math.min(this._outputMaxContiguous, i2);
            if (this._outputTail + min > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, i, min);
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }

    private final void _writeUTF8Segment(byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        int[] iArr = this._outputEscapes;
        int i3 = i;
        while (i3 < i + i2) {
            byte b = bArr[i3];
            if (b < null || iArr[b] == 0) {
                i3++;
            } else {
                _writeUTF8Segment2(bArr, i, i2);
                return;
            }
        }
        if (this._outputTail + i2 > this._outputEnd) {
            _flushBuffer();
        }
        System.arraycopy(bArr, i, this._outputBuffer, this._outputTail, i2);
        this._outputTail += i2;
    }

    private final void _writeUTF8Segment2(byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = this._outputTail;
        if ((i2 * 6) + i3 > this._outputEnd) {
            _flushBuffer();
            i3 = this._outputTail;
        }
        byte[] bArr2 = this._outputBuffer;
        int[] iArr = this._outputEscapes;
        int i4 = i3;
        i3 = i;
        while (i3 < i2 + i) {
            int i5 = i3 + 1;
            byte b = bArr[i3];
            if (b < null || iArr[b] == 0) {
                bArr2[i4] = b;
                i4++;
                i3 = i5;
            } else {
                int i6 = iArr[b];
                if (i6 > 0) {
                    i3 = i4 + 1;
                    bArr2[i4] = BYTE_BACKSLASH;
                    bArr2[i3] = (byte) i6;
                    i3++;
                } else {
                    i3 = _writeGenericEscape(b, i4);
                }
                i4 = i3;
                i3 = i5;
            }
        }
        this._outputTail = i4;
    }

    private final void _writeUTF8Segments(byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        do {
            int min = Math.min(this._outputMaxContiguous, i2);
            _writeUTF8Segment(bArr, i, min);
            i += min;
            i2 -= min;
        } while (i2 > 0);
    }

    private final void _writeUnq(SerializableString serializableString) throws IOException {
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(this._outputBuffer, this._outputTail);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail = appendQuotedUTF8 + this._outputTail;
        }
    }

    protected final void _flushBuffer() throws IOException {
        int i = this._outputTail;
        if (i > 0) {
            this._outputTail = 0;
            this._outputStream.write(this._outputBuffer, 0, i);
        }
    }

    protected final void _outputSurrogates(int i, int i2) throws IOException {
        int _decodeSurrogate = _decodeSurrogate(i, i2);
        if (this._outputTail + 4 > this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr[i3] = (byte) ((_decodeSurrogate >> 18) | 240);
        i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr[i3] = (byte) (((_decodeSurrogate >> 12) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr[i3] = (byte) (((_decodeSurrogate >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr[i3] = (byte) ((_decodeSurrogate & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
    }

    protected void _releaseBuffers() {
        byte[] bArr = this._outputBuffer;
        if (bArr != null && this._bufferRecyclable) {
            this._outputBuffer = null;
            this._ioContext.releaseWriteEncodingBuffer(bArr);
        }
        char[] cArr = this._charBuffer;
        if (cArr != null) {
            this._charBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
    }

    protected final void _verifyPrettyValueWrite(String str, int i) throws IOException {
        switch (i) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                if (this._writeContext.inArray()) {
                    this._cfgPrettyPrinter.beforeArrayValues(this);
                } else if (this._writeContext.inObject()) {
                    this._cfgPrettyPrinter.beforeObjectEntries(this);
                }
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                this._cfgPrettyPrinter.writeArrayValueSeparator(this);
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                this._cfgPrettyPrinter.writeObjectFieldValueSeparator(this);
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                this._cfgPrettyPrinter.writeRootValueSeparator(this);
            default:
                _throwInternal();
        }
    }

    protected final void _verifyValueWrite(String str) throws IOException {
        int writeValue = this._writeContext.writeValue();
        if (writeValue == 5) {
            _reportError("Can not " + str + ", expecting field name");
        }
        if (this._cfgPrettyPrinter == null) {
            byte b;
            switch (writeValue) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    b = BYTE_COMMA;
                    break;
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    b = BYTE_COLON;
                    break;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    if (this._rootValueSeparator != null) {
                        byte[] asUnquotedUTF8 = this._rootValueSeparator.asUnquotedUTF8();
                        if (asUnquotedUTF8.length > 0) {
                            _writeBytes(asUnquotedUTF8);
                            return;
                        }
                        return;
                    }
                    return;
                default:
                    return;
            }
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            this._outputBuffer[this._outputTail] = b;
            this._outputTail++;
            return;
        }
        _verifyPrettyValueWrite(str, writeValue);
    }

    protected final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException, JsonGenerationException {
        int i = -3;
        int i2 = this._outputEnd - 6;
        int i3 = 0;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            if (i4 > i) {
                i3 = _readMore(inputStream, bArr, i4, i3, bArr.length);
                if (i3 < 3) {
                    break;
                }
                i = i3 - 3;
                i4 = 0;
            }
            if (this._outputTail > i2) {
                _flushBuffer();
            }
            int i6 = i4 + 1;
            byte b = bArr[i4];
            i4 = i6 + 1;
            i5 += 3;
            this._outputTail = base64Variant.encodeBase64Chunk((((bArr[i6] & MotionEventCompat.ACTION_MASK) | (b << 8)) << 8) | (bArr[i4] & MotionEventCompat.ACTION_MASK), this._outputBuffer, this._outputTail);
            i6 = maxLineLength - 1;
            if (i6 <= 0) {
                byte[] bArr2 = this._outputBuffer;
                int i7 = this._outputTail;
                this._outputTail = i7 + 1;
                bArr2[i7] = BYTE_BACKSLASH;
                bArr2 = this._outputBuffer;
                i7 = this._outputTail;
                this._outputTail = i7 + 1;
                bArr2[i7] = (byte) 110;
                i6 = base64Variant.getMaxLineLength() >> 2;
            }
            i4++;
            maxLineLength = i6;
        }
        if (i3 >= 0) {
            return i5;
        }
        if (this._outputTail > i2) {
            _flushBuffer();
        }
        i = bArr[0] << 16;
        if (1 < i3) {
            i6 = ((bArr[1] & MotionEventCompat.ACTION_MASK) << 8) | i;
            i = 2;
        } else {
            i6 = i;
            i = 1;
        }
        i7 = i5 + i;
        this._outputTail = base64Variant.encodeBase64Partial(i6, i, this._outputBuffer, this._outputTail);
        return i7;
    }

    protected final int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i) throws IOException, JsonGenerationException {
        int i2 = 0;
        int i3 = 0;
        int i4 = -3;
        int i5 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        int i6 = i;
        while (i6 > 2) {
            if (i2 > i4) {
                i3 = _readMore(inputStream, bArr, i2, i3, i6);
                i2 = 0;
                if (i3 < 3) {
                    i2 = 0;
                    break;
                }
                i4 = i3 - 3;
            }
            if (this._outputTail > i5) {
                _flushBuffer();
            }
            int i7 = i2 + 1;
            byte b = bArr[i2];
            i2 = i7 + 1;
            i6 -= 3;
            this._outputTail = base64Variant.encodeBase64Chunk((((bArr[i7] & MotionEventCompat.ACTION_MASK) | (b << 8)) << 8) | (bArr[i2] & MotionEventCompat.ACTION_MASK), this._outputBuffer, this._outputTail);
            i7 = maxLineLength - 1;
            if (i7 <= 0) {
                byte[] bArr2 = this._outputBuffer;
                int i8 = this._outputTail;
                this._outputTail = i8 + 1;
                bArr2[i8] = BYTE_BACKSLASH;
                bArr2 = this._outputBuffer;
                i8 = this._outputTail;
                this._outputTail = i8 + 1;
                bArr2[i8] = (byte) 110;
                i7 = base64Variant.getMaxLineLength() >> 2;
            }
            i2++;
            maxLineLength = i7;
        }
        if (i6 <= 0) {
            return i6;
        }
        i4 = _readMore(inputStream, bArr, i2, i3, i6);
        if (i4 <= 0) {
            return i6;
        }
        if (this._outputTail > i5) {
            _flushBuffer();
        }
        i7 = bArr[0] << 16;
        if (1 < i4) {
            i7 |= (bArr[1] & MotionEventCompat.ACTION_MASK) << 8;
            i4 = 2;
        } else {
            i4 = 1;
        }
        this._outputTail = base64Variant.encodeBase64Partial(i7, i4, this._outputBuffer, this._outputTail);
        return i6 - i4;
    }

    protected final void _writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3;
        int i4 = this._outputEnd - 6;
        int maxLineLength = base64Variant.getMaxLineLength() >> 2;
        while (i <= i2 - 3) {
            if (this._outputTail > i4) {
                _flushBuffer();
            }
            i3 = i + 1;
            int i5 = i3 + 1;
            this._outputTail = base64Variant.encodeBase64Chunk((((bArr[i3] & MotionEventCompat.ACTION_MASK) | (bArr[i] << 8)) << 8) | (bArr[i5] & MotionEventCompat.ACTION_MASK), this._outputBuffer, this._outputTail);
            maxLineLength--;
            if (maxLineLength <= 0) {
                byte[] bArr2 = this._outputBuffer;
                i3 = this._outputTail;
                this._outputTail = i3 + 1;
                bArr2[i3] = BYTE_BACKSLASH;
                bArr2 = this._outputBuffer;
                i3 = this._outputTail;
                this._outputTail = i3 + 1;
                bArr2[i3] = (byte) 110;
                maxLineLength = base64Variant.getMaxLineLength() >> 2;
            }
            i = i5 + 1;
        }
        i3 = i2 - i;
        if (i3 > 0) {
            if (this._outputTail > i4) {
                _flushBuffer();
            }
            i4 = i + 1;
            maxLineLength = bArr[i] << 16;
            if (i3 == 2) {
                maxLineLength |= (bArr[i4] & MotionEventCompat.ACTION_MASK) << 8;
            }
            this._outputTail = base64Variant.encodeBase64Partial(maxLineLength, i3, this._outputBuffer, this._outputTail);
        }
    }

    protected final void _writePPFieldName(SerializableString serializableString) throws IOException {
        Object obj = 1;
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this._cfgUnqNames) {
            obj = null;
        }
        if (obj != null) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = BYTE_QUOTE;
        }
        _writeBytes(serializableString.asQuotedUTF8());
        if (obj != null) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr2 = this._outputBuffer;
            writeFieldName = this._outputTail;
            this._outputTail = writeFieldName + 1;
            bArr2[writeFieldName] = BYTE_QUOTE;
        }
    }

    protected final void _writePPFieldName(String str) throws IOException {
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (this._cfgUnqNames) {
            _writeStringSegments(str, false);
            return;
        }
        writeFieldName = str.length();
        if (writeFieldName > this._charBufferLength) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
        str.getChars(0, writeFieldName, this._charBuffer, 0);
        if (writeFieldName <= this._outputMaxContiguous) {
            if (this._outputTail + writeFieldName > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(this._charBuffer, 0, writeFieldName);
        } else {
            _writeStringSegments(this._charBuffer, 0, writeFieldName);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr2[i2] = BYTE_QUOTE;
    }

    public void close() throws IOException {
        super.close();
        if (this._outputBuffer != null && isEnabled(Feature.AUTO_CLOSE_JSON_CONTENT)) {
            while (true) {
                JsonStreamContext outputContext = getOutputContext();
                if (!outputContext.inArray()) {
                    if (!outputContext.inObject()) {
                        break;
                    }
                    writeEndObject();
                } else {
                    writeEndArray();
                }
            }
        }
        _flushBuffer();
        this._outputTail = 0;
        if (this._outputStream != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(Feature.AUTO_CLOSE_TARGET)) {
                this._outputStream.close();
            } else if (isEnabled(Feature.FLUSH_PASSED_TO_STREAM)) {
                this._outputStream.flush();
            }
        }
        _releaseBuffers();
    }

    public void flush() throws IOException {
        _flushBuffer();
        if (this._outputStream != null && isEnabled(Feature.FLUSH_PASSED_TO_STREAM)) {
            this._outputStream.flush();
        }
    }

    public int getOutputBuffered() {
        return this._outputTail;
    }

    public Object getOutputTarget() {
        return this._outputStream;
    }

    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = BYTE_QUOTE;
        byte[] allocBase64Buffer = this._ioContext.allocBase64Buffer();
        if (i < 0) {
            try {
                i = _writeBinary(base64Variant, inputStream, allocBase64Buffer);
            } catch (Throwable th) {
                this._ioContext.releaseBase64Buffer(allocBase64Buffer);
            }
        } else {
            int _writeBinary = _writeBinary(base64Variant, inputStream, allocBase64Buffer, i);
            if (_writeBinary > 0) {
                _reportError("Too few bytes available: missing " + _writeBinary + " bytes (out of " + i + ")");
            }
        }
        this._ioContext.releaseBase64Buffer(allocBase64Buffer);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        bArr = this._outputBuffer;
        i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr[i2] = BYTE_QUOTE;
        return i;
    }

    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr2[i3] = BYTE_QUOTE;
        _writeBinary(base64Variant, bArr, i, i + i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        bArr2 = this._outputBuffer;
        i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr2[i3] = BYTE_QUOTE;
    }

    public void writeBoolean(boolean z) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        Object obj = z ? TRUE_BYTES : FALSE_BYTES;
        int length = obj.length;
        System.arraycopy(obj, 0, this._outputBuffer, this._outputTail, length);
        this._outputTail += length;
    }

    public final void writeEndArray() throws IOException {
        if (!this._writeContext.inArray()) {
            _reportError("Current context not an ARRAY but " + this._writeContext.getTypeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = BYTE_RBRACKET;
        }
        this._writeContext = this._writeContext.getParent();
    }

    public final void writeEndObject() throws IOException {
        if (!this._writeContext.inObject()) {
            _reportError("Current context not an object but " + this._writeContext.getTypeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = BYTE_RCURLY;
        }
        this._writeContext = this._writeContext.getParent();
    }

    public void writeFieldName(SerializableString serializableString) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(serializableString);
            return;
        }
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = BYTE_COMMA;
        }
        if (this._cfgUnqNames) {
            _writeUnq(serializableString);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        bArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
        writeFieldName = serializableString.appendQuotedUTF8(this._outputBuffer, this._outputTail);
        if (writeFieldName < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail = writeFieldName + this._outputTail;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        bArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
    }

    public void writeFieldName(String str) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str);
            return;
        }
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName == 1) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            byte[] bArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = BYTE_COMMA;
        }
        if (this._cfgUnqNames) {
            _writeStringSegments(str, false);
            return;
        }
        writeFieldName = str.length();
        if (writeFieldName > this._charBufferLength) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr2[i2] = BYTE_QUOTE;
        if (writeFieldName <= this._outputMaxContiguous) {
            if (this._outputTail + writeFieldName > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(str, 0, writeFieldName);
        } else {
            _writeStringSegments(str, 0, writeFieldName);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        bArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
    }

    public void writeNull() throws IOException, JsonGenerationException {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    public void writeNumber(double d) throws IOException, JsonGenerationException {
        if (this._cfgNumbersAsStrings || ((Double.isNaN(d) || Double.isInfinite(d)) && isEnabled(Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            writeString(String.valueOf(d));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(d));
    }

    public void writeNumber(float f) throws IOException, JsonGenerationException {
        if (this._cfgNumbersAsStrings || ((Float.isNaN(f) || Float.isInfinite(f)) && isEnabled(Feature.QUOTE_NON_NUMERIC_NUMBERS))) {
            writeString(String.valueOf(f));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(f));
    }

    public void writeNumber(int i) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a number");
        if (this._outputTail + 11 >= this._outputEnd) {
            _flushBuffer();
        }
        if (this._cfgNumbersAsStrings) {
            _writeQuotedInt(i);
        } else {
            this._outputTail = NumberOutput.outputInt(i, this._outputBuffer, this._outputTail);
        }
    }

    public void writeNumber(long j) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedLong(j);
            return;
        }
        if (this._outputTail + 21 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputLong(j, this._outputBuffer, this._outputTail);
    }

    public void writeNumber(String str) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(str);
        } else {
            writeRaw(str);
        }
    }

    public void writeNumber(BigDecimal bigDecimal) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a number");
        if (bigDecimal == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(isEnabled(Feature.WRITE_BIGDECIMAL_AS_PLAIN) ? bigDecimal.toPlainString() : bigDecimal.toString());
        } else if (isEnabled(Feature.WRITE_BIGDECIMAL_AS_PLAIN)) {
            writeRaw(bigDecimal.toPlainString());
        } else {
            writeRaw(bigDecimal.toString());
        }
    }

    public void writeNumber(BigInteger bigInteger) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a number");
        if (bigInteger == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(bigInteger.toString());
        } else {
            writeRaw(bigInteger.toString());
        }
    }

    public void writeNumber(short s) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a number");
        if (this._outputTail + 6 >= this._outputEnd) {
            _flushBuffer();
        }
        if (this._cfgNumbersAsStrings) {
            _writeQuotedShort(s);
        } else {
            this._outputTail = NumberOutput.outputInt((int) s, this._outputBuffer, this._outputTail);
        }
    }

    public void writeRaw(char c) throws IOException, JsonGenerationException {
        if (this._outputTail + 3 >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i;
        if (c <= '\u007f') {
            i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = (byte) c;
        } else if (c < '\u0800') {
            i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = (byte) ((c >> 6) | 192);
            i = this._outputTail;
            this._outputTail = i + 1;
            bArr[i] = (byte) ((c & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        } else {
            _outputRawMultiByteChar(c, null, 0, 0);
        }
    }

    public void writeRaw(SerializableString serializableString) throws IOException, JsonGenerationException {
        byte[] asUnquotedUTF8 = serializableString.asUnquotedUTF8();
        if (asUnquotedUTF8.length > 0) {
            _writeBytes(asUnquotedUTF8);
        }
    }

    public void writeRaw(String str) throws IOException, JsonGenerationException {
        int length = str.length();
        int i = 0;
        while (length > 0) {
            char[] cArr = this._charBuffer;
            int length2 = cArr.length;
            if (length < length2) {
                length2 = length;
            }
            str.getChars(i, i + length2, cArr, 0);
            writeRaw(cArr, 0, length2);
            i += length2;
            length -= length2;
        }
    }

    public void writeRaw(String str, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = i2;
        while (i3 > 0) {
            char[] cArr = this._charBuffer;
            int length = cArr.length;
            if (i3 < length) {
                length = i3;
            }
            str.getChars(i, i + length, cArr, 0);
            writeRaw(cArr, 0, length);
            i += length;
            i3 -= length;
        }
    }

    public final void writeRaw(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = (i2 + i2) + i2;
        if (this._outputTail + i3 > this._outputEnd) {
            if (this._outputEnd < i3) {
                _writeSegmentedRaw(cArr, i, i2);
                return;
            }
            _flushBuffer();
        }
        int i4 = i2 + i;
        i3 = i;
        while (i3 < i4) {
            while (true) {
                char c = cArr[i3];
                if (c > '\u007f') {
                    break;
                }
                byte[] bArr = this._outputBuffer;
                int i5 = this._outputTail;
                this._outputTail = i5 + 1;
                bArr[i5] = (byte) c;
                i3++;
                if (i3 >= i4) {
                    return;
                }
            }
            i = i3 + 1;
            char c2 = cArr[i3];
            if (c2 < '\u0800') {
                byte[] bArr2 = this._outputBuffer;
                int i6 = this._outputTail;
                this._outputTail = i6 + 1;
                bArr2[i6] = (byte) ((c2 >> 6) | 192);
                bArr2 = this._outputBuffer;
                i6 = this._outputTail;
                this._outputTail = i6 + 1;
                bArr2[i6] = (byte) ((c2 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                i3 = i;
            } else {
                i3 = _outputRawMultiByteChar(c2, cArr, i, i4);
            }
        }
    }

    public void writeRawUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr2[i3] = BYTE_QUOTE;
        _writeBytes(bArr, i, i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        bArr2 = this._outputBuffer;
        i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr2[i3] = BYTE_QUOTE;
    }

    public void writeRawValue(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a raw (unencoded) value");
        byte[] asUnquotedUTF8 = serializableString.asUnquotedUTF8();
        if (asUnquotedUTF8.length > 0) {
            _writeBytes(asUnquotedUTF8);
        }
    }

    public final void writeStartArray() throws IOException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_LBRACKET;
    }

    public final void writeStartObject() throws IOException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_LCURLY;
    }

    public final void writeString(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
        int appendQuotedUTF8 = serializableString.appendQuotedUTF8(this._outputBuffer, this._outputTail);
        if (appendQuotedUTF8 < 0) {
            _writeBytes(serializableString.asQuotedUTF8());
        } else {
            this._outputTail = appendQuotedUTF8 + this._outputTail;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        bArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
    }

    public void writeString(String str) throws IOException {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        int length = str.length();
        if (length > this._outputMaxContiguous) {
            _writeStringSegments(str, true);
            return;
        }
        if (this._outputTail + length >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        bArr[i] = BYTE_QUOTE;
        _writeStringSegment(str, 0, length);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        bArr2[i2] = BYTE_QUOTE;
    }

    public void writeString(char[] cArr, int i, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr[i3] = BYTE_QUOTE;
        if (i2 <= this._outputMaxContiguous) {
            if (this._outputTail + i2 > this._outputEnd) {
                _flushBuffer();
            }
            _writeStringSegment(cArr, i, i2);
        } else {
            _writeStringSegments(cArr, i, i2);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        bArr = this._outputBuffer;
        i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr[i3] = BYTE_QUOTE;
    }

    public void writeUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        byte[] bArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr2[i3] = BYTE_QUOTE;
        if (i2 <= this._outputMaxContiguous) {
            _writeUTF8Segment(bArr, i, i2);
        } else {
            _writeUTF8Segments(bArr, i, i2);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        bArr2 = this._outputBuffer;
        i3 = this._outputTail;
        this._outputTail = i3 + 1;
        bArr2[i3] = BYTE_QUOTE;
    }
}
