package org.apache.commons.io.input;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

public abstract class ProxyInputStream extends FilterInputStream {
    public ProxyInputStream(InputStream inputStream) {
        super(inputStream);
    }

    protected void afterRead(int i) throws IOException {
    }

    public int available() throws IOException {
        try {
            return super.available();
        } catch (IOException e) {
            handleIOException(e);
            return 0;
        }
    }

    protected void beforeRead(int i) throws IOException {
    }

    public void close() throws IOException {
        try {
            this.in.close();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    protected void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }

    public void mark(int i) {
        synchronized (this) {
            this.in.mark(i);
        }
    }

    public boolean markSupported() {
        return this.in.markSupported();
    }

    public int read() throws IOException {
        int i = 1;
        try {
            beforeRead(1);
            int read = this.in.read();
            if (read == -1) {
                i = -1;
            }
            afterRead(i);
            return read;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }

    public int read(byte[] bArr) throws IOException {
        int length;
        if (bArr != null) {
            try {
                length = bArr.length;
            } catch (IOException e) {
                handleIOException(e);
                return -1;
            }
        }
        length = 0;
        beforeRead(length);
        length = this.in.read(bArr);
        afterRead(length);
        return length;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            beforeRead(i2);
            int read = this.in.read(bArr, i, i2);
            afterRead(read);
            return read;
        } catch (IOException e) {
            handleIOException(e);
            return -1;
        }
    }

    public void reset() throws IOException {
        synchronized (this) {
            try {
                this.in.reset();
            } catch (IOException e) {
                handleIOException(e);
            }
        }
    }

    public long skip(long j) throws IOException {
        try {
            return this.in.skip(j);
        } catch (IOException e) {
            handleIOException(e);
            return 0;
        }
    }
}
