package android.support.v4.app;

import android.app.ActivityManager;

class ActivityManagerCompatKitKat {
    ActivityManagerCompatKitKat() {
    }

    public static boolean isLowRamDevice(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }
}
