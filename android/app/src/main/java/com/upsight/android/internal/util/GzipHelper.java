package com.upsight.android.internal.util;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class GzipHelper {
    public static byte[] compress(String str) throws IOException {
        if (str == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(new BufferedOutputStream(byteArrayOutputStream));
        try {
            gZIPOutputStream.write(str.getBytes());
            return byteArrayOutputStream.toByteArray();
        } finally {
            gZIPOutputStream.close();
        }
    }

    public static String decompress(byte[] bArr) throws IOException {
        if (bArr == null) {
            return null;
        }
        InputStream gZIPInputStream = new GZIPInputStream(new ByteArrayInputStream(bArr));
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(gZIPInputStream));
        StringBuilder stringBuilder = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                stringBuilder.append(readLine);
            } finally {
                gZIPInputStream.close();
            }
        }
        return stringBuilder.toString();
    }
}
