package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;

public class ClosedOutputStream extends OutputStream {
    public static final ClosedOutputStream CLOSED_OUTPUT_STREAM;

    static {
        CLOSED_OUTPUT_STREAM = new ClosedOutputStream();
    }

    public void write(int i) throws IOException {
        throw new IOException("write(" + i + ") failed: stream is closed");
    }
}
