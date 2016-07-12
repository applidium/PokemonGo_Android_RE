package spacemadness.com.lunarconsole.utils;

import android.util.Log;
import java.util.List;
import spacemadness.com.lunarconsole.BuildConfig;

public class StringUtils {
    public static boolean IsNullOrEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static <T> String Join(List<T> list) {
        return Join((List) list, ",");
    }

    public static <T> String Join(List<T> list, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        for (T append : list) {
            stringBuilder.append(append);
            i++;
            if (i < list.size()) {
                stringBuilder.append(str);
            }
        }
        return stringBuilder.toString();
    }

    public static String Join(byte[] bArr) {
        return Join(bArr, ",");
    }

    public static String Join(byte[] bArr, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < bArr.length; i++) {
            stringBuilder.append(bArr[i]);
            if (i < bArr.length - 1) {
                stringBuilder.append(str);
            }
        }
        return stringBuilder.toString();
    }

    public static String Join(char[] cArr) {
        return Join(cArr, ",");
    }

    public static String Join(char[] cArr, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < cArr.length; i++) {
            stringBuilder.append(cArr[i]);
            if (i < cArr.length - 1) {
                stringBuilder.append(str);
            }
        }
        return stringBuilder.toString();
    }

    public static String Join(double[] dArr) {
        return Join(dArr, ",");
    }

    public static String Join(double[] dArr, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < dArr.length; i++) {
            stringBuilder.append(dArr[i]);
            if (i < dArr.length - 1) {
                stringBuilder.append(str);
            }
        }
        return stringBuilder.toString();
    }

    public static String Join(float[] fArr) {
        return Join(fArr, ",");
    }

    public static String Join(float[] fArr, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < fArr.length; i++) {
            stringBuilder.append(fArr[i]);
            if (i < fArr.length - 1) {
                stringBuilder.append(str);
            }
        }
        return stringBuilder.toString();
    }

    public static String Join(int[] iArr) {
        return Join(iArr, ",");
    }

    public static String Join(int[] iArr, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < iArr.length; i++) {
            stringBuilder.append(iArr[i]);
            if (i < iArr.length - 1) {
                stringBuilder.append(str);
            }
        }
        return stringBuilder.toString();
    }

    public static String Join(long[] jArr) {
        return Join(jArr, ",");
    }

    public static String Join(long[] jArr, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < jArr.length; i++) {
            stringBuilder.append(jArr[i]);
            if (i < jArr.length - 1) {
                stringBuilder.append(str);
            }
        }
        return stringBuilder.toString();
    }

    public static <T> String Join(T[] tArr) {
        return Join((Object[]) tArr, ",");
    }

    public static <T> String Join(T[] tArr, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < tArr.length; i++) {
            stringBuilder.append(tArr[i]);
            if (i < tArr.length - 1) {
                stringBuilder.append(str);
            }
        }
        return stringBuilder.toString();
    }

    public static String Join(short[] sArr) {
        return Join(sArr, ",");
    }

    public static String Join(short[] sArr, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < sArr.length; i++) {
            stringBuilder.append(sArr[i]);
            if (i < sArr.length - 1) {
                stringBuilder.append(str);
            }
        }
        return stringBuilder.toString();
    }

    public static String Join(boolean[] zArr) {
        return Join(zArr, ",");
    }

    public static String Join(boolean[] zArr, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < zArr.length; i++) {
            stringBuilder.append(zArr[i]);
            if (i < zArr.length - 1) {
                stringBuilder.append(str);
            }
        }
        return stringBuilder.toString();
    }

    public static String NonNullOrEmpty(String str) {
        return str != null ? str : BuildConfig.FLAVOR;
    }

    public static String TryFormat(String str, Object... objArr) {
        if (!(str == null || objArr == null || objArr.length <= 0)) {
            try {
                str = String.format(str, objArr);
            } catch (Exception e) {
                Log.e("Lunar", "Error while formatting String: " + e.getMessage());
            }
        }
        return str;
    }

    public static boolean contains(String str, CharSequence charSequence) {
        return (str == null || charSequence == null || !str.contains(charSequence)) ? false : true;
    }

    public static boolean containsIgnoreCase(String str, String str2) {
        return str != null && str2 != null && str.length() >= str2.length() && str.toLowerCase().contains(str2.toLowerCase());
    }

    public static boolean hasPrefix(String str, String str2) {
        return (str == null || str2 == null || !str.startsWith(str2)) ? false : true;
    }

    public static int length(String str) {
        return str != null ? str.length() : 0;
    }

    public static String nullOrNonEmpty(String str) {
        return IsNullOrEmpty(str) ? null : str;
    }
}
