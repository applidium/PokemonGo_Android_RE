package org.apache.commons.io;

import android.support.v4.view.MotionEventCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class EndianUtils {
    private static int read(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (-1 != read) {
            return read;
        }
        throw new EOFException("Unexpected EOF reached");
    }

    public static double readSwappedDouble(InputStream inputStream) throws IOException {
        return Double.longBitsToDouble(readSwappedLong(inputStream));
    }

    public static double readSwappedDouble(byte[] bArr, int i) {
        return Double.longBitsToDouble(readSwappedLong(bArr, i));
    }

    public static float readSwappedFloat(InputStream inputStream) throws IOException {
        return Float.intBitsToFloat(readSwappedInteger(inputStream));
    }

    public static float readSwappedFloat(byte[] bArr, int i) {
        return Float.intBitsToFloat(readSwappedInteger(bArr, i));
    }

    public static int readSwappedInteger(InputStream inputStream) throws IOException {
        return ((((read(inputStream) & MotionEventCompat.ACTION_MASK) << 0) + ((read(inputStream) & MotionEventCompat.ACTION_MASK) << 8)) + ((read(inputStream) & MotionEventCompat.ACTION_MASK) << 16)) + ((read(inputStream) & MotionEventCompat.ACTION_MASK) << 24);
    }

    public static int readSwappedInteger(byte[] bArr, int i) {
        return ((((bArr[i + 0] & MotionEventCompat.ACTION_MASK) << 0) + ((bArr[i + 1] & MotionEventCompat.ACTION_MASK) << 8)) + ((bArr[i + 2] & MotionEventCompat.ACTION_MASK) << 16)) + ((bArr[i + 3] & MotionEventCompat.ACTION_MASK) << 24);
    }

    public static long readSwappedLong(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) read(inputStream);
        }
        return readSwappedLong(bArr, 0);
    }

    public static long readSwappedLong(byte[] bArr, int i) {
        return (((long) (((((bArr[i + 0] & MotionEventCompat.ACTION_MASK) << 0) + ((bArr[i + 1] & MotionEventCompat.ACTION_MASK) << 8)) + ((bArr[i + 2] & MotionEventCompat.ACTION_MASK) << 16)) + ((bArr[i + 3] & MotionEventCompat.ACTION_MASK) << 24))) & 4294967295L) + (((long) (((((bArr[i + 4] & MotionEventCompat.ACTION_MASK) << 0) + ((bArr[i + 5] & MotionEventCompat.ACTION_MASK) << 8)) + ((bArr[i + 6] & MotionEventCompat.ACTION_MASK) << 16)) + ((bArr[i + 7] & MotionEventCompat.ACTION_MASK) << 24))) << 32);
    }

    public static short readSwappedShort(InputStream inputStream) throws IOException {
        return (short) (((read(inputStream) & MotionEventCompat.ACTION_MASK) << 0) + ((read(inputStream) & MotionEventCompat.ACTION_MASK) << 8));
    }

    public static short readSwappedShort(byte[] bArr, int i) {
        return (short) (((bArr[i + 0] & MotionEventCompat.ACTION_MASK) << 0) + ((bArr[i + 1] & MotionEventCompat.ACTION_MASK) << 8));
    }

    public static long readSwappedUnsignedInteger(InputStream inputStream) throws IOException {
        return (((long) ((((read(inputStream) & MotionEventCompat.ACTION_MASK) << 0) + ((read(inputStream) & MotionEventCompat.ACTION_MASK) << 8)) + ((read(inputStream) & MotionEventCompat.ACTION_MASK) << 16))) & 4294967295L) + (((long) (read(inputStream) & MotionEventCompat.ACTION_MASK)) << 24);
    }

    public static long readSwappedUnsignedInteger(byte[] bArr, int i) {
        return (((long) ((((bArr[i + 0] & MotionEventCompat.ACTION_MASK) << 0) + ((bArr[i + 1] & MotionEventCompat.ACTION_MASK) << 8)) + ((bArr[i + 2] & MotionEventCompat.ACTION_MASK) << 16))) & 4294967295L) + (((long) (bArr[i + 3] & MotionEventCompat.ACTION_MASK)) << 24);
    }

    public static int readSwappedUnsignedShort(InputStream inputStream) throws IOException {
        return ((read(inputStream) & MotionEventCompat.ACTION_MASK) << 0) + ((read(inputStream) & MotionEventCompat.ACTION_MASK) << 8);
    }

    public static int readSwappedUnsignedShort(byte[] bArr, int i) {
        return ((bArr[i + 0] & MotionEventCompat.ACTION_MASK) << 0) + ((bArr[i + 1] & MotionEventCompat.ACTION_MASK) << 8);
    }

    public static double swapDouble(double d) {
        return Double.longBitsToDouble(swapLong(Double.doubleToLongBits(d)));
    }

    public static float swapFloat(float f) {
        return Float.intBitsToFloat(swapInteger(Float.floatToIntBits(f)));
    }

    public static int swapInteger(int i) {
        return (((((i >> 0) & MotionEventCompat.ACTION_MASK) << 24) + (((i >> 8) & MotionEventCompat.ACTION_MASK) << 16)) + (((i >> 16) & MotionEventCompat.ACTION_MASK) << 8)) + (((i >> 24) & MotionEventCompat.ACTION_MASK) << 0);
    }

    public static long swapLong(long j) {
        return (((((((((j >> 0) & 255) << 56) + (((j >> 8) & 255) << 48)) + (((j >> 16) & 255) << 40)) + (((j >> 24) & 255) << 32)) + (((j >> 32) & 255) << 24)) + (((j >> 40) & 255) << 16)) + (((j >> 48) & 255) << 8)) + (((j >> 56) & 255) << 0);
    }

    public static short swapShort(short s) {
        return (short) ((((s >> 0) & MotionEventCompat.ACTION_MASK) << 8) + (((s >> 8) & MotionEventCompat.ACTION_MASK) << 0));
    }

    public static void writeSwappedDouble(OutputStream outputStream, double d) throws IOException {
        writeSwappedLong(outputStream, Double.doubleToLongBits(d));
    }

    public static void writeSwappedDouble(byte[] bArr, int i, double d) {
        writeSwappedLong(bArr, i, Double.doubleToLongBits(d));
    }

    public static void writeSwappedFloat(OutputStream outputStream, float f) throws IOException {
        writeSwappedInteger(outputStream, Float.floatToIntBits(f));
    }

    public static void writeSwappedFloat(byte[] bArr, int i, float f) {
        writeSwappedInteger(bArr, i, Float.floatToIntBits(f));
    }

    public static void writeSwappedInteger(OutputStream outputStream, int i) throws IOException {
        outputStream.write((byte) ((i >> 0) & MotionEventCompat.ACTION_MASK));
        outputStream.write((byte) ((i >> 8) & MotionEventCompat.ACTION_MASK));
        outputStream.write((byte) ((i >> 16) & MotionEventCompat.ACTION_MASK));
        outputStream.write((byte) ((i >> 24) & MotionEventCompat.ACTION_MASK));
    }

    public static void writeSwappedInteger(byte[] bArr, int i, int i2) {
        bArr[i + 0] = (byte) ((i2 >> 0) & MotionEventCompat.ACTION_MASK);
        bArr[i + 1] = (byte) ((i2 >> 8) & MotionEventCompat.ACTION_MASK);
        bArr[i + 2] = (byte) ((i2 >> 16) & MotionEventCompat.ACTION_MASK);
        bArr[i + 3] = (byte) ((i2 >> 24) & MotionEventCompat.ACTION_MASK);
    }

    public static void writeSwappedLong(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) ((int) ((j >> null) & 255)));
        outputStream.write((byte) ((int) ((j >> 8) & 255)));
        outputStream.write((byte) ((int) ((j >> 16) & 255)));
        outputStream.write((byte) ((int) ((j >> 24) & 255)));
        outputStream.write((byte) ((int) ((j >> 32) & 255)));
        outputStream.write((byte) ((int) ((j >> 40) & 255)));
        outputStream.write((byte) ((int) ((j >> 48) & 255)));
        outputStream.write((byte) ((int) ((j >> 56) & 255)));
    }

    public static void writeSwappedLong(byte[] bArr, int i, long j) {
        bArr[i + 0] = (byte) ((int) ((j >> null) & 255));
        bArr[i + 1] = (byte) ((int) ((j >> 8) & 255));
        bArr[i + 2] = (byte) ((int) ((j >> 16) & 255));
        bArr[i + 3] = (byte) ((int) ((j >> 24) & 255));
        bArr[i + 4] = (byte) ((int) ((j >> 32) & 255));
        bArr[i + 5] = (byte) ((int) ((j >> 40) & 255));
        bArr[i + 6] = (byte) ((int) ((j >> 48) & 255));
        bArr[i + 7] = (byte) ((int) ((j >> 56) & 255));
    }

    public static void writeSwappedShort(OutputStream outputStream, short s) throws IOException {
        outputStream.write((byte) ((s >> 0) & MotionEventCompat.ACTION_MASK));
        outputStream.write((byte) ((s >> 8) & MotionEventCompat.ACTION_MASK));
    }

    public static void writeSwappedShort(byte[] bArr, int i, short s) {
        bArr[i + 0] = (byte) ((s >> 0) & MotionEventCompat.ACTION_MASK);
        bArr[i + 1] = (byte) ((s >> 8) & MotionEventCompat.ACTION_MASK);
    }
}
