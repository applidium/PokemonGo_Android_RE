package com.fasterxml.jackson.core;

import android.support.v4.media.TransportMediator;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.io.IOUtils;

public final class Base64Variant implements Serializable {
    public static final int BASE64_VALUE_INVALID = -1;
    public static final int BASE64_VALUE_PADDING = -2;
    private static final int INT_SPACE = 32;
    static final char PADDING_CHAR_NONE = '\u0000';
    private static final long serialVersionUID = 1;
    private final transient int[] _asciiToBase64;
    private final transient byte[] _base64ToAsciiB;
    private final transient char[] _base64ToAsciiC;
    protected final transient int _maxLineLength;
    protected final String _name;
    protected final transient char _paddingChar;
    protected final transient boolean _usesPadding;

    public Base64Variant(Base64Variant base64Variant, String str, int i) {
        this(base64Variant, str, base64Variant._usesPadding, base64Variant._paddingChar, i);
    }

    public Base64Variant(Base64Variant base64Variant, String str, boolean z, char c, int i) {
        this._asciiToBase64 = new int[AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS];
        this._base64ToAsciiC = new char[64];
        this._base64ToAsciiB = new byte[64];
        this._name = str;
        Object obj = base64Variant._base64ToAsciiB;
        System.arraycopy(obj, 0, this._base64ToAsciiB, 0, obj.length);
        obj = base64Variant._base64ToAsciiC;
        System.arraycopy(obj, 0, this._base64ToAsciiC, 0, obj.length);
        obj = base64Variant._asciiToBase64;
        System.arraycopy(obj, 0, this._asciiToBase64, 0, obj.length);
        this._usesPadding = z;
        this._paddingChar = c;
        this._maxLineLength = i;
    }

    public Base64Variant(String str, String str2, boolean z, char c, int i) {
        int i2 = 0;
        this._asciiToBase64 = new int[AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS];
        this._base64ToAsciiC = new char[64];
        this._base64ToAsciiB = new byte[64];
        this._name = str;
        this._usesPadding = z;
        this._paddingChar = c;
        this._maxLineLength = i;
        int length = str2.length();
        if (length != 64) {
            throw new IllegalArgumentException("Base64Alphabet length must be exactly 64 (was " + length + ")");
        }
        str2.getChars(0, length, this._base64ToAsciiC, 0);
        Arrays.fill(this._asciiToBase64, BASE64_VALUE_INVALID);
        while (i2 < length) {
            char c2 = this._base64ToAsciiC[i2];
            this._base64ToAsciiB[i2] = (byte) c2;
            this._asciiToBase64[c2] = i2;
            i2++;
        }
        if (z) {
            this._asciiToBase64[c] = BASE64_VALUE_PADDING;
        }
    }

    protected void _reportBase64EOF() throws IllegalArgumentException {
        throw new IllegalArgumentException("Unexpected end-of-String in base64 content");
    }

    protected void _reportInvalidBase64(char c, int i, String str) throws IllegalArgumentException {
        r0 = c <= ' ' ? "Illegal white space character (code 0x" + Integer.toHexString(c) + ") as character #" + (i + 1) + " of 4-char base64 unit: can only used between units" : usesPaddingChar(c) ? "Unexpected padding character ('" + getPaddingChar() + "') as character #" + (i + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character" : (!Character.isDefined(c) || Character.isISOControl(c)) ? "Illegal character (code 0x" + Integer.toHexString(c) + ") in base64 content" : "Illegal character '" + c + "' (code 0x" + Integer.toHexString(c) + ") in base64 content";
        if (str != null) {
            r0 = r0 + ": " + str;
        }
        throw new IllegalArgumentException(r0);
    }

    public void decode(String str, ByteArrayBuilder byteArrayBuilder) throws IllegalArgumentException {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int i2;
            char charAt;
            while (true) {
                i2 = i + 1;
                charAt = str.charAt(i);
                if (i2 < length) {
                    if (charAt > ' ') {
                        break;
                    }
                    i = i2;
                } else {
                    return;
                }
            }
            int decodeBase64Char = decodeBase64Char(charAt);
            if (decodeBase64Char < 0) {
                _reportInvalidBase64(charAt, 0, null);
            }
            if (i2 >= length) {
                _reportBase64EOF();
            }
            i = i2 + 1;
            char charAt2 = str.charAt(i2);
            int decodeBase64Char2 = decodeBase64Char(charAt2);
            if (decodeBase64Char2 < 0) {
                _reportInvalidBase64(charAt2, 1, null);
            }
            i2 = (decodeBase64Char << 6) | decodeBase64Char2;
            if (i >= length) {
                if (usesPadding()) {
                    _reportBase64EOF();
                } else {
                    byteArrayBuilder.append(i2 >> 4);
                    return;
                }
            }
            decodeBase64Char = i + 1;
            charAt = str.charAt(i);
            decodeBase64Char2 = decodeBase64Char(charAt);
            char charAt3;
            if (decodeBase64Char2 < 0) {
                if (decodeBase64Char2 != BASE64_VALUE_PADDING) {
                    _reportInvalidBase64(charAt, 2, null);
                }
                if (decodeBase64Char >= length) {
                    _reportBase64EOF();
                }
                i = decodeBase64Char + 1;
                charAt3 = str.charAt(decodeBase64Char);
                if (!usesPaddingChar(charAt3)) {
                    _reportInvalidBase64(charAt3, 3, "expected padding character '" + getPaddingChar() + "'");
                }
                byteArrayBuilder.append(i2 >> 4);
            } else {
                i2 = (i2 << 6) | decodeBase64Char2;
                if (decodeBase64Char >= length) {
                    if (usesPadding()) {
                        _reportBase64EOF();
                    } else {
                        byteArrayBuilder.appendTwoBytes(i2 >> 2);
                        return;
                    }
                }
                i = decodeBase64Char + 1;
                charAt3 = str.charAt(decodeBase64Char);
                decodeBase64Char2 = decodeBase64Char(charAt3);
                if (decodeBase64Char2 < 0) {
                    if (decodeBase64Char2 != BASE64_VALUE_PADDING) {
                        _reportInvalidBase64(charAt3, 3, null);
                    }
                    byteArrayBuilder.appendTwoBytes(i2 >> 2);
                } else {
                    byteArrayBuilder.appendThreeBytes((i2 << 6) | decodeBase64Char2);
                }
            }
        }
    }

    public byte[] decode(String str) throws IllegalArgumentException {
        ByteArrayBuilder byteArrayBuilder = new ByteArrayBuilder();
        decode(str, byteArrayBuilder);
        return byteArrayBuilder.toByteArray();
    }

    public int decodeBase64Byte(byte b) {
        return b <= 127 ? this._asciiToBase64[b] : BASE64_VALUE_INVALID;
    }

    public int decodeBase64Char(char c) {
        return c <= '\u007f' ? this._asciiToBase64[c] : BASE64_VALUE_INVALID;
    }

    public int decodeBase64Char(int i) {
        return i <= TransportMediator.KEYCODE_MEDIA_PAUSE ? this._asciiToBase64[i] : BASE64_VALUE_INVALID;
    }

    public String encode(byte[] bArr) {
        return encode(bArr, false);
    }

    public String encode(byte[] bArr, boolean z) {
        int length = bArr.length;
        StringBuilder stringBuilder = new StringBuilder(((length >> 2) + length) + (length >> 3));
        if (z) {
            stringBuilder.append('\"');
        }
        int maxLineLength = getMaxLineLength() >> 2;
        int i = 0;
        while (i <= length - 3) {
            int i2 = i + 1;
            int i3 = i2 + 1;
            encodeBase64Chunk(stringBuilder, (((bArr[i] << 8) | (bArr[i2] & MotionEventCompat.ACTION_MASK)) << 8) | (bArr[i3] & MotionEventCompat.ACTION_MASK));
            maxLineLength += BASE64_VALUE_INVALID;
            if (maxLineLength <= 0) {
                stringBuilder.append(IOUtils.DIR_SEPARATOR_WINDOWS);
                stringBuilder.append('n');
                maxLineLength = getMaxLineLength() >> 2;
            }
            i = i3 + 1;
        }
        length -= i;
        if (length > 0) {
            i2 = i + 1;
            maxLineLength = bArr[i] << 16;
            if (length == 2) {
                maxLineLength |= (bArr[i2] & MotionEventCompat.ACTION_MASK) << 8;
            }
            encodeBase64Partial(stringBuilder, maxLineLength, length);
        }
        if (z) {
            stringBuilder.append('\"');
        }
        return stringBuilder.toString();
    }

    public byte encodeBase64BitsAsByte(int i) {
        return this._base64ToAsciiB[i];
    }

    public char encodeBase64BitsAsChar(int i) {
        return this._base64ToAsciiC[i];
    }

    public int encodeBase64Chunk(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        bArr[i2] = this._base64ToAsciiB[(i >> 18) & 63];
        int i4 = i3 + 1;
        bArr[i3] = this._base64ToAsciiB[(i >> 12) & 63];
        i3 = i4 + 1;
        bArr[i4] = this._base64ToAsciiB[(i >> 6) & 63];
        bArr[i3] = this._base64ToAsciiB[i & 63];
        return i3 + 1;
    }

    public int encodeBase64Chunk(int i, char[] cArr, int i2) {
        int i3 = i2 + 1;
        cArr[i2] = this._base64ToAsciiC[(i >> 18) & 63];
        int i4 = i3 + 1;
        cArr[i3] = this._base64ToAsciiC[(i >> 12) & 63];
        i3 = i4 + 1;
        cArr[i4] = this._base64ToAsciiC[(i >> 6) & 63];
        cArr[i3] = this._base64ToAsciiC[i & 63];
        return i3 + 1;
    }

    public void encodeBase64Chunk(StringBuilder stringBuilder, int i) {
        stringBuilder.append(this._base64ToAsciiC[(i >> 18) & 63]);
        stringBuilder.append(this._base64ToAsciiC[(i >> 12) & 63]);
        stringBuilder.append(this._base64ToAsciiC[(i >> 6) & 63]);
        stringBuilder.append(this._base64ToAsciiC[i & 63]);
    }

    public int encodeBase64Partial(int i, int i2, byte[] bArr, int i3) {
        int i4 = i3 + 1;
        bArr[i3] = this._base64ToAsciiB[(i >> 18) & 63];
        int i5 = i4 + 1;
        bArr[i4] = this._base64ToAsciiB[(i >> 12) & 63];
        if (this._usesPadding) {
            byte b = (byte) this._paddingChar;
            int i6 = i5 + 1;
            bArr[i5] = i2 == 2 ? this._base64ToAsciiB[(i >> 6) & 63] : b;
            i4 = i6 + 1;
            bArr[i6] = b;
            return i4;
        } else if (i2 != 2) {
            return i5;
        } else {
            bArr[i5] = this._base64ToAsciiB[(i >> 6) & 63];
            return i5 + 1;
        }
    }

    public int encodeBase64Partial(int i, int i2, char[] cArr, int i3) {
        int i4 = i3 + 1;
        cArr[i3] = this._base64ToAsciiC[(i >> 18) & 63];
        int i5 = i4 + 1;
        cArr[i4] = this._base64ToAsciiC[(i >> 12) & 63];
        if (this._usesPadding) {
            int i6 = i5 + 1;
            cArr[i5] = i2 == 2 ? this._base64ToAsciiC[(i >> 6) & 63] : this._paddingChar;
            i4 = i6 + 1;
            cArr[i6] = this._paddingChar;
            return i4;
        } else if (i2 != 2) {
            return i5;
        } else {
            cArr[i5] = this._base64ToAsciiC[(i >> 6) & 63];
            return i5 + 1;
        }
    }

    public void encodeBase64Partial(StringBuilder stringBuilder, int i, int i2) {
        stringBuilder.append(this._base64ToAsciiC[(i >> 18) & 63]);
        stringBuilder.append(this._base64ToAsciiC[(i >> 12) & 63]);
        if (this._usesPadding) {
            stringBuilder.append(i2 == 2 ? this._base64ToAsciiC[(i >> 6) & 63] : this._paddingChar);
            stringBuilder.append(this._paddingChar);
        } else if (i2 == 2) {
            stringBuilder.append(this._base64ToAsciiC[(i >> 6) & 63]);
        }
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public int getMaxLineLength() {
        return this._maxLineLength;
    }

    public String getName() {
        return this._name;
    }

    public byte getPaddingByte() {
        return (byte) this._paddingChar;
    }

    public char getPaddingChar() {
        return this._paddingChar;
    }

    public int hashCode() {
        return this._name.hashCode();
    }

    protected Object readResolve() {
        return Base64Variants.valueOf(this._name);
    }

    public String toString() {
        return this._name;
    }

    public boolean usesPadding() {
        return this._usesPadding;
    }

    public boolean usesPaddingChar(char c) {
        return c == this._paddingChar;
    }

    public boolean usesPaddingChar(int i) {
        return i == this._paddingChar;
    }
}
