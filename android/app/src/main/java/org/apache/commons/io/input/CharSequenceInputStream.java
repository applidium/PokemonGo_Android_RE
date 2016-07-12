package org.apache.commons.io.input;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

public class CharSequenceInputStream extends InputStream {
    private final ByteBuffer bbuf;
    private final CharBuffer cbuf;
    private final CharsetEncoder encoder;
    private int mark;

    public CharSequenceInputStream(CharSequence charSequence, String str) {
        this(charSequence, str, (int) AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT);
    }

    public CharSequenceInputStream(CharSequence charSequence, String str, int i) {
        this(charSequence, Charset.forName(str), i);
    }

    public CharSequenceInputStream(CharSequence charSequence, Charset charset) {
        this(charSequence, charset, (int) AccessibilityNodeInfoCompat.ACTION_PREVIOUS_HTML_ELEMENT);
    }

    public CharSequenceInputStream(CharSequence charSequence, Charset charset, int i) {
        this.encoder = charset.newEncoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
        this.bbuf = ByteBuffer.allocate(i);
        this.bbuf.flip();
        this.cbuf = CharBuffer.wrap(charSequence);
        this.mark = -1;
    }

    private void fillBuffer() throws CharacterCodingException {
        this.bbuf.compact();
        CoderResult encode = this.encoder.encode(this.cbuf, this.bbuf, true);
        if (encode.isError()) {
            encode.throwException();
        }
        this.bbuf.flip();
    }

    public int available() throws IOException {
        return this.cbuf.remaining();
    }

    public void close() throws IOException {
    }

    public void mark(int i) {
        synchronized (this) {
            this.mark = this.cbuf.position();
        }
    }

    public boolean markSupported() {
        return true;
    }

    public int read() throws IOException {
        while (!this.bbuf.hasRemaining()) {
            fillBuffer();
            if (!this.bbuf.hasRemaining() && !this.cbuf.hasRemaining()) {
                return -1;
            }
        }
        return this.bbuf.get() & MotionEventCompat.ACTION_MASK;
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = 0;
        if (bArr == null) {
            throw new NullPointerException("Byte array is null");
        } else if (i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException("Array Size=" + bArr.length + ", offset=" + i + ", length=" + i2);
        } else if (i2 == 0) {
            return 0;
        } else {
            if (!this.bbuf.hasRemaining() && !this.cbuf.hasRemaining()) {
                return -1;
            }
            while (i2 > 0) {
                if (!this.bbuf.hasRemaining()) {
                    fillBuffer();
                    if (!(this.bbuf.hasRemaining() || this.cbuf.hasRemaining())) {
                        break;
                    }
                }
                int min = Math.min(this.bbuf.remaining(), i2);
                this.bbuf.get(bArr, i, min);
                i += min;
                i2 -= min;
                i3 += min;
            }
            return (i3 != 0 || this.cbuf.hasRemaining()) ? i3 : -1;
        }
    }

    public void reset() throws IOException {
        synchronized (this) {
            if (this.mark != -1) {
                this.cbuf.position(this.mark);
                this.mark = -1;
            }
        }
    }

    public long skip(long j) throws IOException {
        int i = 0;
        while (j > 0 && this.cbuf.hasRemaining()) {
            this.cbuf.get();
            j--;
            i++;
        }
        return (long) i;
    }
}
