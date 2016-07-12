package org.apache.commons.io.input;

import com.voxelbusters.nativeplugins.defines.Keys.Mime;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.ByteOrderMark;

public class XmlStreamReader extends Reader {
    private static final ByteOrderMark[] BOMS;
    private static final int BUFFER_SIZE = 4096;
    private static final Pattern CHARSET_PATTERN;
    private static final String EBCDIC = "CP1047";
    public static final Pattern ENCODING_PATTERN;
    private static final String HTTP_EX_1 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], BOM must be NULL";
    private static final String HTTP_EX_2 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], encoding mismatch";
    private static final String HTTP_EX_3 = "Invalid encoding, CT-MIME [{0}] CT-Enc [{1}] BOM [{2}] XML guess [{3}] XML prolog [{4}], Invalid MIME";
    private static final String RAW_EX_1 = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] encoding mismatch";
    private static final String RAW_EX_2 = "Invalid encoding, BOM [{0}] XML guess [{1}] XML prolog [{2}] unknown BOM";
    private static final String US_ASCII = "US-ASCII";
    private static final String UTF_16 = "UTF-16";
    private static final String UTF_16BE = "UTF-16BE";
    private static final String UTF_16LE = "UTF-16LE";
    private static final String UTF_32 = "UTF-32";
    private static final String UTF_32BE = "UTF-32BE";
    private static final String UTF_32LE = "UTF-32LE";
    private static final String UTF_8 = "UTF-8";
    private static final ByteOrderMark[] XML_GUESS_BYTES;
    private final String defaultEncoding;
    private final String encoding;
    private final Reader reader;

    static {
        BOMS = new ByteOrderMark[]{ByteOrderMark.UTF_8, ByteOrderMark.UTF_16BE, ByteOrderMark.UTF_16LE, ByteOrderMark.UTF_32BE, ByteOrderMark.UTF_32LE};
        XML_GUESS_BYTES = new ByteOrderMark[]{new ByteOrderMark(UTF_8, 60, 63, 120, 109), new ByteOrderMark(UTF_16BE, 0, 60, 0, 63), new ByteOrderMark(UTF_16LE, 60, 0, 63, 0), new ByteOrderMark(UTF_32BE, 0, 0, 0, 60, 0, 0, 0, 63, 0, 0, 0, 120, 0, 0, 0, 109), new ByteOrderMark(UTF_32LE, 60, 0, 0, 0, 63, 0, 0, 0, 120, 0, 0, 0, 109, 0, 0, 0), new ByteOrderMark(EBCDIC, 76, 111, 167, 148)};
        CHARSET_PATTERN = Pattern.compile("charset=[\"']?([.[^; \"']]*)[\"']?");
        ENCODING_PATTERN = Pattern.compile("<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:'.[^']*'))", 8);
    }

    public XmlStreamReader(File file) throws IOException {
        this(new FileInputStream(file));
    }

    public XmlStreamReader(InputStream inputStream) throws IOException {
        this(inputStream, true);
    }

    public XmlStreamReader(InputStream inputStream, String str) throws IOException {
        this(inputStream, str, true);
    }

    public XmlStreamReader(InputStream inputStream, String str, boolean z) throws IOException {
        this(inputStream, str, z, null);
    }

    public XmlStreamReader(InputStream inputStream, String str, boolean z, String str2) throws IOException {
        this.defaultEncoding = str2;
        InputStream bOMInputStream = new BOMInputStream(new BufferedInputStream(inputStream, BUFFER_SIZE), false, BOMS);
        InputStream bOMInputStream2 = new BOMInputStream(bOMInputStream, true, XML_GUESS_BYTES);
        this.encoding = doHttpStream(bOMInputStream, bOMInputStream2, str, z);
        this.reader = new InputStreamReader(bOMInputStream2, this.encoding);
    }

    public XmlStreamReader(InputStream inputStream, boolean z) throws IOException {
        this(inputStream, z, null);
    }

    public XmlStreamReader(InputStream inputStream, boolean z, String str) throws IOException {
        this.defaultEncoding = str;
        InputStream bOMInputStream = new BOMInputStream(new BufferedInputStream(inputStream, BUFFER_SIZE), false, BOMS);
        InputStream bOMInputStream2 = new BOMInputStream(bOMInputStream, true, XML_GUESS_BYTES);
        this.encoding = doRawStream(bOMInputStream, bOMInputStream2, z);
        this.reader = new InputStreamReader(bOMInputStream2, this.encoding);
    }

    public XmlStreamReader(URL url) throws IOException {
        this(url.openConnection(), null);
    }

    public XmlStreamReader(URLConnection uRLConnection, String str) throws IOException {
        this.defaultEncoding = str;
        String contentType = uRLConnection.getContentType();
        InputStream bOMInputStream = new BOMInputStream(new BufferedInputStream(uRLConnection.getInputStream(), BUFFER_SIZE), false, BOMS);
        InputStream bOMInputStream2 = new BOMInputStream(bOMInputStream, true, XML_GUESS_BYTES);
        if ((uRLConnection instanceof HttpURLConnection) || contentType != null) {
            this.encoding = doHttpStream(bOMInputStream, bOMInputStream2, contentType, true);
        } else {
            this.encoding = doRawStream(bOMInputStream, bOMInputStream2, true);
        }
        this.reader = new InputStreamReader(bOMInputStream2, this.encoding);
    }

    private String doHttpStream(BOMInputStream bOMInputStream, BOMInputStream bOMInputStream2, String str, boolean z) throws IOException {
        String bOMCharsetName = bOMInputStream.getBOMCharsetName();
        String bOMCharsetName2 = bOMInputStream2.getBOMCharsetName();
        try {
            return calculateHttpEncoding(str, bOMCharsetName, bOMCharsetName2, getXmlProlog(bOMInputStream2, bOMCharsetName2), z);
        } catch (XmlStreamReaderException e) {
            if (z) {
                return doLenientDetection(str, e);
            }
            throw e;
        }
    }

    private String doLenientDetection(String str, XmlStreamReaderException xmlStreamReaderException) throws IOException {
        if (str != null && str.startsWith(Mime.HTML_TEXT)) {
            try {
                return calculateHttpEncoding("text/xml" + str.substring(Mime.HTML_TEXT.length()), xmlStreamReaderException.getBomEncoding(), xmlStreamReaderException.getXmlGuessEncoding(), xmlStreamReaderException.getXmlEncoding(), true);
            } catch (XmlStreamReaderException e) {
                xmlStreamReaderException = e;
            }
        }
        String xmlEncoding = xmlStreamReaderException.getXmlEncoding();
        if (xmlEncoding == null) {
            xmlEncoding = xmlStreamReaderException.getContentTypeEncoding();
        }
        return xmlEncoding == null ? this.defaultEncoding == null ? UTF_8 : this.defaultEncoding : xmlEncoding;
    }

    private String doRawStream(BOMInputStream bOMInputStream, BOMInputStream bOMInputStream2, boolean z) throws IOException {
        String bOMCharsetName = bOMInputStream.getBOMCharsetName();
        String bOMCharsetName2 = bOMInputStream2.getBOMCharsetName();
        try {
            return calculateRawEncoding(bOMCharsetName, bOMCharsetName2, getXmlProlog(bOMInputStream2, bOMCharsetName2));
        } catch (XmlStreamReaderException e) {
            if (z) {
                return doLenientDetection(null, e);
            }
            throw e;
        }
    }

    static String getContentTypeEncoding(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(";");
        if (indexOf <= -1) {
            return null;
        }
        Matcher matcher = CHARSET_PATTERN.matcher(str.substring(indexOf + 1));
        String group = matcher.find() ? matcher.group(1) : null;
        return group != null ? group.toUpperCase(Locale.US) : null;
    }

    static String getContentTypeMime(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf(";");
        if (indexOf >= 0) {
            str = str.substring(0, indexOf);
        }
        return str.trim();
    }

    private static String getXmlProlog(InputStream inputStream, String str) throws IOException {
        if (str == null) {
            return null;
        }
        byte[] bArr = new byte[BUFFER_SIZE];
        inputStream.mark(BUFFER_SIZE);
        int read = inputStream.read(bArr, 0, BUFFER_SIZE);
        int i = -1;
        int i2 = BUFFER_SIZE;
        int i3 = 0;
        String str2 = null;
        while (read != -1 && i == -1 && i3 < BUFFER_SIZE) {
            i3 += read;
            i2 -= read;
            read = inputStream.read(bArr, i3, i2);
            str2 = new String(bArr, 0, i3, str);
            i = str2.indexOf(62);
        }
        if (i == -1) {
            if (read == -1) {
                throw new IOException("Unexpected end of XML stream");
            }
            throw new IOException("XML prolog or ROOT element not found on first " + i3 + " bytes");
        } else if (i3 <= 0) {
            return null;
        } else {
            inputStream.reset();
            BufferedReader bufferedReader = new BufferedReader(new StringReader(str2.substring(0, i + 1)));
            CharSequence stringBuffer = new StringBuffer();
            for (str2 = bufferedReader.readLine(); str2 != null; str2 = bufferedReader.readLine()) {
                stringBuffer.append(str2);
            }
            Matcher matcher = ENCODING_PATTERN.matcher(stringBuffer);
            if (!matcher.find()) {
                return null;
            }
            String toUpperCase = matcher.group(1).toUpperCase();
            return toUpperCase.substring(1, toUpperCase.length() - 1);
        }
    }

    static boolean isAppXml(String str) {
        return str != null && (str.equals("application/xml") || str.equals("application/xml-dtd") || str.equals("application/xml-external-parsed-entity") || (str.startsWith("application/") && str.endsWith("+xml")));
    }

    static boolean isTextXml(String str) {
        return str != null && (str.equals("text/xml") || str.equals("text/xml-external-parsed-entity") || (str.startsWith("text/") && str.endsWith("+xml")));
    }

    String calculateHttpEncoding(String str, String str2, String str3, String str4, boolean z) throws IOException {
        if (z && str4 != null) {
            return str4;
        }
        String contentTypeMime = getContentTypeMime(str);
        String contentTypeEncoding = getContentTypeEncoding(str);
        boolean isAppXml = isAppXml(contentTypeMime);
        boolean isTextXml = isTextXml(contentTypeMime);
        if (!isAppXml && !isTextXml) {
            throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_3, new Object[]{contentTypeMime, contentTypeEncoding, str2, str3, str4}), contentTypeMime, contentTypeEncoding, str2, str3, str4);
        } else if (contentTypeEncoding == null) {
            return isAppXml ? calculateRawEncoding(str2, str3, str4) : this.defaultEncoding == null ? US_ASCII : this.defaultEncoding;
        } else {
            if (contentTypeEncoding.equals(UTF_16BE) || contentTypeEncoding.equals(UTF_16LE)) {
                if (str2 == null) {
                    return contentTypeEncoding;
                }
                throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_1, new Object[]{contentTypeMime, contentTypeEncoding, str2, str3, str4}), contentTypeMime, contentTypeEncoding, str2, str3, str4);
            } else if (contentTypeEncoding.equals(UTF_16)) {
                if (str2 != null && str2.startsWith(UTF_16)) {
                    return str2;
                }
                throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_2, new Object[]{contentTypeMime, contentTypeEncoding, str2, str3, str4}), contentTypeMime, contentTypeEncoding, str2, str3, str4);
            } else if (contentTypeEncoding.equals(UTF_32BE) || contentTypeEncoding.equals(UTF_32LE)) {
                if (str2 == null) {
                    return contentTypeEncoding;
                }
                throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_1, new Object[]{contentTypeMime, contentTypeEncoding, str2, str3, str4}), contentTypeMime, contentTypeEncoding, str2, str3, str4);
            } else if (!contentTypeEncoding.equals(UTF_32)) {
                return contentTypeEncoding;
            } else {
                if (str2 != null && str2.startsWith(UTF_32)) {
                    return str2;
                }
                throw new XmlStreamReaderException(MessageFormat.format(HTTP_EX_2, new Object[]{contentTypeMime, contentTypeEncoding, str2, str3, str4}), contentTypeMime, contentTypeEncoding, str2, str3, str4);
            }
        }
    }

    String calculateRawEncoding(String str, String str2, String str3) throws IOException {
        if (str == null) {
            if (str2 != null && str3 != null) {
                return (str3.equals(UTF_16) && (str2.equals(UTF_16BE) || str2.equals(UTF_16LE))) ? str2 : str3;
            } else {
                return this.defaultEncoding == null ? UTF_8 : this.defaultEncoding;
            }
        } else if (str.equals(UTF_8)) {
            if (str2 != null && !str2.equals(UTF_8)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, new Object[]{str, str2, str3}), str, str2, str3);
            } else if (str3 == null || str3.equals(UTF_8)) {
                return str;
            } else {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, new Object[]{str, str2, str3}), str, str2, str3);
            }
        } else if (str.equals(UTF_16BE) || str.equals(UTF_16LE)) {
            if (str2 != null && !str2.equals(str)) {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, new Object[]{str, str2, str3}), str, str2, str3);
            } else if (str3 == null || str3.equals(UTF_16) || str3.equals(str)) {
                return str;
            } else {
                throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, new Object[]{str, str2, str3}), str, str2, str3);
            }
        } else if (!str.equals(UTF_32BE) && !str.equals(UTF_32LE)) {
            throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_2, new Object[]{str, str2, str3}), str, str2, str3);
        } else if (str2 != null && !str2.equals(str)) {
            throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, new Object[]{str, str2, str3}), str, str2, str3);
        } else if (str3 == null || str3.equals(UTF_32) || str3.equals(str)) {
            return str;
        } else {
            throw new XmlStreamReaderException(MessageFormat.format(RAW_EX_1, new Object[]{str, str2, str3}), str, str2, str3);
        }
    }

    public void close() throws IOException {
        this.reader.close();
    }

    public String getDefaultEncoding() {
        return this.defaultEncoding;
    }

    public String getEncoding() {
        return this.encoding;
    }

    public int read(char[] cArr, int i, int i2) throws IOException {
        return this.reader.read(cArr, i, i2);
    }
}
