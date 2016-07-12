package crittercism.android;

import android.content.Context;
import android.os.Build.VERSION;
import com.crittercism.app.CrittercismConfig;

public final class bf {
    public boolean f409a;
    public boolean f410b;
    public boolean f411c;

    public bf(Context context, CrittercismConfig crittercismConfig) {
        boolean z = true;
        if (!crittercismConfig.isLogcatReportingEnabled() || (VERSION.SDK_INT < 16 && !m456a("android.permission.READ_LOGS", context))) {
            z = false;
        }
        this.f409a = z;
        this.f411c = m456a("android.permission.ACCESS_NETWORK_STATE", context);
        this.f410b = m456a("android.permission.GET_TASKS", context);
    }

    private static boolean m456a(String str, Context context) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}
