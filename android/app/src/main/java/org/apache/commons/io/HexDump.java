package org.apache.commons.io;

import java.io.IOException;
import java.io.OutputStream;

public class HexDump {
    public static final String EOL;
    private static final char[] _hexcodes;
    private static final int[] _shifts;

    static {
        EOL = System.getProperty("line.separator");
        _hexcodes = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        _shifts = new int[]{28, 24, 20, 16, 12, 8, 4, 0};
    }

    private static StringBuilder dump(StringBuilder stringBuilder, byte b) {
        for (int i = 0; i < 2; i++) {
            stringBuilder.append(_hexcodes[(b >> _shifts[i + 6]) & 15]);
        }
        return stringBuilder;
    }

    private static StringBuilder dump(StringBuilder stringBuilder, long j) {
        for (int i = 0; i < 8; i++) {
            stringBuilder.append(_hexcodes[((int) (j >> _shifts[i])) & 15]);
        }
        return stringBuilder;
    }

    public static void dump(byte[] bArr, long j, OutputStream outputStream, int i) throws IOException, ArrayIndexOutOfBoundsException, IllegalArgumentException {
        if (i < 0 || i >= bArr.length) {
            throw new ArrayIndexOutOfBoundsException("illegal index: " + i + " into array of length " + bArr.length);
        } else if (outputStream == null) {
            throw new IllegalArgumentException("cannot write to nullstream");
        } else {
            long j2 = ((long) i) + j;
            StringBuilder stringBuilder = new StringBuilder(74);
            while (i < bArr.length) {
                int i2;
                int length = bArr.length - i;
                if (length > 16) {
                    length = 16;
                }
                dump(stringBuilder, j2).append(' ');
                for (i2 = 0; i2 < 16; i2++) {
                    if (i2 < length) {
                        dump(stringBuilder, bArr[i2 + i]);
                    } else {
                        stringBuilder.append("  ");
                    }
                    stringBuilder.append(' ');
                }
                i2 = 0;
                while (i2 < length) {
                    if (bArr[i2 + i] < (byte) 32 || bArr[i2 + i] >= 127) {
                        stringBuilder.append(FilenameUtils.EXTENSION_SEPARATOR);
                    } else {
                        stringBuilder.append((char) bArr[i2 + i]);
                    }
                    i2++;
                }
                stringBuilder.append(EOL);
                outputStream.write(stringBuilder.toString().getBytes());
                outputStream.flush();
                stringBuilder.setLength(0);
                j2 += (long) length;
                i += 16;
            }
        }
    }
}
