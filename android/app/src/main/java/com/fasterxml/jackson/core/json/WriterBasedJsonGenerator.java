package com.fasterxml.jackson.core.json;

import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.MotionEventCompat;
import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator.Feature;
import com.fasterxml.jackson.core.JsonStreamContext;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.core.SerializableString;
import com.fasterxml.jackson.core.io.CharTypes;
import com.fasterxml.jackson.core.io.CharacterEscapes;
import com.fasterxml.jackson.core.io.IOContext;
import com.fasterxml.jackson.core.io.NumberOutput;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.commons.io.IOUtils;
import spacemadness.com.lunarconsole.C1401R;

public final class WriterBasedJsonGenerator extends JsonGeneratorImpl {
    protected static final char[] HEX_CHARS;
    protected static final int SHORT_WRITE = 32;
    protected SerializableString _currentEscape;
    protected char[] _entityBuffer;
    protected char[] _outputBuffer;
    protected int _outputEnd;
    protected int _outputHead;
    protected int _outputTail;
    protected final Writer _writer;

    static {
        HEX_CHARS = CharTypes.copyHexChars();
    }

    public WriterBasedJsonGenerator(IOContext iOContext, int i, ObjectCodec objectCodec, Writer writer) {
        super(iOContext, i, objectCodec);
        this._outputHead = 0;
        this._outputTail = 0;
        this._writer = writer;
        this._outputBuffer = iOContext.allocConcatBuffer();
        this._outputEnd = this._outputBuffer.length;
    }

    private char[] _allocateEntityBuffer() {
        char[] cArr = new char[14];
        cArr[0] = IOUtils.DIR_SEPARATOR_WINDOWS;
        cArr[2] = IOUtils.DIR_SEPARATOR_WINDOWS;
        cArr[3] = 'u';
        cArr[4] = '0';
        cArr[5] = '0';
        cArr[8] = IOUtils.DIR_SEPARATOR_WINDOWS;
        cArr[9] = 'u';
        this._entityBuffer = cArr;
        return cArr;
    }

    private void _appendCharacterEscape(char c, int i) throws IOException, JsonGenerationException {
        int i2;
        if (i >= 0) {
            if (this._outputTail + 2 > this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = IOUtils.DIR_SEPARATOR_WINDOWS;
            cArr = this._outputBuffer;
            i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr[i2] = (char) i;
        } else if (i != -2) {
            int i3;
            if (this._outputTail + 5 >= this._outputEnd) {
                _flushBuffer();
            }
            int i4 = this._outputTail;
            char[] cArr2 = this._outputBuffer;
            int i5 = i4 + 1;
            cArr2[i4] = IOUtils.DIR_SEPARATOR_WINDOWS;
            i4 = i5 + 1;
            cArr2[i5] = 'u';
            if (c > '\u00ff') {
                i5 = (c >> 8) & MotionEventCompat.ACTION_MASK;
                int i6 = i4 + 1;
                cArr2[i4] = HEX_CHARS[i5 >> 4];
                i4 = i6 + 1;
                cArr2[i6] = HEX_CHARS[i5 & 15];
                i3 = (char) (c & MotionEventCompat.ACTION_MASK);
            } else {
                i5 = i4 + 1;
                cArr2[i4] = '0';
                i4 = i5 + 1;
                cArr2[i5] = '0';
            }
            i5 = i4 + 1;
            cArr2[i4] = HEX_CHARS[i3 >> 4];
            cArr2[i5] = HEX_CHARS[i3 & 15];
            this._outputTail = i5 + 1;
        } else {
            String value;
            if (this._currentEscape == null) {
                value = this._characterEscapes.getEscapeSequence(c).getValue();
            } else {
                value = this._currentEscape.getValue();
                this._currentEscape = null;
            }
            i2 = value.length();
            if (this._outputTail + i2 > this._outputEnd) {
                _flushBuffer();
                if (i2 > this._outputEnd) {
                    this._writer.write(value);
                    return;
                }
            }
            value.getChars(0, i2, this._outputBuffer, this._outputTail);
            this._outputTail += i2;
        }
    }

    private int _prependOrWriteCharacterEscape(char[] cArr, int i, int i2, char c, int i3) throws IOException, JsonGenerationException {
        char[] cArr2;
        if (i3 >= 0) {
            if (i <= 1 || i >= i2) {
                cArr2 = this._entityBuffer;
                if (cArr2 == null) {
                    cArr2 = _allocateEntityBuffer();
                }
                cArr2[1] = (char) i3;
                this._writer.write(cArr2, 0, 2);
                return i;
            }
            i -= 2;
            cArr[i] = IOUtils.DIR_SEPARATOR_WINDOWS;
            cArr[i + 1] = (char) i3;
            return i;
        } else if (i3 == -2) {
            String value;
            if (this._currentEscape == null) {
                value = this._characterEscapes.getEscapeSequence(c).getValue();
            } else {
                value = this._currentEscape.getValue();
                this._currentEscape = null;
            }
            r1 = value.length();
            if (i < r1 || i >= i2) {
                this._writer.write(value);
                return i;
            }
            i -= r1;
            value.getChars(0, r1, cArr, i);
            return i;
        } else if (i <= 5 || i >= i2) {
            cArr2 = this._entityBuffer;
            if (cArr2 == null) {
                cArr2 = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c > '\u00ff') {
                r1 = (c >> 8) & MotionEventCompat.ACTION_MASK;
                r2 = c & MotionEventCompat.ACTION_MASK;
                cArr2[10] = HEX_CHARS[r1 >> 4];
                cArr2[11] = HEX_CHARS[r1 & 15];
                cArr2[12] = HEX_CHARS[r2 >> 4];
                cArr2[13] = HEX_CHARS[r2 & 15];
                this._writer.write(cArr2, 8, 6);
                return i;
            }
            cArr2[6] = HEX_CHARS[c >> 4];
            cArr2[7] = HEX_CHARS[c & 15];
            this._writer.write(cArr2, 2, 6);
            return i;
        } else {
            int i4;
            int i5 = i - 6;
            r1 = i5 + 1;
            cArr[i5] = IOUtils.DIR_SEPARATOR_WINDOWS;
            i5 = r1 + 1;
            cArr[r1] = 'u';
            if (c > '\u00ff') {
                r1 = (c >> 8) & MotionEventCompat.ACTION_MASK;
                r2 = i5 + 1;
                cArr[i5] = HEX_CHARS[r1 >> 4];
                i5 = r2 + 1;
                cArr[r2] = HEX_CHARS[r1 & 15];
                i4 = (char) (c & MotionEventCompat.ACTION_MASK);
            } else {
                r1 = i5 + 1;
                cArr[i5] = '0';
                i5 = r1 + 1;
                cArr[r1] = '0';
            }
            r1 = i5 + 1;
            cArr[i5] = HEX_CHARS[i4 >> 4];
            cArr[r1] = HEX_CHARS[i4 & 15];
            return r1 - 5;
        }
    }

    private void _prependOrWriteCharacterEscape(char c, int i) throws IOException, JsonGenerationException {
        int i2;
        char[] cArr;
        if (i >= 0) {
            if (this._outputTail >= 2) {
                i2 = this._outputTail - 2;
                this._outputHead = i2;
                this._outputBuffer[i2] = IOUtils.DIR_SEPARATOR_WINDOWS;
                this._outputBuffer[i2 + 1] = (char) i;
                return;
            }
            cArr = this._entityBuffer;
            if (cArr == null) {
                cArr = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            cArr[1] = (char) i;
            this._writer.write(cArr, 0, 2);
        } else if (i == -2) {
            String value;
            if (this._currentEscape == null) {
                value = this._characterEscapes.getEscapeSequence(c).getValue();
            } else {
                value = this._currentEscape.getValue();
                this._currentEscape = null;
            }
            r1 = value.length();
            if (this._outputTail >= r1) {
                r2 = this._outputTail - r1;
                this._outputHead = r2;
                value.getChars(0, r1, this._outputBuffer, r2);
                return;
            }
            this._outputHead = this._outputTail;
            this._writer.write(value);
        } else if (this._outputTail >= 6) {
            int i3;
            char[] cArr2 = this._outputBuffer;
            i2 = this._outputTail - 6;
            this._outputHead = i2;
            cArr2[i2] = IOUtils.DIR_SEPARATOR_WINDOWS;
            i2++;
            cArr2[i2] = 'u';
            if (c > '\u00ff') {
                r2 = (c >> 8) & MotionEventCompat.ACTION_MASK;
                i2++;
                cArr2[i2] = HEX_CHARS[r2 >> 4];
                i2++;
                cArr2[i2] = HEX_CHARS[r2 & 15];
                i3 = (char) (c & MotionEventCompat.ACTION_MASK);
            } else {
                i2++;
                cArr2[i2] = '0';
                i2++;
                cArr2[i2] = '0';
            }
            i2++;
            cArr2[i2] = HEX_CHARS[i3 >> 4];
            cArr2[i2 + 1] = HEX_CHARS[i3 & 15];
        } else {
            cArr = this._entityBuffer;
            if (cArr == null) {
                cArr = _allocateEntityBuffer();
            }
            this._outputHead = this._outputTail;
            if (c > '\u00ff') {
                r1 = (c >> 8) & MotionEventCompat.ACTION_MASK;
                r2 = c & MotionEventCompat.ACTION_MASK;
                cArr[10] = HEX_CHARS[r1 >> 4];
                cArr[11] = HEX_CHARS[r1 & 15];
                cArr[12] = HEX_CHARS[r2 >> 4];
                cArr[13] = HEX_CHARS[r2 & 15];
                this._writer.write(cArr, 8, 6);
                return;
            }
            cArr[6] = HEX_CHARS[c >> 4];
            cArr[7] = HEX_CHARS[c & 15];
            this._writer.write(cArr, 2, 6);
        }
    }

    private int _readMore(InputStream inputStream, byte[] bArr, int i, int i2, int i3) throws IOException {
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

    private void _writeLongString(String str) throws IOException {
        _flushBuffer();
        int length = str.length();
        int i = 0;
        do {
            int i2 = this._outputEnd;
            if (i + i2 > length) {
                i2 = length - i;
            }
            str.getChars(i, i + i2, this._outputBuffer, 0);
            if (this._characterEscapes != null) {
                _writeSegmentCustom(i2);
            } else if (this._maximumNonEscapedChar != 0) {
                _writeSegmentASCII(i2, this._maximumNonEscapedChar);
            } else {
                _writeSegment(i2);
            }
            i += i2;
        } while (i < length);
    }

    private final void _writeNull() throws IOException {
        if (this._outputTail + 4 >= this._outputEnd) {
            _flushBuffer();
        }
        int i = this._outputTail;
        char[] cArr = this._outputBuffer;
        cArr[i] = 'n';
        i++;
        cArr[i] = 'u';
        i++;
        cArr[i] = 'l';
        i++;
        cArr[i] = 'l';
        this._outputTail = i + 1;
    }

    private void _writeQuotedInt(int i) throws IOException {
        if (this._outputTail + 13 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = '\"';
        this._outputTail = NumberOutput.outputInt(i, this._outputBuffer, this._outputTail);
        cArr = this._outputBuffer;
        i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = '\"';
    }

    private void _writeQuotedLong(long j) throws IOException {
        if (this._outputTail + 23 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '\"';
        this._outputTail = NumberOutput.outputLong(j, this._outputBuffer, this._outputTail);
        cArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '\"';
    }

    private void _writeQuotedRaw(String str) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '\"';
        writeRaw(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        cArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '\"';
    }

    private void _writeQuotedShort(short s) throws IOException {
        if (this._outputTail + 8 >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '\"';
        this._outputTail = NumberOutput.outputInt((int) s, this._outputBuffer, this._outputTail);
        cArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '\"';
    }

    private void _writeSegment(int i) throws IOException {
        int i2 = 0;
        int[] iArr = this._outputEscapes;
        char length = iArr.length;
        int i3 = 0;
        while (i2 < i) {
            char c;
            do {
                c = this._outputBuffer[i2];
                if (c < length && iArr[c] != 0) {
                    break;
                }
                i2++;
            } while (i2 < i);
            int i4 = i2 - i3;
            if (i4 > 0) {
                this._writer.write(this._outputBuffer, i3, i4);
                if (i2 >= i) {
                    return;
                }
            }
            i4 = i2 + 1;
            i3 = _prependOrWriteCharacterEscape(this._outputBuffer, i4, i, c, iArr[c]);
            i2 = i4;
        }
    }

    private void _writeSegmentASCII(int i, int i2) throws IOException, JsonGenerationException {
        int i3 = 0;
        int[] iArr = this._outputEscapes;
        char min = Math.min(iArr.length, i2 + 1);
        int i4 = 0;
        int i5 = 0;
        while (i5 < i) {
            char c;
            int i6;
            do {
                c = this._outputBuffer[i5];
                if (c < min) {
                    i3 = iArr[c];
                    if (i3 != 0) {
                        i6 = i3;
                        break;
                    }
                    i5++;
                } else {
                    if (c > i2) {
                        i6 = -1;
                        break;
                    }
                    i5++;
                }
            } while (i5 < i);
            i6 = i3;
            i3 = i5 - i4;
            if (i3 > 0) {
                this._writer.write(this._outputBuffer, i4, i3);
                if (i5 >= i) {
                    return;
                }
            }
            i4 = i5 + 1;
            i5 = i4;
            i4 = _prependOrWriteCharacterEscape(this._outputBuffer, i4, i, c, i6);
            i3 = i6;
        }
    }

    private void _writeSegmentCustom(int i) throws IOException, JsonGenerationException {
        int i2 = 0;
        int[] iArr = this._outputEscapes;
        char c = this._maximumNonEscapedChar < 1 ? SupportMenu.USER_MASK : this._maximumNonEscapedChar;
        char min = Math.min(iArr.length, c + 1);
        CharacterEscapes characterEscapes = this._characterEscapes;
        int i3 = 0;
        int i4 = 0;
        while (i2 < i) {
            char c2;
            int i5;
            do {
                c2 = this._outputBuffer[i2];
                if (c2 < min) {
                    i4 = iArr[c2];
                    if (i4 != 0) {
                        i5 = i4;
                        break;
                    }
                    i2++;
                } else if (c2 > c) {
                    i5 = -1;
                    break;
                } else {
                    SerializableString escapeSequence = characterEscapes.getEscapeSequence(c2);
                    this._currentEscape = escapeSequence;
                    if (escapeSequence != null) {
                        i5 = -2;
                        break;
                    }
                    i2++;
                }
            } while (i2 < i);
            i5 = i4;
            i4 = i2 - i3;
            if (i4 > 0) {
                this._writer.write(this._outputBuffer, i3, i4);
                if (i2 >= i) {
                    return;
                }
            }
            i3 = i2 + 1;
            i2 = i3;
            i3 = _prependOrWriteCharacterEscape(this._outputBuffer, i3, i, c2, i5);
            i4 = i5;
        }
    }

    private void _writeString(String str) throws IOException {
        int length = str.length();
        if (length > this._outputEnd) {
            _writeLongString(str);
            return;
        }
        if (this._outputTail + length > this._outputEnd) {
            _flushBuffer();
        }
        str.getChars(0, length, this._outputBuffer, this._outputTail);
        if (this._characterEscapes != null) {
            _writeStringCustom(length);
        } else if (this._maximumNonEscapedChar != 0) {
            _writeStringASCII(length, this._maximumNonEscapedChar);
        } else {
            _writeString2(length);
        }
    }

    private void _writeString(char[] cArr, int i, int i2) throws IOException {
        if (this._characterEscapes != null) {
            _writeStringCustom(cArr, i, i2);
        } else if (this._maximumNonEscapedChar != 0) {
            _writeStringASCII(cArr, i, i2, this._maximumNonEscapedChar);
        } else {
            int i3 = i2 + i;
            int[] iArr = this._outputEscapes;
            char length = iArr.length;
            int i4 = i;
            while (i4 < i3) {
                int i5 = i4;
                do {
                    char c = cArr[i5];
                    if (c < length && iArr[c] != 0) {
                        break;
                    }
                    i5++;
                } while (i5 < i3);
                int i6 = i5 - i4;
                if (i6 < SHORT_WRITE) {
                    if (this._outputTail + i6 > this._outputEnd) {
                        _flushBuffer();
                    }
                    if (i6 > 0) {
                        System.arraycopy(cArr, i4, this._outputBuffer, this._outputTail, i6);
                        this._outputTail += i6;
                    }
                } else {
                    _flushBuffer();
                    this._writer.write(cArr, i4, i6);
                }
                if (i5 < i3) {
                    i4 = i5 + 1;
                    char c2 = cArr[i5];
                    _appendCharacterEscape(c2, iArr[c2]);
                } else {
                    return;
                }
            }
        }
    }

    private void _writeString2(int i) throws IOException {
        int i2 = this._outputTail + i;
        int[] iArr = this._outputEscapes;
        char length = iArr.length;
        while (this._outputTail < i2) {
            char c;
            int i3;
            while (true) {
                c = this._outputBuffer[this._outputTail];
                if (c < length && iArr[c] != 0) {
                    break;
                }
                i3 = this._outputTail + 1;
                this._outputTail = i3;
                if (i3 >= i2) {
                    return;
                }
            }
            i3 = this._outputTail - this._outputHead;
            if (i3 > 0) {
                this._writer.write(this._outputBuffer, this._outputHead, i3);
            }
            char[] cArr = this._outputBuffer;
            int i4 = this._outputTail;
            this._outputTail = i4 + 1;
            c = cArr[i4];
            _prependOrWriteCharacterEscape(c, iArr[c]);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void _writeStringASCII(int r10, int r11) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
        r9 = this;
        r0 = r9._outputTail;
        r1 = r0 + r10;
        r2 = r9._outputEscapes;
        r0 = r2.length;
        r3 = r11 + 1;
        r3 = java.lang.Math.min(r0, r3);
    L_0x000d:
        r0 = r9._outputTail;
        if (r0 >= r1) goto L_0x0043;
    L_0x0011:
        r0 = r9._outputBuffer;
        r4 = r9._outputTail;
        r4 = r0[r4];
        if (r4 >= r3) goto L_0x0037;
    L_0x0019:
        r0 = r2[r4];
        if (r0 == 0) goto L_0x003b;
    L_0x001d:
        r5 = r9._outputTail;
        r6 = r9._outputHead;
        r5 = r5 - r6;
        if (r5 <= 0) goto L_0x002d;
    L_0x0024:
        r6 = r9._writer;
        r7 = r9._outputBuffer;
        r8 = r9._outputHead;
        r6.write(r7, r8, r5);
    L_0x002d:
        r5 = r9._outputTail;
        r5 = r5 + 1;
        r9._outputTail = r5;
        r9._prependOrWriteCharacterEscape(r4, r0);
        goto L_0x000d;
    L_0x0037:
        if (r4 <= r11) goto L_0x003b;
    L_0x0039:
        r0 = -1;
        goto L_0x001d;
    L_0x003b:
        r0 = r9._outputTail;
        r0 = r0 + 1;
        r9._outputTail = r0;
        if (r0 < r1) goto L_0x0011;
    L_0x0043:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringASCII(int, int):void");
    }

    private void _writeStringASCII(char[] cArr, int i, int i2, int i3) throws IOException, JsonGenerationException {
        int i4 = i2 + i;
        int[] iArr = this._outputEscapes;
        char min = Math.min(iArr.length, i3 + 1);
        int i5 = 0;
        int i6 = i;
        while (i6 < i4) {
            int i7 = i6;
            do {
                char c = cArr[i7];
                if (c < min) {
                    i5 = iArr[c];
                    if (i5 != 0) {
                        break;
                    }
                    i7++;
                } else {
                    if (c > i3) {
                        i5 = -1;
                        break;
                    }
                    i7++;
                }
            } while (i7 < i4);
            int i8 = i7 - i6;
            if (i8 < SHORT_WRITE) {
                if (this._outputTail + i8 > this._outputEnd) {
                    _flushBuffer();
                }
                if (i8 > 0) {
                    System.arraycopy(cArr, i6, this._outputBuffer, this._outputTail, i8);
                    this._outputTail += i8;
                }
            } else {
                _flushBuffer();
                this._writer.write(cArr, i6, i8);
            }
            if (i7 < i4) {
                i6 = i7 + 1;
                _appendCharacterEscape(c, i5);
            } else {
                return;
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void _writeStringCustom(int r12) throws java.io.IOException, com.fasterxml.jackson.core.JsonGenerationException {
        /*
        r11 = this;
        r0 = r11._outputTail;
        r2 = r0 + r12;
        r3 = r11._outputEscapes;
        r0 = r11._maximumNonEscapedChar;
        r1 = 1;
        if (r0 >= r1) goto L_0x0041;
    L_0x000b:
        r0 = 65535; // 0xffff float:9.1834E-41 double:3.23786E-319;
    L_0x000e:
        r1 = r3.length;
        r4 = r0 + 1;
        r4 = java.lang.Math.min(r1, r4);
        r5 = r11._characterEscapes;
    L_0x0017:
        r1 = r11._outputTail;
        if (r1 >= r2) goto L_0x005a;
    L_0x001b:
        r1 = r11._outputBuffer;
        r6 = r11._outputTail;
        r6 = r1[r6];
        if (r6 >= r4) goto L_0x0044;
    L_0x0023:
        r1 = r3[r6];
        if (r1 == 0) goto L_0x0052;
    L_0x0027:
        r7 = r11._outputTail;
        r8 = r11._outputHead;
        r7 = r7 - r8;
        if (r7 <= 0) goto L_0x0037;
    L_0x002e:
        r8 = r11._writer;
        r9 = r11._outputBuffer;
        r10 = r11._outputHead;
        r8.write(r9, r10, r7);
    L_0x0037:
        r7 = r11._outputTail;
        r7 = r7 + 1;
        r11._outputTail = r7;
        r11._prependOrWriteCharacterEscape(r6, r1);
        goto L_0x0017;
    L_0x0041:
        r0 = r11._maximumNonEscapedChar;
        goto L_0x000e;
    L_0x0044:
        if (r6 <= r0) goto L_0x0048;
    L_0x0046:
        r1 = -1;
        goto L_0x0027;
    L_0x0048:
        r1 = r5.getEscapeSequence(r6);
        r11._currentEscape = r1;
        if (r1 == 0) goto L_0x0052;
    L_0x0050:
        r1 = -2;
        goto L_0x0027;
    L_0x0052:
        r1 = r11._outputTail;
        r1 = r1 + 1;
        r11._outputTail = r1;
        if (r1 < r2) goto L_0x001b;
    L_0x005a:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.json.WriterBasedJsonGenerator._writeStringCustom(int):void");
    }

    private void _writeStringCustom(char[] cArr, int i, int i2) throws IOException, JsonGenerationException {
        int i3 = i2 + i;
        int[] iArr = this._outputEscapes;
        char c = this._maximumNonEscapedChar < 1 ? '\uffff' : this._maximumNonEscapedChar;
        char min = Math.min(iArr.length, c + 1);
        CharacterEscapes characterEscapes = this._characterEscapes;
        int i4 = 0;
        int i5 = i;
        while (i5 < i3) {
            int i6 = i5;
            do {
                char c2 = cArr[i6];
                if (c2 < min) {
                    i4 = iArr[c2];
                    if (i4 != 0) {
                        break;
                    }
                    i6++;
                } else if (c2 > c) {
                    i4 = -1;
                    break;
                } else {
                    SerializableString escapeSequence = characterEscapes.getEscapeSequence(c2);
                    this._currentEscape = escapeSequence;
                    if (escapeSequence != null) {
                        i4 = -2;
                        break;
                    }
                    i6++;
                }
            } while (i6 < i3);
            int i7 = i6 - i5;
            if (i7 < SHORT_WRITE) {
                if (this._outputTail + i7 > this._outputEnd) {
                    _flushBuffer();
                }
                if (i7 > 0) {
                    System.arraycopy(cArr, i5, this._outputBuffer, this._outputTail, i7);
                    this._outputTail += i7;
                }
            } else {
                _flushBuffer();
                this._writer.write(cArr, i5, i7);
            }
            if (i6 < i3) {
                i5 = i6 + 1;
                _appendCharacterEscape(c2, i4);
            } else {
                return;
            }
        }
    }

    private void writeRawLong(String str) throws IOException {
        int i = this._outputEnd - this._outputTail;
        str.getChars(0, i, this._outputBuffer, this._outputTail);
        this._outputTail += i;
        _flushBuffer();
        int length = str.length() - i;
        while (length > this._outputEnd) {
            int i2 = this._outputEnd;
            str.getChars(i, i + i2, this._outputBuffer, 0);
            this._outputHead = 0;
            this._outputTail = i2;
            _flushBuffer();
            i += i2;
            length -= i2;
        }
        str.getChars(i, i + length, this._outputBuffer, 0);
        this._outputHead = 0;
        this._outputTail = length;
    }

    protected void _flushBuffer() throws IOException {
        int i = this._outputTail - this._outputHead;
        if (i > 0) {
            int i2 = this._outputHead;
            this._outputHead = 0;
            this._outputTail = 0;
            this._writer.write(this._outputBuffer, i2, i);
        }
    }

    protected void _releaseBuffers() {
        char[] cArr = this._outputBuffer;
        if (cArr != null) {
            this._outputBuffer = null;
            this._ioContext.releaseConcatBuffer(cArr);
        }
    }

    protected void _verifyPrettyValueWrite(String str) throws IOException {
        int writeValue = this._writeContext.writeValue();
        if (writeValue == 5) {
            _reportError("Can not " + str + ", expecting field name");
        }
        switch (writeValue) {
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

    protected void _verifyValueWrite(String str) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _verifyPrettyValueWrite(str);
            return;
        }
        char c;
        int writeValue = this._writeContext.writeValue();
        if (writeValue == 5) {
            _reportError("Can not " + str + ", expecting field name");
        }
        switch (writeValue) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                c = ',';
                break;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                c = ':';
                break;
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                if (this._rootValueSeparator != null) {
                    writeRaw(this._rootValueSeparator.getValue());
                    return;
                }
                return;
            default:
                return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputBuffer[this._outputTail] = c;
        this._outputTail++;
    }

    protected int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr) throws IOException, JsonGenerationException {
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
                char[] cArr = this._outputBuffer;
                int i7 = this._outputTail;
                this._outputTail = i7 + 1;
                cArr[i7] = IOUtils.DIR_SEPARATOR_WINDOWS;
                cArr = this._outputBuffer;
                i7 = this._outputTail;
                this._outputTail = i7 + 1;
                cArr[i7] = 'n';
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

    protected int _writeBinary(Base64Variant base64Variant, InputStream inputStream, byte[] bArr, int i) throws IOException, JsonGenerationException {
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
                char[] cArr = this._outputBuffer;
                int i8 = this._outputTail;
                this._outputTail = i8 + 1;
                cArr[i8] = IOUtils.DIR_SEPARATOR_WINDOWS;
                cArr = this._outputBuffer;
                i8 = this._outputTail;
                this._outputTail = i8 + 1;
                cArr[i8] = 'n';
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

    protected void _writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
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
                char[] cArr = this._outputBuffer;
                i3 = this._outputTail;
                this._outputTail = i3 + 1;
                cArr[i3] = IOUtils.DIR_SEPARATOR_WINDOWS;
                cArr = this._outputBuffer;
                i3 = this._outputTail;
                this._outputTail = i3 + 1;
                cArr[i3] = 'n';
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

    protected void _writeFieldName(SerializableString serializableString, boolean z) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(serializableString, z);
            return;
        }
        char[] cArr;
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z) {
            cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = ',';
        }
        cArr = serializableString.asQuotedChars();
        if (isEnabled(Feature.QUOTE_FIELD_NAMES)) {
            char[] cArr2 = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            cArr2[i2] = '\"';
            i = cArr.length;
            if ((this._outputTail + i) + 1 >= this._outputEnd) {
                writeRaw(cArr, 0, i);
                if (this._outputTail >= this._outputEnd) {
                    _flushBuffer();
                }
                cArr = this._outputBuffer;
                i = this._outputTail;
                this._outputTail = i + 1;
                cArr[i] = '\"';
                return;
            }
            System.arraycopy(cArr, 0, this._outputBuffer, this._outputTail, i);
            this._outputTail += i;
            cArr = this._outputBuffer;
            i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = '\"';
            return;
        }
        writeRaw(cArr, 0, cArr.length);
    }

    protected void _writeFieldName(String str, boolean z) throws IOException {
        if (this._cfgPrettyPrinter != null) {
            _writePPFieldName(str, z);
            return;
        }
        if (this._outputTail + 1 >= this._outputEnd) {
            _flushBuffer();
        }
        if (z) {
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = ',';
        }
        if (isEnabled(Feature.QUOTE_FIELD_NAMES)) {
            cArr = this._outputBuffer;
            i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = '\"';
            _writeString(str);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            cArr = this._outputBuffer;
            i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = '\"';
            return;
        }
        _writeString(str);
    }

    protected void _writePPFieldName(SerializableString serializableString, boolean z) throws IOException, JsonGenerationException {
        if (z) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        char[] asQuotedChars = serializableString.asQuotedChars();
        if (isEnabled(Feature.QUOTE_FIELD_NAMES)) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = '\"';
            writeRaw(asQuotedChars, 0, asQuotedChars.length);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            asQuotedChars = this._outputBuffer;
            int i2 = this._outputTail;
            this._outputTail = i2 + 1;
            asQuotedChars[i2] = '\"';
            return;
        }
        writeRaw(asQuotedChars, 0, asQuotedChars.length);
    }

    protected void _writePPFieldName(String str, boolean z) throws IOException, JsonGenerationException {
        if (z) {
            this._cfgPrettyPrinter.writeObjectEntrySeparator(this);
        } else {
            this._cfgPrettyPrinter.beforeObjectEntries(this);
        }
        if (isEnabled(Feature.QUOTE_FIELD_NAMES)) {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = '\"';
            _writeString(str);
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            cArr = this._outputBuffer;
            i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = '\"';
            return;
        }
        _writeString(str);
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
        this._outputHead = 0;
        this._outputTail = 0;
        if (this._writer != null) {
            if (this._ioContext.isResourceManaged() || isEnabled(Feature.AUTO_CLOSE_TARGET)) {
                this._writer.close();
            } else if (isEnabled(Feature.FLUSH_PASSED_TO_STREAM)) {
                this._writer.flush();
            }
        }
        _releaseBuffers();
    }

    public void flush() throws IOException {
        _flushBuffer();
        if (this._writer != null && isEnabled(Feature.FLUSH_PASSED_TO_STREAM)) {
            this._writer.flush();
        }
    }

    public int getOutputBuffered() {
        return Math.max(0, this._outputTail - this._outputHead);
    }

    public Object getOutputTarget() {
        return this._writer;
    }

    public int writeBinary(Base64Variant base64Variant, InputStream inputStream, int i) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = '\"';
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
        cArr = this._outputBuffer;
        i2 = this._outputTail;
        this._outputTail = i2 + 1;
        cArr[i2] = '\"';
        return i;
    }

    public void writeBinary(Base64Variant base64Variant, byte[] bArr, int i, int i2) throws IOException, JsonGenerationException {
        _verifyValueWrite("write a binary value");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr[i3] = '\"';
        _writeBinary(base64Variant, bArr, i, i + i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        cArr = this._outputBuffer;
        i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr[i3] = '\"';
    }

    public void writeBoolean(boolean z) throws IOException {
        _verifyValueWrite("write a boolean value");
        if (this._outputTail + 5 >= this._outputEnd) {
            _flushBuffer();
        }
        int i = this._outputTail;
        char[] cArr = this._outputBuffer;
        if (z) {
            cArr[i] = 't';
            i++;
            cArr[i] = 'r';
            i++;
            cArr[i] = 'u';
            i++;
            cArr[i] = 'e';
        } else {
            cArr[i] = 'f';
            i++;
            cArr[i] = 'a';
            i++;
            cArr[i] = 'l';
            i++;
            cArr[i] = 's';
            i++;
            cArr[i] = 'e';
        }
        this._outputTail = i + 1;
    }

    public void writeEndArray() throws IOException, JsonGenerationException {
        if (!this._writeContext.inArray()) {
            _reportError("Current context not an ARRAY but " + this._writeContext.getTypeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndArray(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = ']';
        }
        this._writeContext = this._writeContext.getParent();
    }

    public void writeEndObject() throws IOException, JsonGenerationException {
        if (!this._writeContext.inObject()) {
            _reportError("Current context not an object but " + this._writeContext.getTypeDesc());
        }
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeEndObject(this, this._writeContext.getEntryCount());
        } else {
            if (this._outputTail >= this._outputEnd) {
                _flushBuffer();
            }
            char[] cArr = this._outputBuffer;
            int i = this._outputTail;
            this._outputTail = i + 1;
            cArr[i] = '}';
        }
        this._writeContext = this._writeContext.getParent();
    }

    public void writeFieldName(SerializableString serializableString) throws IOException {
        boolean z = true;
        int writeFieldName = this._writeContext.writeFieldName(serializableString.getValue());
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName != 1) {
            z = false;
        }
        _writeFieldName(serializableString, z);
    }

    public void writeFieldName(String str) throws IOException {
        boolean z = true;
        int writeFieldName = this._writeContext.writeFieldName(str);
        if (writeFieldName == 4) {
            _reportError("Can not write a field name, expecting a value");
        }
        if (writeFieldName != 1) {
            z = false;
        }
        _writeFieldName(str, z);
    }

    public void writeNull() throws IOException {
        _verifyValueWrite("write a null");
        _writeNull();
    }

    public void writeNumber(double d) throws IOException {
        if (this._cfgNumbersAsStrings || (isEnabled(Feature.QUOTE_NON_NUMERIC_NUMBERS) && (Double.isNaN(d) || Double.isInfinite(d)))) {
            writeString(String.valueOf(d));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(d));
    }

    public void writeNumber(float f) throws IOException {
        if (this._cfgNumbersAsStrings || (isEnabled(Feature.QUOTE_NON_NUMERIC_NUMBERS) && (Float.isNaN(f) || Float.isInfinite(f)))) {
            writeString(String.valueOf(f));
            return;
        }
        _verifyValueWrite("write a number");
        writeRaw(String.valueOf(f));
    }

    public void writeNumber(int i) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedInt(i);
            return;
        }
        if (this._outputTail + 11 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt(i, this._outputBuffer, this._outputTail);
    }

    public void writeNumber(long j) throws IOException {
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

    public void writeNumber(String str) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(str);
        } else {
            writeRaw(str);
        }
    }

    public void writeNumber(BigDecimal bigDecimal) throws IOException {
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

    public void writeNumber(BigInteger bigInteger) throws IOException {
        _verifyValueWrite("write a number");
        if (bigInteger == null) {
            _writeNull();
        } else if (this._cfgNumbersAsStrings) {
            _writeQuotedRaw(bigInteger.toString());
        } else {
            writeRaw(bigInteger.toString());
        }
    }

    public void writeNumber(short s) throws IOException {
        _verifyValueWrite("write a number");
        if (this._cfgNumbersAsStrings) {
            _writeQuotedShort(s);
            return;
        }
        if (this._outputTail + 6 >= this._outputEnd) {
            _flushBuffer();
        }
        this._outputTail = NumberOutput.outputInt((int) s, this._outputBuffer, this._outputTail);
    }

    public void writeRaw(char c) throws IOException {
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = c;
    }

    public void writeRaw(SerializableString serializableString) throws IOException {
        writeRaw(serializableString.getValue());
    }

    public void writeRaw(String str) throws IOException {
        int length = str.length();
        int i = this._outputEnd - this._outputTail;
        if (i == 0) {
            _flushBuffer();
            i = this._outputEnd - this._outputTail;
        }
        if (i >= length) {
            str.getChars(0, length, this._outputBuffer, this._outputTail);
            this._outputTail += length;
            return;
        }
        writeRawLong(str);
    }

    public void writeRaw(String str, int i, int i2) throws IOException {
        int i3 = this._outputEnd - this._outputTail;
        if (i3 < i2) {
            _flushBuffer();
            i3 = this._outputEnd - this._outputTail;
        }
        if (i3 >= i2) {
            str.getChars(i, i + i2, this._outputBuffer, this._outputTail);
            this._outputTail += i2;
            return;
        }
        writeRawLong(str.substring(i, i + i2));
    }

    public void writeRaw(char[] cArr, int i, int i2) throws IOException {
        if (i2 < SHORT_WRITE) {
            if (i2 > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(cArr, i, this._outputBuffer, this._outputTail, i2);
            this._outputTail += i2;
            return;
        }
        _flushBuffer();
        this._writer.write(cArr, i, i2);
    }

    public void writeRawUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }

    public void writeStartArray() throws IOException, JsonGenerationException {
        _verifyValueWrite("start an array");
        this._writeContext = this._writeContext.createChildArrayContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartArray(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '[';
    }

    public void writeStartObject() throws IOException, JsonGenerationException {
        _verifyValueWrite("start an object");
        this._writeContext = this._writeContext.createChildObjectContext();
        if (this._cfgPrettyPrinter != null) {
            this._cfgPrettyPrinter.writeStartObject(this);
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '{';
    }

    public void writeString(SerializableString serializableString) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '\"';
        Object asQuotedChars = serializableString.asQuotedChars();
        i = asQuotedChars.length;
        if (i < SHORT_WRITE) {
            if (i > this._outputEnd - this._outputTail) {
                _flushBuffer();
            }
            System.arraycopy(asQuotedChars, 0, this._outputBuffer, this._outputTail, i);
            this._outputTail += i;
        } else {
            _flushBuffer();
            this._writer.write(asQuotedChars, 0, i);
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        cArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '\"';
    }

    public void writeString(String str) throws IOException {
        _verifyValueWrite("write a string");
        if (str == null) {
            _writeNull();
            return;
        }
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr = this._outputBuffer;
        int i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '\"';
        _writeString(str);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        cArr = this._outputBuffer;
        i = this._outputTail;
        this._outputTail = i + 1;
        cArr[i] = '\"';
    }

    public void writeString(char[] cArr, int i, int i2) throws IOException {
        _verifyValueWrite("write a string");
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        char[] cArr2 = this._outputBuffer;
        int i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr2[i3] = '\"';
        _writeString(cArr, i, i2);
        if (this._outputTail >= this._outputEnd) {
            _flushBuffer();
        }
        cArr2 = this._outputBuffer;
        i3 = this._outputTail;
        this._outputTail = i3 + 1;
        cArr2[i3] = '\"';
    }

    public void writeUTF8String(byte[] bArr, int i, int i2) throws IOException {
        _reportUnsupportedOperation();
    }
}
