package com.nianticlabs.nia.unity;

import android.app.Activity;
import android.util.Log;

public class UnityUtil {
    private static final String TAG;
    private static volatile Activity activity;

    static {
        TAG = UnityUtil.class.getSimpleName();
    }

    private UnityUtil() {
    }

    public static Activity getActivity() {
        if (activity != null) {
            return activity;
        }
        try {
            activity = (Activity) Class.forName("com.unity3d.player.UnityPlayer").getField("currentActivity").get(null);
            return activity;
        } catch (Throwable e) {
            Log.e(TAG, "Unable to get currentActivity", e);
            return null;
        }
    }

    public static void init() {
        nativeInit();
    }

    private static native void nativeInit();
}
