package android.support.v4.database;

import android.text.TextUtils;

public class DatabaseUtilsCompat {
    private DatabaseUtilsCompat() {
    }

    public static String[] appendSelectionArgs(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length == 0) {
            return strArr2;
        }
        Object obj = new String[(strArr.length + strArr2.length)];
        System.arraycopy(strArr, 0, obj, 0, strArr.length);
        System.arraycopy(strArr2, 0, obj, strArr.length, strArr2.length);
        return obj;
    }

    public static String concatenateWhere(String str, String str2) {
        return TextUtils.isEmpty(str) ? str2 : !TextUtils.isEmpty(str2) ? "(" + str + ") AND (" + str2 + ")" : str;
    }
}
