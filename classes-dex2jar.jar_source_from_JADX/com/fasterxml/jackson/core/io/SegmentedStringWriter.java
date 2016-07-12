package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.Writer;

public final class SegmentedStringWriter extends Writer {
    protected final TextBuffer _buffer;

    public SegmentedStringWriter(BufferRecycler bufferRecycler) {
        this._buffer = new TextBuffer(bufferRecycler);
    }

    public Writer append(char c) {
        write((int) c);
        return this;
    }

    public Writer append(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        this._buffer.append(charSequence2, 0, charSequence2.length());
        return this;
    }

    public Writer append(CharSequence charSequence, int i, int i2) {
        String charSequence2 = charSequence.subSequence(i, i2).toString();
        this._buffer.append(charSequence2, 0, charSequence2.length());
        return this;
    }

    public void close() {
    }

    public void flush() {
    }

    public String getAndClear() {
        String contentsAsString = this._buffer.contentsAsString();
        this._buffer.releaseBuffers();
        return contentsAsString;
    }

    public void write(int i) {
        this._buffer.append((char) i);
    }

    public void write(String str) {
        this._buffer.append(str, 0, str.length());
    }

    public void write(String str, int i, int i2) {
        this._buffer.append(str, i, i2);
    }

    public void write(char[] cArr) {
        this._buffer.append(cArr, 0, cArr.length);
    }

    public void write(char[] cArr, int i, int i2) {
        this._buffer.append(cArr, i, i2);
    }
}
