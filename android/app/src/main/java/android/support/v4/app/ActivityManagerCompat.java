package android.support.v4.app;

import android.app.ActivityManager;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;

public final class ActivityManagerCompat {
    private ActivityManagerCompat() {
    }

    public static boolean isLowRamDevice(@NonNull ActivityManager activityManager) {
        return VERSION.SDK_INT >= 19 ? ActivityManagerCompatKitKat.isLowRamDevice(activityManager) : false;
    }
}
