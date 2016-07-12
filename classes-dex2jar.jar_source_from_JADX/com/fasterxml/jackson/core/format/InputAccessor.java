package com.fasterxml.jackson.core.format;

import com.fasterxml.jackson.core.JsonFactory;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

public interface InputAccessor {

    public static class Std implements InputAccessor {
        protected final byte[] _buffer;
        protected int _bufferedEnd;
        protected final int _bufferedStart;
        protected final InputStream _in;
        protected int _ptr;

        public Std(InputStream inputStream, byte[] bArr) {
            this._in = inputStream;
            this._buffer = bArr;
            this._bufferedStart = 0;
            this._ptr = 0;
            this._bufferedEnd = 0;
        }

        public Std(byte[] bArr) {
            this._in = null;
            this._buffer = bArr;
            this._bufferedStart = 0;
            this._bufferedEnd = bArr.length;
        }

        public Std(byte[] bArr, int i, int i2) {
            this._in = null;
            this._buffer = bArr;
            this._ptr = i;
            this._bufferedStart = i;
            this._bufferedEnd = i + i2;
        }

        public DataFormatMatcher createMatcher(JsonFactory jsonFactory, MatchStrength matchStrength) {
            return new DataFormatMatcher(this._in, this._buffer, this._bufferedStart, this._bufferedEnd - this._bufferedStart, jsonFactory, matchStrength);
        }

        public boolean hasMoreBytes() throws IOException {
            if (this._ptr < this._bufferedEnd) {
                return true;
            }
            if (this._in == null) {
                return false;
            }
            int length = this._buffer.length - this._ptr;
            if (length < 1) {
                return false;
            }
            length = this._in.read(this._buffer, this._ptr, length);
            if (length <= 0) {
                return false;
            }
            this._bufferedEnd += length;
            return true;
        }

        public byte nextByte() throws IOException {
            if (this._ptr < this._bufferedEnd || hasMoreBytes()) {
                byte[] bArr = this._buffer;
                int i = this._ptr;
                this._ptr = i + 1;
                return bArr[i];
            }
            throw new EOFException("Failed auto-detect: could not read more than " + this._ptr + " bytes (max buffer size: " + this._buffer.length + ")");
        }

        public void reset() {
            this._ptr = this._bufferedStart;
        }
    }

    boolean hasMoreBytes() throws IOException;

    byte nextByte() throws IOException;

    void reset();
}
