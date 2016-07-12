package org.apache.commons.io;

import android.support.v4.view.MotionEventCompat;
import java.io.Serializable;

public class ByteOrderMark implements Serializable {
    public static final ByteOrderMark UTF_16BE;
    public static final ByteOrderMark UTF_16LE;
    public static final ByteOrderMark UTF_32BE;
    public static final ByteOrderMark UTF_32LE;
    public static final ByteOrderMark UTF_8;
    private static final long serialVersionUID = 1;
    private final int[] bytes;
    private final String charsetName;

    static {
        UTF_8 = new ByteOrderMark("UTF-8", 239, 187, 191);
        UTF_16BE = new ByteOrderMark("UTF-16BE", 254, MotionEventCompat.ACTION_MASK);
        UTF_16LE = new ByteOrderMark("UTF-16LE", MotionEventCompat.ACTION_MASK, 254);
        UTF_32BE = new ByteOrderMark("UTF-32BE", 0, 0, 254, MotionEventCompat.ACTION_MASK);
        UTF_32LE = new ByteOrderMark("UTF-32LE", MotionEventCompat.ACTION_MASK, 254, 0, 0);
    }

    public ByteOrderMark(String str, int... iArr) {
        if (str == null || str.length() == 0) {
            throw new IllegalArgumentException("No charsetName specified");
        } else if (iArr == null || iArr.length == 0) {
            throw new IllegalArgumentException("No bytes specified");
        } else {
            this.charsetName = str;
            this.bytes = new int[iArr.length];
            System.arraycopy(iArr, 0, this.bytes, 0, iArr.length);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ByteOrderMark)) {
            return false;
        }
        ByteOrderMark byteOrderMark = (ByteOrderMark) obj;
        if (this.bytes.length != byteOrderMark.length()) {
            return false;
        }
        for (int i = 0; i < this.bytes.length; i++) {
            if (this.bytes[i] != byteOrderMark.get(i)) {
                return false;
            }
        }
        return true;
    }

    public int get(int i) {
        return this.bytes[i];
    }

    public byte[] getBytes() {
        byte[] bArr = new byte[this.bytes.length];
        for (int i = 0; i < this.bytes.length; i++) {
            bArr[i] = (byte) this.bytes[i];
        }
        return bArr;
    }

    public String getCharsetName() {
        return this.charsetName;
    }

    public int hashCode() {
        int hashCode = getClass().hashCode();
        for (int i : this.bytes) {
            hashCode += i;
        }
        return hashCode;
    }

    public int length() {
        return this.bytes.length;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getSimpleName());
        stringBuilder.append('[');
        stringBuilder.append(this.charsetName);
        stringBuilder.append(": ");
        for (int i = 0; i < this.bytes.length; i++) {
            if (i > 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append("0x");
            stringBuilder.append(Integer.toHexString(this.bytes[i] & MotionEventCompat.ACTION_MASK).toUpperCase());
        }
        stringBuilder.append(']');
        return stringBuilder.toString();
    }
}
