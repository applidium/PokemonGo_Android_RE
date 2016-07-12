package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.JsonEncoding;
import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.TextBuffer;

public class IOContext {
    protected byte[] _base64Buffer;
    protected final BufferRecycler _bufferRecycler;
    protected char[] _concatCBuffer;
    protected JsonEncoding _encoding;
    protected final boolean _managedResource;
    protected char[] _nameCopyBuffer;
    protected byte[] _readIOBuffer;
    protected final Object _sourceRef;
    protected char[] _tokenCBuffer;
    protected byte[] _writeEncodingBuffer;

    public IOContext(BufferRecycler bufferRecycler, Object obj, boolean z) {
        this._readIOBuffer = null;
        this._writeEncodingBuffer = null;
        this._base64Buffer = null;
        this._tokenCBuffer = null;
        this._concatCBuffer = null;
        this._nameCopyBuffer = null;
        this._bufferRecycler = bufferRecycler;
        this._sourceRef = obj;
        this._managedResource = z;
    }

    private IllegalArgumentException wrongBuf() {
        return new IllegalArgumentException("Trying to release buffer not owned by the context");
    }

    protected final void _verifyAlloc(Object obj) {
        if (obj != null) {
            throw new IllegalStateException("Trying to call same allocXxx() method second time");
        }
    }

    protected final void _verifyRelease(byte[] bArr, byte[] bArr2) {
        if (bArr != bArr2 && bArr.length <= bArr2.length) {
            throw wrongBuf();
        }
    }

    protected final void _verifyRelease(char[] cArr, char[] cArr2) {
        if (cArr != cArr2 && cArr.length <= cArr2.length) {
            throw wrongBuf();
        }
    }

    public byte[] allocBase64Buffer() {
        _verifyAlloc(this._base64Buffer);
        byte[] allocByteBuffer = this._bufferRecycler.allocByteBuffer(3);
        this._base64Buffer = allocByteBuffer;
        return allocByteBuffer;
    }

    public char[] allocConcatBuffer() {
        _verifyAlloc(this._concatCBuffer);
        char[] allocCharBuffer = this._bufferRecycler.allocCharBuffer(1);
        this._concatCBuffer = allocCharBuffer;
        return allocCharBuffer;
    }

    public char[] allocNameCopyBuffer(int i) {
        _verifyAlloc(this._nameCopyBuffer);
        char[] allocCharBuffer = this._bufferRecycler.allocCharBuffer(3, i);
        this._nameCopyBuffer = allocCharBuffer;
        return allocCharBuffer;
    }

    public byte[] allocReadIOBuffer() {
        _verifyAlloc(this._readIOBuffer);
        byte[] allocByteBuffer = this._bufferRecycler.allocByteBuffer(0);
        this._readIOBuffer = allocByteBuffer;
        return allocByteBuffer;
    }

    public byte[] allocReadIOBuffer(int i) {
        _verifyAlloc(this._readIOBuffer);
        byte[] allocByteBuffer = this._bufferRecycler.allocByteBuffer(0, i);
        this._readIOBuffer = allocByteBuffer;
        return allocByteBuffer;
    }

    public char[] allocTokenBuffer() {
        _verifyAlloc(this._tokenCBuffer);
        char[] allocCharBuffer = this._bufferRecycler.allocCharBuffer(0);
        this._tokenCBuffer = allocCharBuffer;
        return allocCharBuffer;
    }

    public char[] allocTokenBuffer(int i) {
        _verifyAlloc(this._tokenCBuffer);
        char[] allocCharBuffer = this._bufferRecycler.allocCharBuffer(0, i);
        this._tokenCBuffer = allocCharBuffer;
        return allocCharBuffer;
    }

    public byte[] allocWriteEncodingBuffer() {
        _verifyAlloc(this._writeEncodingBuffer);
        byte[] allocByteBuffer = this._bufferRecycler.allocByteBuffer(1);
        this._writeEncodingBuffer = allocByteBuffer;
        return allocByteBuffer;
    }

    public byte[] allocWriteEncodingBuffer(int i) {
        _verifyAlloc(this._writeEncodingBuffer);
        byte[] allocByteBuffer = this._bufferRecycler.allocByteBuffer(1, i);
        this._writeEncodingBuffer = allocByteBuffer;
        return allocByteBuffer;
    }

    public TextBuffer constructTextBuffer() {
        return new TextBuffer(this._bufferRecycler);
    }

    public JsonEncoding getEncoding() {
        return this._encoding;
    }

    public Object getSourceReference() {
        return this._sourceRef;
    }

    public boolean isResourceManaged() {
        return this._managedResource;
    }

    public void releaseBase64Buffer(byte[] bArr) {
        if (bArr != null) {
            _verifyRelease(bArr, this._base64Buffer);
            this._base64Buffer = null;
            this._bufferRecycler.releaseByteBuffer(3, bArr);
        }
    }

    public void releaseConcatBuffer(char[] cArr) {
        if (cArr != null) {
            _verifyRelease(cArr, this._concatCBuffer);
            this._concatCBuffer = null;
            this._bufferRecycler.releaseCharBuffer(1, cArr);
        }
    }

    public void releaseNameCopyBuffer(char[] cArr) {
        if (cArr != null) {
            _verifyRelease(cArr, this._nameCopyBuffer);
            this._nameCopyBuffer = null;
            this._bufferRecycler.releaseCharBuffer(3, cArr);
        }
    }

    public void releaseReadIOBuffer(byte[] bArr) {
        if (bArr != null) {
            _verifyRelease(bArr, this._readIOBuffer);
            this._readIOBuffer = null;
            this._bufferRecycler.releaseByteBuffer(0, bArr);
        }
    }

    public void releaseTokenBuffer(char[] cArr) {
        if (cArr != null) {
            _verifyRelease(cArr, this._tokenCBuffer);
            this._tokenCBuffer = null;
            this._bufferRecycler.releaseCharBuffer(0, cArr);
        }
    }

    public void releaseWriteEncodingBuffer(byte[] bArr) {
        if (bArr != null) {
            _verifyRelease(bArr, this._writeEncodingBuffer);
            this._writeEncodingBuffer = null;
            this._bufferRecycler.releaseByteBuffer(1, bArr);
        }
    }

    public void setEncoding(JsonEncoding jsonEncoding) {
        this._encoding = jsonEncoding;
    }

    public IOContext withEncoding(JsonEncoding jsonEncoding) {
        this._encoding = jsonEncoding;
        return this;
    }
}
