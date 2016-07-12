package com.fasterxml.jackson.databind.util;

import android.support.v4.view.MotionEventCompat;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

public class ByteBufferBackedInputStream extends InputStream {
    protected final ByteBuffer _b;

    public ByteBufferBackedInputStream(ByteBuffer byteBuffer) {
        this._b = byteBuffer;
    }

    public int available() {
        return this._b.remaining();
    }

    public int read() throws IOException {
        return this._b.hasRemaining() ? this._b.get() & MotionEventCompat.ACTION_MASK : -1;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this._b.hasRemaining()) {
            return -1;
        }
        int min = Math.min(i2, this._b.remaining());
        this._b.get(bArr, i, min);
        return min;
    }
}
