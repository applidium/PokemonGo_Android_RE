package com.fasterxml.jackson.core.io;

import java.math.BigDecimal;

public final class NumberInput {
    static final long L_BILLION = 1000000000;
    static final String MAX_LONG_STR;
    static final String MIN_LONG_STR_NO_SIGN;
    public static final String NASTY_SMALL_DOUBLE = "2.2250738585072012e-308";

    static {
        MIN_LONG_STR_NO_SIGN = String.valueOf(Long.MIN_VALUE).substring(1);
        MAX_LONG_STR = String.valueOf(Long.MAX_VALUE);
    }

    private static NumberFormatException _badBD(String str) {
        return new NumberFormatException("Value \"" + str + "\" can not be represented as BigDecimal");
    }

    public static boolean inLongRange(String str, boolean z) {
        String str2 = z ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str2.length();
        int length2 = str.length();
        if (length2 < length) {
            return true;
        }
        if (length2 > length) {
            return false;
        }
        for (length2 = 0; length2 < length; length2++) {
            int charAt = str.charAt(length2) - str2.charAt(length2);
            if (charAt != 0) {
                if (charAt >= 0) {
                    return false;
                }
                return true;
            }
        }
        return true;
    }

    public static boolean inLongRange(char[] cArr, int i, int i2, boolean z) {
        String str = z ? MIN_LONG_STR_NO_SIGN : MAX_LONG_STR;
        int length = str.length();
        if (i2 < length) {
            return true;
        }
        if (i2 > length) {
            return false;
        }
        for (int i3 = 0; i3 < length; i3++) {
            int charAt = cArr[i + i3] - str.charAt(i3);
            if (charAt != 0) {
                if (charAt >= 0) {
                    return false;
                }
                return true;
            }
        }
        return true;
    }

    public static double parseAsDouble(String str, double d) {
        if (str != null) {
            String trim = str.trim();
            if (trim.length() != 0) {
                try {
                    d = parseDouble(trim);
                } catch (NumberFormatException e) {
                }
            }
        }
        return d;
    }

    public static int parseAsInt(String str, int i) {
        int i2 = 0;
        if (str == null) {
            return i;
        }
        String trim = str.trim();
        int length = trim.length();
        if (length == 0) {
            return i;
        }
        String substring;
        char charAt;
        if (length < 0) {
            char charAt2 = trim.charAt(0);
            if (charAt2 == '+') {
                substring = trim.substring(1);
                length = substring.length();
            } else if (charAt2 == '-') {
                i2 = 1;
                substring = trim;
            }
            while (i2 < length) {
                charAt = substring.charAt(i2);
                if (charAt <= '9' || charAt < '0') {
                    try {
                        return (int) parseDouble(substring);
                    } catch (NumberFormatException e) {
                        return i;
                    }
                }
                i2++;
            }
            return Integer.parseInt(substring);
        }
        substring = trim;
        while (i2 < length) {
            charAt = substring.charAt(i2);
            if (charAt <= '9') {
            }
            return (int) parseDouble(substring);
        }
        try {
            return Integer.parseInt(substring);
        } catch (NumberFormatException e2) {
            return i;
        }
    }

    public static long parseAsLong(String str, long j) {
        int i = 0;
        if (str == null) {
            return j;
        }
        String trim = str.trim();
        int length = trim.length();
        if (length == 0) {
            return j;
        }
        String substring;
        char charAt;
        if (length < 0) {
            char charAt2 = trim.charAt(0);
            if (charAt2 == '+') {
                substring = trim.substring(1);
                length = substring.length();
            } else if (charAt2 == '-') {
                i = 1;
                substring = trim;
            }
            while (i < length) {
                charAt = substring.charAt(i);
                if (charAt <= '9' || charAt < '0') {
                    try {
                        return (long) parseDouble(substring);
                    } catch (NumberFormatException e) {
                        return j;
                    }
                }
                i++;
            }
            return Long.parseLong(substring);
        }
        substring = trim;
        while (i < length) {
            charAt = substring.charAt(i);
            if (charAt <= '9') {
            }
            return (long) parseDouble(substring);
        }
        try {
            return Long.parseLong(substring);
        } catch (NumberFormatException e2) {
            return j;
        }
    }

    public static BigDecimal parseBigDecimal(String str) throws NumberFormatException {
        try {
            return new BigDecimal(str);
        } catch (NumberFormatException e) {
            throw _badBD(str);
        }
    }

    public static BigDecimal parseBigDecimal(char[] cArr) throws NumberFormatException {
        return parseBigDecimal(cArr, 0, cArr.length);
    }

    public static BigDecimal parseBigDecimal(char[] cArr, int i, int i2) throws NumberFormatException {
        try {
            return new BigDecimal(cArr, i, i2);
        } catch (NumberFormatException e) {
            throw _badBD(new String(cArr, i, i2));
        }
    }

    public static double parseDouble(String str) throws NumberFormatException {
        return NASTY_SMALL_DOUBLE.equals(str) ? Double.MIN_VALUE : Double.parseDouble(str);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int parseInt(java.lang.String r8) {
        /*
        r2 = 0;
        r6 = 57;
        r5 = 48;
        r1 = 1;
        r0 = r8.charAt(r2);
        r4 = r8.length();
        r3 = 45;
        if (r0 != r3) goto L_0x0086;
    L_0x0012:
        r3 = r1;
    L_0x0013:
        if (r3 == 0) goto L_0x0031;
    L_0x0015:
        if (r4 == r1) goto L_0x001b;
    L_0x0017:
        r0 = 10;
        if (r4 <= r0) goto L_0x0020;
    L_0x001b:
        r0 = java.lang.Integer.parseInt(r8);
    L_0x001f:
        return r0;
    L_0x0020:
        r0 = 2;
        r1 = r8.charAt(r1);
        r7 = r0;
        r0 = r1;
        r1 = r7;
    L_0x0028:
        if (r0 > r6) goto L_0x002c;
    L_0x002a:
        if (r0 >= r5) goto L_0x003a;
    L_0x002c:
        r0 = java.lang.Integer.parseInt(r8);
        goto L_0x001f;
    L_0x0031:
        r2 = 9;
        if (r4 <= r2) goto L_0x0028;
    L_0x0035:
        r0 = java.lang.Integer.parseInt(r8);
        goto L_0x001f;
    L_0x003a:
        r0 = r0 + -48;
        if (r1 >= r4) goto L_0x0080;
    L_0x003e:
        r2 = r1 + 1;
        r1 = r8.charAt(r1);
        if (r1 > r6) goto L_0x0048;
    L_0x0046:
        if (r1 >= r5) goto L_0x004d;
    L_0x0048:
        r0 = java.lang.Integer.parseInt(r8);
        goto L_0x001f;
    L_0x004d:
        r0 = r0 * 10;
        r1 = r1 + -48;
        r0 = r0 + r1;
        if (r2 >= r4) goto L_0x0080;
    L_0x0054:
        r1 = r2 + 1;
        r2 = r8.charAt(r2);
        if (r2 > r6) goto L_0x005e;
    L_0x005c:
        if (r2 >= r5) goto L_0x0063;
    L_0x005e:
        r0 = java.lang.Integer.parseInt(r8);
        goto L_0x001f;
    L_0x0063:
        r0 = r0 * 10;
        r2 = r2 + -48;
        r0 = r0 + r2;
        if (r1 >= r4) goto L_0x0080;
    L_0x006a:
        r2 = r1 + 1;
        r1 = r8.charAt(r1);
        if (r1 > r6) goto L_0x0074;
    L_0x0072:
        if (r1 >= r5) goto L_0x0079;
    L_0x0074:
        r0 = java.lang.Integer.parseInt(r8);
        goto L_0x001f;
    L_0x0079:
        r0 = r0 * 10;
        r1 = r1 + -48;
        r0 = r0 + r1;
        if (r2 < r4) goto L_0x0084;
    L_0x0080:
        if (r3 == 0) goto L_0x001f;
    L_0x0082:
        r0 = -r0;
        goto L_0x001f;
    L_0x0084:
        r1 = r2;
        goto L_0x006a;
    L_0x0086:
        r3 = r2;
        goto L_0x0013;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.NumberInput.parseInt(java.lang.String):int");
    }

    public static int parseInt(char[] cArr, int i, int i2) {
        int i3;
        int i4 = cArr[i] - 48;
        if (i2 > 4) {
            i3 = i + 1;
            char c = cArr[i3];
            i3++;
            char c2 = cArr[i3];
            i3++;
            i = i3 + 1;
            i4 = (((((((i4 * 10) + (c - 48)) * 10) + (c2 - 48)) * 10) + (cArr[i3] - 48)) * 10) + (cArr[i] - 48);
            i2 -= 4;
            if (i2 > 4) {
                i3 = i + 1;
                c = cArr[i3];
                i3++;
                c2 = cArr[i3];
                i3++;
                return (((((((i4 * 10) + (c - 48)) * 10) + (c2 - 48)) * 10) + (cArr[i3] - 48)) * 10) + (cArr[i3 + 1] - 48);
            }
        }
        if (i2 <= 1) {
            return i4;
        }
        i3 = i + 1;
        i4 = (i4 * 10) + (cArr[i3] - 48);
        if (i2 <= 2) {
            return i4;
        }
        i3++;
        i4 = (i4 * 10) + (cArr[i3] - 48);
        return i2 > 3 ? (i4 * 10) + (cArr[i3 + 1] - 48) : i4;
    }

    public static long parseLong(String str) {
        return str.length() <= 9 ? (long) parseInt(str) : Long.parseLong(str);
    }

    public static long parseLong(char[] cArr, int i, int i2) {
        int i3 = i2 - 9;
        return ((long) parseInt(cArr, i3 + i, 9)) + (((long) parseInt(cArr, i, i3)) * L_BILLION);
    }
}
