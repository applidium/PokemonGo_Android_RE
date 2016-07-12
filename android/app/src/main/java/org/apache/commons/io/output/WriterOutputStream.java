package org.apache.commons.io.output;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;

public class WriterOutputStream extends OutputStream {
    private static final int DEFAULT_BUFFER_SIZE = 1024;
    private final CharsetDecoder decoder;
    private final ByteBuffer decoderIn;
    private final CharBuffer decoderOut;
    private final boolean writeImmediately;
    private final Writer writer;

    public WriterOutputStream(Writer writer) {
        this(writer, Charset.defaultCharset(), (int) DEFAULT_BUFFER_SIZE, false);
    }

    public WriterOutputStream(Writer writer, String str) {
        this(writer, str, (int) DEFAULT_BUFFER_SIZE, false);
    }

    public WriterOutputStream(Writer writer, String str, int i, boolean z) {
        this(writer, Charset.forName(str), i, z);
    }

    public WriterOutputStream(Writer writer, Charset charset) {
        this(writer, charset, (int) DEFAULT_BUFFER_SIZE, false);
    }

    public WriterOutputStream(Writer writer, Charset charset, int i, boolean z) {
        this(writer, charset.newDecoder().onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE).replaceWith("?"), i, z);
    }

    public WriterOutputStream(Writer writer, CharsetDecoder charsetDecoder) {
        this(writer, charsetDecoder, (int) DEFAULT_BUFFER_SIZE, false);
    }

    public WriterOutputStream(Writer writer, CharsetDecoder charsetDecoder, int i, boolean z) {
        this.decoderIn = ByteBuffer.allocate(AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        this.writer = writer;
        this.decoder = charsetDecoder;
        this.writeImmediately = z;
        this.decoderOut = CharBuffer.allocate(i);
    }

    private void flushOutput() throws IOException {
        if (this.decoderOut.position() > 0) {
            this.writer.write(this.decoderOut.array(), 0, this.decoderOut.position());
            this.decoderOut.rewind();
        }
    }

    private void processInput(boolean z) throws IOException {
        this.decoderIn.flip();
        while (true) {
            CoderResult decode = this.decoder.decode(this.decoderIn, this.decoderOut, z);
            if (!decode.isOverflow()) {
                break;
            }
            flushOutput();
        }
        if (decode.isUnderflow()) {
            this.decoderIn.compact();
            return;
        }
        throw new IOException("Unexpected coder result");
    }

    public void close() throws IOException {
        processInput(true);
        flushOutput();
        this.writer.close();
    }

    public void flush() throws IOException {
        flushOutput();
        this.writer.flush();
    }

    public void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }

    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int min = Math.min(i2, this.decoderIn.remaining());
            this.decoderIn.put(bArr, i, min);
            processInput(false);
            i2 -= min;
            i += min;
        }
        if (this.writeImmediately) {
            flushOutput();
        }
    }
}
