package org.apache.commons.io.output;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.input.XmlStreamReader;

public class XmlStreamWriter extends Writer {
    private static final int BUFFER_SIZE = 4096;
    static final Pattern ENCODING_PATTERN;
    private final String defaultEncoding;
    private String encoding;
    private final OutputStream out;
    private Writer writer;
    private StringWriter xmlPrologWriter;

    static {
        ENCODING_PATTERN = XmlStreamReader.ENCODING_PATTERN;
    }

    public XmlStreamWriter(File file) throws FileNotFoundException {
        this(file, null);
    }

    public XmlStreamWriter(File file, String str) throws FileNotFoundException {
        this(new FileOutputStream(file), str);
    }

    public XmlStreamWriter(OutputStream outputStream) {
        this(outputStream, null);
    }

    public XmlStreamWriter(OutputStream outputStream, String str) {
        this.xmlPrologWriter = new StringWriter(BUFFER_SIZE);
        this.out = outputStream;
        if (str == null) {
            str = "UTF-8";
        }
        this.defaultEncoding = str;
    }

    private void detectEncoding(char[] cArr, int i, int i2) throws IOException {
        StringBuffer buffer = this.xmlPrologWriter.getBuffer();
        int length = buffer.length() + i2 > BUFFER_SIZE ? 4096 - buffer.length() : i2;
        this.xmlPrologWriter.write(cArr, i, length);
        if (buffer.length() >= 5) {
            if (buffer.substring(0, 5).equals("<?xml")) {
                int indexOf = buffer.indexOf("?>");
                if (indexOf > 0) {
                    Matcher matcher = ENCODING_PATTERN.matcher(buffer.substring(0, indexOf));
                    if (matcher.find()) {
                        this.encoding = matcher.group(1).toUpperCase();
                        this.encoding = this.encoding.substring(1, this.encoding.length() - 1);
                    } else {
                        this.encoding = this.defaultEncoding;
                    }
                } else if (buffer.length() >= BUFFER_SIZE) {
                    this.encoding = this.defaultEncoding;
                }
            } else {
                this.encoding = this.defaultEncoding;
            }
            if (this.encoding != null) {
                this.xmlPrologWriter = null;
                this.writer = new OutputStreamWriter(this.out, this.encoding);
                this.writer.write(buffer.toString());
                if (i2 > length) {
                    this.writer.write(cArr, i + length, i2 - length);
                }
            }
        }
    }

    public void close() throws IOException {
        if (this.writer == null) {
            this.encoding = this.defaultEncoding;
            this.writer = new OutputStreamWriter(this.out, this.encoding);
            this.writer.write(this.xmlPrologWriter.toString());
        }
        this.writer.close();
    }

    public void flush() throws IOException {
        if (this.writer != null) {
            this.writer.flush();
        }
    }

    public String getDefaultEncoding() {
        return this.defaultEncoding;
    }

    public String getEncoding() {
        return this.encoding;
    }

    public void write(char[] cArr, int i, int i2) throws IOException {
        if (this.xmlPrologWriter != null) {
            detectEncoding(cArr, i, i2);
        } else {
            this.writer.write(cArr, i, i2);
        }
    }
}
