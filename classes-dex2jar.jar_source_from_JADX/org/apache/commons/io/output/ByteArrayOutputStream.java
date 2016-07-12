package org.apache.commons.io.output;

import com.google.android.gms.location.places.Place;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.SequenceInputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import org.apache.commons.io.input.ClosedInputStream;

public class ByteArrayOutputStream extends OutputStream {
    private static final byte[] EMPTY_BYTE_ARRAY;
    private final List<byte[]> buffers;
    private int count;
    private byte[] currentBuffer;
    private int currentBufferIndex;
    private int filledBufferSum;

    static {
        EMPTY_BYTE_ARRAY = new byte[0];
    }

    public ByteArrayOutputStream() {
        this(Place.TYPE_SUBLOCALITY_LEVEL_2);
    }

    public ByteArrayOutputStream(int i) {
        this.buffers = new ArrayList();
        if (i < 0) {
            throw new IllegalArgumentException("Negative initial size: " + i);
        }
        synchronized (this) {
            needNewBuffer(i);
        }
    }

    private void needNewBuffer(int i) {
        if (this.currentBufferIndex < this.buffers.size() - 1) {
            this.filledBufferSum += this.currentBuffer.length;
            this.currentBufferIndex++;
            this.currentBuffer = (byte[]) this.buffers.get(this.currentBufferIndex);
            return;
        }
        if (this.currentBuffer == null) {
            this.filledBufferSum = 0;
        } else {
            i = Math.max(this.currentBuffer.length << 1, i - this.filledBufferSum);
            this.filledBufferSum += this.currentBuffer.length;
        }
        this.currentBufferIndex++;
        this.currentBuffer = new byte[i];
        this.buffers.add(this.currentBuffer);
    }

    private InputStream toBufferedInputStream() {
        int i = this.count;
        if (i == 0) {
            return new ClosedInputStream();
        }
        Collection arrayList = new ArrayList(this.buffers.size());
        int i2 = i;
        for (byte[] bArr : this.buffers) {
            int min = Math.min(bArr.length, i2);
            arrayList.add(new ByteArrayInputStream(bArr, 0, min));
            i = i2 - min;
            if (i == 0) {
                break;
            }
            i2 = i;
        }
        return new SequenceInputStream(Collections.enumeration(arrayList));
    }

    public static InputStream toBufferedInputStream(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(inputStream);
        return byteArrayOutputStream.toBufferedInputStream();
    }

    public void close() throws IOException {
    }

    public void reset() {
        synchronized (this) {
            this.count = 0;
            this.filledBufferSum = 0;
            this.currentBufferIndex = 0;
            this.currentBuffer = (byte[]) this.buffers.get(this.currentBufferIndex);
        }
    }

    public int size() {
        int i;
        synchronized (this) {
            i = this.count;
        }
        return i;
    }

    public byte[] toByteArray() {
        byte[] bArr;
        synchronized (this) {
            int i = this.count;
            if (i == 0) {
                bArr = EMPTY_BYTE_ARRAY;
            } else {
                Object obj;
                Object obj2 = new byte[i];
                int i2 = i;
                i = 0;
                for (byte[] bArr2 : this.buffers) {
                    int min = Math.min(bArr2.length, i2);
                    System.arraycopy(bArr2, 0, obj2, i, min);
                    int i3 = i + min;
                    i = i2 - min;
                    if (i == 0) {
                        obj = obj2;
                        break;
                    }
                    i2 = i;
                    i = i3;
                }
                obj = obj2;
            }
        }
        return bArr2;
    }

    public String toString() {
        return new String(toByteArray());
    }

    public String toString(String str) throws UnsupportedEncodingException {
        return new String(toByteArray(), str);
    }

    public int write(InputStream inputStream) throws IOException {
        int i;
        synchronized (this) {
            i = this.count - this.filledBufferSum;
            int i2 = i;
            int read = inputStream.read(this.currentBuffer, i, this.currentBuffer.length - i);
            i = 0;
            while (read != -1) {
                int i3 = i + read;
                i = i2 + read;
                this.count += read;
                if (i == this.currentBuffer.length) {
                    needNewBuffer(this.currentBuffer.length);
                    i = 0;
                }
                read = inputStream.read(this.currentBuffer, i, this.currentBuffer.length - i);
                i2 = i;
                i = i3;
            }
        }
        return i;
    }

    public void write(int i) {
        synchronized (this) {
            int i2 = this.count - this.filledBufferSum;
            if (i2 == this.currentBuffer.length) {
                needNewBuffer(this.count + 1);
                i2 = 0;
            }
            this.currentBuffer[i2] = (byte) i;
            this.count++;
        }
    }

    public void write(byte[] bArr, int i, int i2) {
        if (i < 0 || i > bArr.length || i2 < 0 || i + i2 > bArr.length || i + i2 < 0) {
            throw new IndexOutOfBoundsException();
        } else if (i2 != 0) {
            synchronized (this) {
                int i3 = this.count + i2;
                int i4 = this.count - this.filledBufferSum;
                int i5 = i2;
                while (i5 > 0) {
                    int min = Math.min(i5, this.currentBuffer.length - i4);
                    System.arraycopy(bArr, (i + i2) - i5, this.currentBuffer, i4, min);
                    i5 -= min;
                    if (i5 > 0) {
                        needNewBuffer(i3);
                        i4 = 0;
                    }
                }
                this.count = i3;
            }
        }
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        synchronized (this) {
            int i = this.count;
            int i2 = i;
            for (byte[] bArr : this.buffers) {
                int min = Math.min(bArr.length, i2);
                outputStream.write(bArr, 0, min);
                i = i2 - min;
                if (i == 0) {
                    break;
                }
                i2 = i;
            }
        }
    }
}
