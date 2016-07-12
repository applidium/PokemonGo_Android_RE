package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.SerializableString;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.nio.ByteBuffer;

public class SerializedString implements SerializableString, Serializable {
    protected transient String _jdkSerializeValue;
    protected char[] _quotedChars;
    protected byte[] _quotedUTF8Ref;
    protected byte[] _unquotedUTF8Ref;
    protected final String _value;

    public SerializedString(String str) {
        if (str == null) {
            throw new IllegalStateException("Null String illegal for SerializedString");
        }
        this._value = str;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        this._jdkSerializeValue = objectInputStream.readUTF();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeUTF(this._value);
    }

    public int appendQuoted(char[] cArr, int i) {
        Object obj = this._quotedChars;
        if (obj == null) {
            obj = JsonStringEncoder.getInstance().quoteAsString(this._value);
            this._quotedChars = obj;
        }
        int length = obj.length;
        if (i + length > cArr.length) {
            return -1;
        }
        System.arraycopy(obj, 0, cArr, i, length);
        return length;
    }

    public int appendQuotedUTF8(byte[] bArr, int i) {
        Object obj = this._quotedUTF8Ref;
        if (obj == null) {
            obj = JsonStringEncoder.getInstance().quoteAsUTF8(this._value);
            this._quotedUTF8Ref = obj;
        }
        int length = obj.length;
        if (i + length > bArr.length) {
            return -1;
        }
        System.arraycopy(obj, 0, bArr, i, length);
        return length;
    }

    public int appendUnquoted(char[] cArr, int i) {
        String str = this._value;
        int length = str.length();
        if (i + length > cArr.length) {
            return -1;
        }
        str.getChars(0, length, cArr, i);
        return length;
    }

    public int appendUnquotedUTF8(byte[] bArr, int i) {
        Object obj = this._unquotedUTF8Ref;
        if (obj == null) {
            obj = JsonStringEncoder.getInstance().encodeAsUTF8(this._value);
            this._unquotedUTF8Ref = obj;
        }
        int length = obj.length;
        if (i + length > bArr.length) {
            return -1;
        }
        System.arraycopy(obj, 0, bArr, i, length);
        return length;
    }

    public final char[] asQuotedChars() {
        char[] cArr = this._quotedChars;
        if (cArr != null) {
            return cArr;
        }
        cArr = JsonStringEncoder.getInstance().quoteAsString(this._value);
        this._quotedChars = cArr;
        return cArr;
    }

    public final byte[] asQuotedUTF8() {
        byte[] bArr = this._quotedUTF8Ref;
        if (bArr != null) {
            return bArr;
        }
        bArr = JsonStringEncoder.getInstance().quoteAsUTF8(this._value);
        this._quotedUTF8Ref = bArr;
        return bArr;
    }

    public final byte[] asUnquotedUTF8() {
        byte[] bArr = this._unquotedUTF8Ref;
        if (bArr != null) {
            return bArr;
        }
        bArr = JsonStringEncoder.getInstance().encodeAsUTF8(this._value);
        this._unquotedUTF8Ref = bArr;
        return bArr;
    }

    public final int charLength() {
        return this._value.length();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        return this._value.equals(((SerializedString) obj)._value);
    }

    public final String getValue() {
        return this._value;
    }

    public final int hashCode() {
        return this._value.hashCode();
    }

    public int putQuotedUTF8(ByteBuffer byteBuffer) {
        byte[] bArr = this._quotedUTF8Ref;
        if (bArr == null) {
            bArr = JsonStringEncoder.getInstance().quoteAsUTF8(this._value);
            this._quotedUTF8Ref = bArr;
        }
        int length = bArr.length;
        if (length > byteBuffer.remaining()) {
            return -1;
        }
        byteBuffer.put(bArr, 0, length);
        return length;
    }

    public int putUnquotedUTF8(ByteBuffer byteBuffer) {
        byte[] bArr = this._unquotedUTF8Ref;
        if (bArr == null) {
            bArr = JsonStringEncoder.getInstance().encodeAsUTF8(this._value);
            this._unquotedUTF8Ref = bArr;
        }
        int length = bArr.length;
        if (length > byteBuffer.remaining()) {
            return -1;
        }
        byteBuffer.put(bArr, 0, length);
        return length;
    }

    protected Object readResolve() {
        return new SerializedString(this._jdkSerializeValue);
    }

    public final String toString() {
        return this._value;
    }

    public int writeQuotedUTF8(OutputStream outputStream) throws IOException {
        byte[] bArr = this._quotedUTF8Ref;
        if (bArr == null) {
            bArr = JsonStringEncoder.getInstance().quoteAsUTF8(this._value);
            this._quotedUTF8Ref = bArr;
        }
        int length = bArr.length;
        outputStream.write(bArr, 0, length);
        return length;
    }

    public int writeUnquotedUTF8(OutputStream outputStream) throws IOException {
        byte[] bArr = this._unquotedUTF8Ref;
        if (bArr == null) {
            bArr = JsonStringEncoder.getInstance().encodeAsUTF8(this._value);
            this._unquotedUTF8Ref = bArr;
        }
        int length = bArr.length;
        outputStream.write(bArr, 0, length);
        return length;
    }
}
