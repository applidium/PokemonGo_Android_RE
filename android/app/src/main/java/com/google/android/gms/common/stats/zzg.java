package com.google.android.gms.common.stats;

import android.os.PowerManager.WakeLock;
import android.os.Process;
import android.text.TextUtils;
import spacemadness.com.lunarconsole.BuildConfig;

public class zzg {
    public static String zza(WakeLock wakeLock, String str) {
        StringBuilder append = new StringBuilder().append(String.valueOf((((long) Process.myPid()) << 32) | ((long) System.identityHashCode(wakeLock))));
        if (TextUtils.isEmpty(str)) {
            str = BuildConfig.FLAVOR;
        }
        return append.append(str).toString();
    }
}
