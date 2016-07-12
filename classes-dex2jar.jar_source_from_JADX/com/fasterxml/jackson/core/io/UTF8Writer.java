package com.fasterxml.jackson.core.io;

import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;

public final class UTF8Writer extends Writer {
    static final int SURR1_FIRST = 55296;
    static final int SURR1_LAST = 56319;
    static final int SURR2_FIRST = 56320;
    static final int SURR2_LAST = 57343;
    private final IOContext _context;
    private OutputStream _out;
    private byte[] _outBuffer;
    private final int _outBufferEnd;
    private int _outPtr;
    private int _surrogate;

    public UTF8Writer(IOContext iOContext, OutputStream outputStream) {
        this._surrogate = 0;
        this._context = iOContext;
        this._out = outputStream;
        this._outBuffer = iOContext.allocWriteEncodingBuffer();
        this._outBufferEnd = this._outBuffer.length - 4;
        this._outPtr = 0;
    }

    protected static void illegalSurrogate(int i) throws IOException {
        throw new IOException(illegalSurrogateDesc(i));
    }

    protected static String illegalSurrogateDesc(int i) {
        return i > 1114111 ? "Illegal character point (0x" + Integer.toHexString(i) + ") to output; max is 0x10FFFF as per RFC 4627" : i >= SURR1_FIRST ? i <= SURR1_LAST ? "Unmatched first part of surrogate pair (0x" + Integer.toHexString(i) + ")" : "Unmatched second part of surrogate pair (0x" + Integer.toHexString(i) + ")" : "Illegal character point (0x" + Integer.toHexString(i) + ") to output";
    }

    public Writer append(char c) throws IOException {
        write((int) c);
        return this;
    }

    public void close() throws IOException {
        if (this._out != null) {
            if (this._outPtr > 0) {
                this._out.write(this._outBuffer, 0, this._outPtr);
                this._outPtr = 0;
            }
            OutputStream outputStream = this._out;
            this._out = null;
            byte[] bArr = this._outBuffer;
            if (bArr != null) {
                this._outBuffer = null;
                this._context.releaseWriteEncodingBuffer(bArr);
            }
            outputStream.close();
            int i = this._surrogate;
            this._surrogate = 0;
            if (i > 0) {
                illegalSurrogate(i);
            }
        }
    }

    protected int convertSurrogate(int i) throws IOException {
        int i2 = this._surrogate;
        this._surrogate = 0;
        if (i >= SURR2_FIRST && i <= SURR2_LAST) {
            return (((i2 - SURR1_FIRST) << 10) + AccessibilityNodeInfoCompat.ACTION_CUT) + (i - SURR2_FIRST);
        }
        throw new IOException("Broken surrogate pair: first char 0x" + Integer.toHexString(i2) + ", second 0x" + Integer.toHexString(i) + "; illegal combination");
    }

    public void flush() throws IOException {
        if (this._out != null) {
            if (this._outPtr > 0) {
                this._out.write(this._outBuffer, 0, this._outPtr);
                this._outPtr = 0;
            }
            this._out.flush();
        }
    }

    public void write(int i) throws IOException {
        if (this._surrogate > 0) {
            i = convertSurrogate(i);
        } else if (i >= SURR1_FIRST && i <= SURR2_LAST) {
            if (i > SURR1_LAST) {
                illegalSurrogate(i);
            }
            this._surrogate = i;
            return;
        }
        if (this._outPtr >= this._outBufferEnd) {
            this._out.write(this._outBuffer, 0, this._outPtr);
            this._outPtr = 0;
        }
        if (i < AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
            byte[] bArr = this._outBuffer;
            int i2 = this._outPtr;
            this._outPtr = i2 + 1;
            bArr[i2] = (byte) i;
            return;
        }
        int i3 = this._outPtr;
        int i4;
        if (i < AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT) {
            i4 = i3 + 1;
            this._outBuffer[i3] = (byte) ((i >> 6) | 192);
            i3 = i4 + 1;
            this._outBuffer[i4] = (byte) ((i & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        } else if (i <= SupportMenu.USER_MASK) {
            i4 = i3 + 1;
            this._outBuffer[i3] = (byte) ((i >> 12) | 224);
            i2 = i4 + 1;
            this._outBuffer[i4] = (byte) (((i >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            this._outBuffer[i2] = (byte) ((i & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            i3 = i2 + 1;
        } else {
            if (i > 1114111) {
                illegalSurrogate(i);
            }
            i4 = i3 + 1;
            this._outBuffer[i3] = (byte) ((i >> 18) | 240);
            i2 = i4 + 1;
            this._outBuffer[i4] = (byte) (((i >> 12) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            i4 = i2 + 1;
            this._outBuffer[i2] = (byte) (((i >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            i3 = i4 + 1;
            this._outBuffer[i4] = (byte) ((i & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        }
        this._outPtr = i3;
    }

    public void write(String str) throws IOException {
        write(str, 0, str.length());
    }

    public void write(String str, int i, int i2) throws IOException {
        if (i2 >= 2) {
            if (this._surrogate > 0) {
                i2--;
                write(convertSurrogate(str.charAt(i)));
                i++;
            }
            int i3 = this._outPtr;
            byte[] bArr = this._outBuffer;
            int i4 = this._outBufferEnd;
            int i5 = i2 + i;
            while (i < i5) {
                int i6;
                int i7;
                if (i3 >= i4) {
                    this._out.write(bArr, 0, i3);
                    i3 = 0;
                }
                int i8 = i + 1;
                int charAt = str.charAt(i);
                if (charAt < AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
                    i6 = i3 + 1;
                    bArr[i3] = (byte) charAt;
                    charAt = i5 - i8;
                    i3 = i4 - i6;
                    if (charAt <= i3) {
                        i3 = charAt;
                    }
                    charAt = i8;
                    while (charAt < i3 + i8) {
                        i7 = charAt + 1;
                        charAt = str.charAt(charAt);
                        if (charAt >= AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
                            i3 = i7;
                        } else {
                            bArr[i6] = (byte) charAt;
                            i6++;
                            charAt = i7;
                        }
                    }
                    i = charAt;
                    i3 = i6;
                } else {
                    i6 = i3;
                    i3 = i8;
                }
                if (charAt < AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT) {
                    i7 = i6 + 1;
                    bArr[i6] = (byte) ((charAt >> 6) | 192);
                    bArr[i7] = (byte) ((charAt & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    charAt = i7 + 1;
                } else if (charAt < SURR1_FIRST || charAt > SURR2_LAST) {
                    i7 = i6 + 1;
                    bArr[i6] = (byte) ((charAt >> 12) | 224);
                    i8 = i7 + 1;
                    bArr[i7] = (byte) (((charAt >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    i6 = i8 + 1;
                    bArr[i8] = (byte) ((charAt & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    i = i3;
                    i3 = i6;
                } else {
                    if (charAt > SURR1_LAST) {
                        this._outPtr = i6;
                        illegalSurrogate(charAt);
                    }
                    this._surrogate = charAt;
                    if (i3 >= i5) {
                        i3 = i6;
                        break;
                    }
                    charAt = i3 + 1;
                    i3 = convertSurrogate(str.charAt(i3));
                    if (i3 > 1114111) {
                        this._outPtr = i6;
                        illegalSurrogate(i3);
                    }
                    i7 = i6 + 1;
                    bArr[i6] = (byte) ((i3 >> 18) | 240);
                    i6 = i7 + 1;
                    bArr[i7] = (byte) (((i3 >> 12) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    i7 = i6 + 1;
                    bArr[i6] = (byte) (((i3 >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    bArr[i7] = (byte) ((i3 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    int i9 = charAt;
                    charAt = i7 + 1;
                    i3 = i9;
                }
                i = i3;
                i3 = charAt;
            }
            this._outPtr = i3;
        } else if (i2 == 1) {
            write(str.charAt(i));
        }
    }

    public void write(char[] cArr) throws IOException {
        write(cArr, 0, cArr.length);
    }

    public void write(char[] cArr, int i, int i2) throws IOException {
        if (i2 >= 2) {
            if (this._surrogate > 0) {
                i2--;
                write(convertSurrogate(cArr[i]));
                i++;
            }
            int i3 = this._outPtr;
            byte[] bArr = this._outBuffer;
            int i4 = this._outBufferEnd;
            int i5 = i2 + i;
            while (i < i5) {
                int i6;
                int i7;
                if (i3 >= i4) {
                    this._out.write(bArr, 0, i3);
                    i3 = 0;
                }
                int i8 = i + 1;
                int i9 = cArr[i];
                if (i9 < AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
                    i6 = i3 + 1;
                    bArr[i3] = (byte) i9;
                    i9 = i5 - i8;
                    i3 = i4 - i6;
                    if (i9 <= i3) {
                        i3 = i9;
                    }
                    i9 = i8;
                    while (i9 < i3 + i8) {
                        i7 = i9 + 1;
                        i9 = cArr[i9];
                        if (i9 >= AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) {
                            i3 = i7;
                        } else {
                            bArr[i6] = (byte) i9;
                            i6++;
                            i9 = i7;
                        }
                    }
                    i = i9;
                    i3 = i6;
                } else {
                    i6 = i3;
                    i3 = i8;
                }
                if (i9 < AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT) {
                    i7 = i6 + 1;
                    bArr[i6] = (byte) ((i9 >> 6) | 192);
                    bArr[i7] = (byte) ((i9 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    i9 = i7 + 1;
                } else if (i9 < SURR1_FIRST || i9 > SURR2_LAST) {
                    i7 = i6 + 1;
                    bArr[i6] = (byte) ((i9 >> 12) | 224);
                    i8 = i7 + 1;
                    bArr[i7] = (byte) (((i9 >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    i6 = i8 + 1;
                    bArr[i8] = (byte) ((i9 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    i = i3;
                    i3 = i6;
                } else {
                    if (i9 > SURR1_LAST) {
                        this._outPtr = i6;
                        illegalSurrogate(i9);
                    }
                    this._surrogate = i9;
                    if (i3 >= i5) {
                        i3 = i6;
                        break;
                    }
                    i9 = i3 + 1;
                    i3 = convertSurrogate(cArr[i3]);
                    if (i3 > 1114111) {
                        this._outPtr = i6;
                        illegalSurrogate(i3);
                    }
                    i7 = i6 + 1;
                    bArr[i6] = (byte) ((i3 >> 18) | 240);
                    i6 = i7 + 1;
                    bArr[i7] = (byte) (((i3 >> 12) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    i7 = i6 + 1;
                    bArr[i6] = (byte) (((i3 >> 6) & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    bArr[i7] = (byte) ((i3 & 63) | AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
                    int i10 = i9;
                    i9 = i7 + 1;
                    i3 = i10;
                }
                i = i3;
                i3 = i9;
            }
            this._outPtr = i3;
        } else if (i2 == 1) {
            write(cArr[i]);
        }
    }
}
