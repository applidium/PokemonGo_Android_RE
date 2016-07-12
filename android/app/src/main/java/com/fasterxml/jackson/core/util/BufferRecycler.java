package com.fasterxml.jackson.core.util;

import com.upsight.android.logger.UpsightLogger;

public class BufferRecycler {
    public static final int BYTE_BASE64_CODEC_BUFFER = 3;
    private static final int[] BYTE_BUFFER_LENGTHS;
    public static final int BYTE_READ_IO_BUFFER = 0;
    public static final int BYTE_WRITE_CONCAT_BUFFER = 2;
    public static final int BYTE_WRITE_ENCODING_BUFFER = 1;
    private static final int[] CHAR_BUFFER_LENGTHS;
    public static final int CHAR_CONCAT_BUFFER = 1;
    public static final int CHAR_NAME_COPY_BUFFER = 3;
    public static final int CHAR_TEXT_BUFFER = 2;
    public static final int CHAR_TOKEN_BUFFER = 0;
    protected final byte[][] _byteBuffers;
    protected final char[][] _charBuffers;

    static {
        BYTE_BUFFER_LENGTHS = new int[]{8000, 8000, 2000, 2000};
        CHAR_BUFFER_LENGTHS = new int[]{UpsightLogger.MAX_LENGTH, UpsightLogger.MAX_LENGTH, 200, 200};
    }

    public BufferRecycler() {
        this(4, 4);
    }

    protected BufferRecycler(int i, int i2) {
        this._byteBuffers = new byte[i][];
        this._charBuffers = new char[i2][];
    }

    public final byte[] allocByteBuffer(int i) {
        return allocByteBuffer(i, BYTE_READ_IO_BUFFER);
    }

    public byte[] allocByteBuffer(int i, int i2) {
        int byteBufferLength = byteBufferLength(i);
        if (i2 < byteBufferLength) {
            i2 = byteBufferLength;
        }
        byte[] bArr = this._byteBuffers[i];
        if (bArr == null || bArr.length < i2) {
            return balloc(i2);
        }
        this._byteBuffers[i] = null;
        return bArr;
    }

    public final char[] allocCharBuffer(int i) {
        return allocCharBuffer(i, BYTE_READ_IO_BUFFER);
    }

    public char[] allocCharBuffer(int i, int i2) {
        int charBufferLength = charBufferLength(i);
        if (i2 < charBufferLength) {
            i2 = charBufferLength;
        }
        char[] cArr = this._charBuffers[i];
        if (cArr == null || cArr.length < i2) {
            return calloc(i2);
        }
        this._charBuffers[i] = null;
        return cArr;
    }

    protected byte[] balloc(int i) {
        return new byte[i];
    }

    protected int byteBufferLength(int i) {
        return BYTE_BUFFER_LENGTHS[i];
    }

    protected char[] calloc(int i) {
        return new char[i];
    }

    protected int charBufferLength(int i) {
        return CHAR_BUFFER_LENGTHS[i];
    }

    public final void releaseByteBuffer(int i, byte[] bArr) {
        this._byteBuffers[i] = bArr;
    }

    public void releaseCharBuffer(int i, char[] cArr) {
        this._charBuffers[i] = cArr;
    }
}
