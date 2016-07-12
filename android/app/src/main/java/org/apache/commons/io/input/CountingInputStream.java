package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;

public class CountingInputStream extends ProxyInputStream {
    private long count;

    public CountingInputStream(InputStream inputStream) {
        super(inputStream);
    }

    protected void afterRead(int i) {
        synchronized (this) {
            if (i != -1) {
                this.count += (long) i;
            }
        }
    }

    public long getByteCount() {
        long j;
        synchronized (this) {
            j = this.count;
        }
        return j;
    }

    public int getCount() {
        long byteCount = getByteCount();
        if (byteCount <= 2147483647L) {
            return (int) byteCount;
        }
        throw new ArithmeticException("The byte count " + byteCount + " is too large to be converted to an int");
    }

    public long resetByteCount() {
        long j;
        synchronized (this) {
            j = this.count;
            this.count = 0;
        }
        return j;
    }

    public int resetCount() {
        long resetByteCount = resetByteCount();
        if (resetByteCount <= 2147483647L) {
            return (int) resetByteCount;
        }
        throw new ArithmeticException("The byte count " + resetByteCount + " is too large to be converted to an int");
    }

    public long skip(long j) throws IOException {
        long skip;
        synchronized (this) {
            skip = super.skip(j);
            this.count += skip;
        }
        return skip;
    }
}
