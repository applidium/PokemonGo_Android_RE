package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;

public class BoundedInputStream extends InputStream {
    private final InputStream in;
    private long mark;
    private final long max;
    private long pos;
    private boolean propagateClose;

    public BoundedInputStream(InputStream inputStream) {
        this(inputStream, -1);
    }

    public BoundedInputStream(InputStream inputStream, long j) {
        this.pos = 0;
        this.mark = -1;
        this.propagateClose = true;
        this.max = j;
        this.in = inputStream;
    }

    public int available() throws IOException {
        return (this.max < 0 || this.pos < this.max) ? this.in.available() : 0;
    }

    public void close() throws IOException {
        if (this.propagateClose) {
            this.in.close();
        }
    }

    public boolean isPropagateClose() {
        return this.propagateClose;
    }

    public void mark(int i) {
        synchronized (this) {
            this.in.mark(i);
            this.mark = this.pos;
        }
    }

    public boolean markSupported() {
        return this.in.markSupported();
    }

    public int read() throws IOException {
        if (this.max >= 0 && this.pos >= this.max) {
            return -1;
        }
        int read = this.in.read();
        this.pos++;
        return read;
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.max >= 0 && this.pos >= this.max) {
            return -1;
        }
        int read = this.in.read(bArr, i, (int) (this.max >= 0 ? Math.min((long) i2, this.max - this.pos) : (long) i2));
        if (read == -1) {
            return -1;
        }
        this.pos += (long) read;
        return read;
    }

    public void reset() throws IOException {
        synchronized (this) {
            this.in.reset();
            this.pos = this.mark;
        }
    }

    public void setPropagateClose(boolean z) {
        this.propagateClose = z;
    }

    public long skip(long j) throws IOException {
        if (this.max >= 0) {
            j = Math.min(j, this.max - this.pos);
        }
        long skip = this.in.skip(j);
        this.pos += skip;
        return skip;
    }

    public String toString() {
        return this.in.toString();
    }
}
