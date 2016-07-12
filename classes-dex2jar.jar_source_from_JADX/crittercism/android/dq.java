package crittercism.android;

import android.content.Context;
import android.content.SharedPreferences.Editor;

public final class dq {
    public static boolean f750a;

    static {
        f750a = false;
    }

    public static Boolean m726a(Context context) {
        return Boolean.valueOf(context.getSharedPreferences("com.crittercism.usersettings", 0).getBoolean("crashedOnLastLoad", false));
    }

    public static void m727a(Context context, boolean z) {
        Editor edit = context.getSharedPreferences("com.crittercism.usersettings", 0).edit();
        edit.putBoolean("crashedOnLastLoad", z);
        edit.commit();
    }
}
