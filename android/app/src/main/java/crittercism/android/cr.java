package crittercism.android;

import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.io.UnsupportedEncodingException;
import spacemadness.com.lunarconsole.C1401R;

public final class cr {
    private static final byte[] f682a;
    private static final byte[] f683b;
    private static final byte[] f684c;

    static {
        byte[] bytes;
        f683b = new byte[]{(byte) 65, (byte) 66, (byte) 67, (byte) 68, (byte) 69, (byte) 70, (byte) 71, (byte) 72, (byte) 73, (byte) 74, (byte) 75, (byte) 76, (byte) 77, (byte) 78, (byte) 79, (byte) 80, (byte) 81, (byte) 82, (byte) 83, (byte) 84, (byte) 85, (byte) 86, (byte) 87, (byte) 88, (byte) 89, (byte) 90, (byte) 97, (byte) 98, (byte) 99, (byte) 100, (byte) 101, (byte) 102, (byte) 103, (byte) 104, (byte) 105, (byte) 106, (byte) 107, (byte) 108, (byte) 109, (byte) 110, (byte) 111, (byte) 112, (byte) 113, (byte) 114, (byte) 115, (byte) 116, (byte) 117, (byte) 118, (byte) 119, (byte) 120, (byte) 121, (byte) 122, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 43, (byte) 47};
        try {
            bytes = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            bytes = f683b;
        }
        f682a = bytes;
        f684c = new byte[]{(byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -5, (byte) -5, (byte) -9, (byte) -9, (byte) -5, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -5, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) 62, (byte) -9, (byte) -9, (byte) -9, (byte) 63, (byte) 52, (byte) 53, (byte) 54, (byte) 55, (byte) 56, (byte) 57, (byte) 58, (byte) 59, (byte) 60, (byte) 61, (byte) -9, (byte) -9, (byte) -9, (byte) -1, (byte) -9, (byte) -9, (byte) -9, (byte) 0, (byte) 1, (byte) 2, (byte) 3, (byte) 4, (byte) 5, (byte) 6, (byte) 7, (byte) 8, (byte) 9, (byte) 10, (byte) 11, (byte) 12, (byte) 13, (byte) 14, (byte) 15, (byte) 16, (byte) 17, (byte) 18, (byte) 19, (byte) 20, (byte) 21, (byte) 22, (byte) 23, (byte) 24, (byte) 25, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) -9, (byte) 26, (byte) 27, (byte) 28, (byte) 29, (byte) 30, (byte) 31, (byte) 32, (byte) 33, (byte) 34, (byte) 35, (byte) 36, (byte) 37, (byte) 38, (byte) 39, (byte) 40, (byte) 41, (byte) 42, (byte) 43, (byte) 44, (byte) 45, (byte) 46, (byte) 47, (byte) 48, (byte) 49, (byte) 50, (byte) 51, (byte) -9, (byte) -9, (byte) -9, (byte) -9};
    }

    public static String m670a(byte[] bArr) {
        return m671a(bArr, bArr.length);
    }

    private static String m671a(byte[] bArr, int i) {
        int i2 = (i * 4) / 3;
        byte[] bArr2 = new byte[(((i % 3 > 0 ? 4 : 0) + i2) + (i2 / 76))];
        int i3 = 0;
        i2 = 0;
        int i4 = 0;
        while (i3 < i - 2) {
            m672a(bArr, i3 + 0, 3, bArr2, i4);
            i2 += 4;
            if (i2 == 76) {
                bArr2[i4 + 4] = (byte) 10;
                i4++;
                i2 = 0;
            }
            i3 += 3;
            i4 += 4;
        }
        if (i3 < i) {
            m672a(bArr, i3 + 0, i - i3, bArr2, i4);
            i2 = i4 + 4;
        } else {
            i2 = i4;
        }
        try {
            return new String(bArr2, 0, i2, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            return new String(bArr2, 0, i2);
        }
    }

    private static byte[] m672a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = 0;
        int i5 = i2 > 0 ? (bArr[i] << 24) >>> 8 : 0;
        int i6 = i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0;
        if (i2 > 2) {
            i4 = (bArr[i + 2] << 24) >>> 24;
        }
        i4 |= i6 | i5;
        switch (i2) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                bArr2[i3] = f682a[i4 >>> 18];
                bArr2[i3 + 1] = f682a[(i4 >>> 12) & 63];
                bArr2[i3 + 2] = (byte) 61;
                bArr2[i3 + 3] = (byte) 61;
                break;
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                bArr2[i3] = f682a[i4 >>> 18];
                bArr2[i3 + 1] = f682a[(i4 >>> 12) & 63];
                bArr2[i3 + 2] = f682a[(i4 >>> 6) & 63];
                bArr2[i3 + 3] = (byte) 61;
                break;
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                bArr2[i3] = f682a[i4 >>> 18];
                bArr2[i3 + 1] = f682a[(i4 >>> 12) & 63];
                bArr2[i3 + 2] = f682a[(i4 >>> 6) & 63];
                bArr2[i3 + 3] = f682a[i4 & 63];
                break;
        }
        return bArr2;
    }
}
