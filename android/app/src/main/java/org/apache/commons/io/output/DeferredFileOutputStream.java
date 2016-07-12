package org.apache.commons.io.output;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.io.IOUtils;

public class DeferredFileOutputStream extends ThresholdingOutputStream {
    private boolean closed;
    private OutputStream currentOutputStream;
    private final File directory;
    private ByteArrayOutputStream memoryOutputStream;
    private File outputFile;
    private final String prefix;
    private final String suffix;

    public DeferredFileOutputStream(int i, File file) {
        this(i, file, null, null, null);
    }

    private DeferredFileOutputStream(int i, File file, String str, String str2, File file2) {
        super(i);
        this.closed = false;
        this.outputFile = file;
        this.memoryOutputStream = new ByteArrayOutputStream();
        this.currentOutputStream = this.memoryOutputStream;
        this.prefix = str;
        this.suffix = str2;
        this.directory = file2;
    }

    public DeferredFileOutputStream(int i, String str, String str2, File file) {
        this(i, null, str, str2, file);
        if (str == null) {
            throw new IllegalArgumentException("Temporary file prefix is missing");
        }
    }

    public void close() throws IOException {
        super.close();
        this.closed = true;
    }

    public byte[] getData() {
        return this.memoryOutputStream != null ? this.memoryOutputStream.toByteArray() : null;
    }

    public File getFile() {
        return this.outputFile;
    }

    protected OutputStream getStream() throws IOException {
        return this.currentOutputStream;
    }

    public boolean isInMemory() {
        return !isThresholdExceeded();
    }

    protected void thresholdReached() throws IOException {
        if (this.prefix != null) {
            this.outputFile = File.createTempFile(this.prefix, this.suffix, this.directory);
        }
        OutputStream fileOutputStream = new FileOutputStream(this.outputFile);
        this.memoryOutputStream.writeTo(fileOutputStream);
        this.currentOutputStream = fileOutputStream;
        this.memoryOutputStream = null;
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        if (!this.closed) {
            throw new IOException("Stream not closed");
        } else if (isInMemory()) {
            this.memoryOutputStream.writeTo(outputStream);
        } else {
            InputStream fileInputStream = new FileInputStream(this.outputFile);
            try {
                IOUtils.copy(fileInputStream, outputStream);
            } finally {
                IOUtils.closeQuietly(fileInputStream);
            }
        }
    }
}
