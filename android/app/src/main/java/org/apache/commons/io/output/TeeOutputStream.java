package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

public class TeeOutputStream extends ProxyOutputStream {
    protected OutputStream branch;

    public TeeOutputStream(OutputStream outputStream, OutputStream outputStream2) {
        super(outputStream);
        this.branch = outputStream2;
    }

    public void close() throws IOException {
        try {
            super.close();
        } finally {
            this.branch.close();
        }
    }

    public void flush() throws IOException {
        super.flush();
        this.branch.flush();
    }

    public void write(int i) throws IOException {
        synchronized (this) {
            super.write(i);
            this.branch.write(i);
        }
    }

    public void write(byte[] bArr) throws IOException {
        synchronized (this) {
            super.write(bArr);
            this.branch.write(bArr);
        }
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        synchronized (this) {
            super.write(bArr, i, i2);
            this.branch.write(bArr, i, i2);
        }
    }
}
