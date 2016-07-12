package org.apache.commons.io.input;

import java.io.Reader;
import java.io.Serializable;
import spacemadness.com.lunarconsole.BuildConfig;

public class CharSequenceReader extends Reader implements Serializable {
    private final CharSequence charSequence;
    private int idx;
    private int mark;

    public CharSequenceReader(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = BuildConfig.FLAVOR;
        }
        this.charSequence = charSequence;
    }

    public void close() {
        this.idx = 0;
        this.mark = 0;
    }

    public void mark(int i) {
        this.mark = this.idx;
    }

    public boolean markSupported() {
        return true;
    }

    public int read() {
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        CharSequence charSequence = this.charSequence;
        int i = this.idx;
        this.idx = i + 1;
        return charSequence.charAt(i);
    }

    public int read(char[] cArr, int i, int i2) {
        int i3 = 0;
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        if (cArr == null) {
            throw new NullPointerException("Character array is missing");
        } else if (i2 < 0 || i < 0 || i + i2 > cArr.length) {
            throw new IndexOutOfBoundsException("Array Size=" + cArr.length + ", offset=" + i + ", length=" + i2);
        } else {
            int i4 = 0;
            while (i4 < i2) {
                int read = read();
                if (read == -1) {
                    break;
                }
                cArr[i + i4] = (char) read;
                i4++;
                i3++;
            }
            return i3;
        }
    }

    public void reset() {
        this.idx = this.mark;
    }

    public long skip(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Number of characters to skip is less than zero: " + j);
        } else if (this.idx >= this.charSequence.length()) {
            return -1;
        } else {
            int min = (int) Math.min((long) this.charSequence.length(), ((long) this.idx) + j);
            int i = this.idx;
            this.idx = min;
            return (long) (min - i);
        }
    }

    public String toString() {
        return this.charSequence.toString();
    }
}
