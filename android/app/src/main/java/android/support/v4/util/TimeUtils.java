package android.support.v4.util;

import java.io.PrintWriter;

public class TimeUtils {
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static char[] sFormatStr;
    private static final Object sFormatSync;

    static {
        sFormatSync = new Object();
        sFormatStr = new char[24];
    }

    private static int accumField(int i, int i2, boolean z, int i3) {
        return (i > 99 || (z && i3 >= 3)) ? i2 + 3 : (i > 9 || (z && i3 >= 2)) ? i2 + 2 : (z || i > 0) ? i2 + 1 : 0;
    }

    public static void formatDuration(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j - j2, printWriter, 0);
        }
    }

    public static void formatDuration(long j, PrintWriter printWriter) {
        formatDuration(j, printWriter, 0);
    }

    public static void formatDuration(long j, PrintWriter printWriter, int i) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j, i)));
        }
    }

    public static void formatDuration(long j, StringBuilder stringBuilder) {
        synchronized (sFormatSync) {
            stringBuilder.append(sFormatStr, 0, formatDurationLocked(j, 0));
        }
    }

    private static int formatDurationLocked(long j, int i) {
        if (sFormatStr.length < i) {
            sFormatStr = new char[i];
        }
        char[] cArr = sFormatStr;
        if (j == 0) {
            while (i - 1 < 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        char c;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (j > 0) {
            c = '+';
        } else {
            j = -j;
            c = '-';
        }
        int i7 = (int) (j % 1000);
        int floor = (int) Math.floor((double) (j / 1000));
        int i8 = 0;
        if (floor > SECONDS_PER_DAY) {
            i8 = floor / SECONDS_PER_DAY;
            floor -= SECONDS_PER_DAY * i8;
        }
        if (floor > SECONDS_PER_HOUR) {
            i2 = floor / SECONDS_PER_HOUR;
            i3 = i2;
            i2 = floor - (i2 * SECONDS_PER_HOUR);
        } else {
            i3 = 0;
            i2 = floor;
        }
        if (i2 > SECONDS_PER_MINUTE) {
            i4 = i2 / SECONDS_PER_MINUTE;
            i5 = i4;
            i6 = i2 - (i4 * SECONDS_PER_MINUTE);
        } else {
            i5 = 0;
            i6 = i2;
        }
        i4 = 0;
        if (i != 0) {
            floor = accumField(i8, 1, false, 0);
            floor += accumField(i3, 1, floor > 0, 2);
            floor += accumField(i5, 1, floor > 0, 2);
            floor += accumField(i6, 1, floor > 0, 2);
            i4 = 0;
            i2 = (accumField(i7, 2, true, floor > 0 ? 3 : 0) + 1) + floor;
            while (i2 < i) {
                cArr[i4] = ' ';
                i2++;
                i4++;
            }
        }
        cArr[i4] = c;
        i4++;
        Object obj = i != 0 ? 1 : null;
        int printField = printField(cArr, i8, 'd', i4, false, 0);
        printField = printField(cArr, i3, 'h', printField, printField != i4, obj != null ? 2 : 0);
        printField = printField(cArr, i5, 'm', printField, printField != i4, obj != null ? 2 : 0);
        int printField2 = printField(cArr, i6, 's', printField, printField != i4, obj != null ? 2 : 0);
        floor = (obj == null || printField2 == i4) ? 0 : 3;
        i8 = printField(cArr, i7, 'm', printField2, true, floor);
        cArr[i8] = 's';
        return i8 + 1;
    }

    private static int printField(char[] cArr, int i, char c, int i2, boolean z, int i3) {
        if (!z && i <= 0) {
            return i2;
        }
        int i4;
        int i5;
        if ((!z || i3 < 3) && i <= 99) {
            i4 = i2;
            i5 = i;
        } else {
            i5 = i / 100;
            cArr[i2] = (char) (i5 + 48);
            i4 = i2 + 1;
            i5 = i - (i5 * 100);
        }
        if ((z && i3 >= 2) || i5 > 9 || i2 != i4) {
            int i6 = i5 / 10;
            cArr[i4] = (char) (i6 + 48);
            i4++;
            i5 -= i6 * 10;
        }
        cArr[i4] = (char) (i5 + 48);
        i5 = i4 + 1;
        cArr[i5] = c;
        return i5 + 1;
    }
}
