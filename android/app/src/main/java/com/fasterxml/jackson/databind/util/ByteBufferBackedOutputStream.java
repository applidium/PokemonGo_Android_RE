package com.fasterxml.jackson.databind.util;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;

public class ByteBufferBackedOutputStream extends OutputStream {
    protected final ByteBuffer _b;

    public ByteBufferBackedOutputStream(ByteBuffer byteBuffer) {
        this._b = byteBuffer;
    }

    public void write(int i) throws IOException {
        this._b.put((byte) i);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        this._b.put(bArr, i, i2);
    }
}
