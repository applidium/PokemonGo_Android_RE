package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzw;
import java.util.ArrayList;

public final class zzmj {
    public static <T> int zza(T[] tArr, T t) {
        int i;
        int i2 = 0;
        if (tArr != null) {
            i = 0;
            i2 = tArr.length;
        } else {
            i = 0;
        }
        while (i < i2) {
            if (zzw.equal(tArr[i], t)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static void zza(StringBuilder stringBuilder, double[] dArr) {
        int length = dArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Double.toString(dArr[i]));
        }
    }

    public static void zza(StringBuilder stringBuilder, float[] fArr) {
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Float.toString(fArr[i]));
        }
    }

    public static void zza(StringBuilder stringBuilder, int[] iArr) {
        int length = iArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Integer.toString(iArr[i]));
        }
    }

    public static void zza(StringBuilder stringBuilder, long[] jArr) {
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Long.toString(jArr[i]));
        }
    }

    public static <T> void zza(StringBuilder stringBuilder, T[] tArr) {
        int length = tArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(tArr[i].toString());
        }
    }

    public static void zza(StringBuilder stringBuilder, String[] strArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append("\"").append(strArr[i]).append("\"");
        }
    }

    public static void zza(StringBuilder stringBuilder, boolean[] zArr) {
        int length = zArr.length;
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                stringBuilder.append(",");
            }
            stringBuilder.append(Boolean.toString(zArr[i]));
        }
    }

    public static Integer[] zza(int[] iArr) {
        if (iArr == null) {
            return null;
        }
        int length = iArr.length;
        Integer[] numArr = new Integer[length];
        for (int i = 0; i < length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    public static <T> ArrayList<T> zzb(T[] tArr) {
        ArrayList<T> arrayList = new ArrayList(r1);
        for (Object add : tArr) {
            arrayList.add(add);
        }
        return arrayList;
    }

    public static <T> boolean zzb(T[] tArr, T t) {
        return zza((Object[]) tArr, (Object) t) >= 0;
    }

    public static <T> ArrayList<T> zzqs() {
        return new ArrayList();
    }
}
