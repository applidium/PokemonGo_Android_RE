package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class TeeInputStream extends ProxyInputStream {
    private final OutputStream branch;
    private final boolean closeBranch;

    public TeeInputStream(InputStream inputStream, OutputStream outputStream) {
        this(inputStream, outputStream, false);
    }

    public TeeInputStream(InputStream inputStream, OutputStream outputStream, boolean z) {
        super(inputStream);
        this.branch = outputStream;
        this.closeBranch = z;
    }

    public void close() throws IOException {
        try {
            super.close();
            if (this.closeBranch) {
                this.branch.close();
            }
        } catch (Throwable th) {
            if (this.closeBranch) {
                this.branch.close();
            }
        }
    }

    public int read() throws IOException {
        int read = super.read();
        if (read != -1) {
            this.branch.write(read);
        }
        return read;
    }

    public int read(byte[] bArr) throws IOException {
        int read = super.read(bArr);
        if (read != -1) {
            this.branch.write(bArr, 0, read);
        }
        return read;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read != -1) {
            this.branch.write(bArr, i, read);
        }
        return read;
    }
}
