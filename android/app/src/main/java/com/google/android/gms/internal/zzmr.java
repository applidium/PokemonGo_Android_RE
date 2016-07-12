package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;

public final class zzmr {
    private static IntentFilter zzail;

    static {
        zzail = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    }

    public static int zzao(Context context) {
        int i = 1;
        if (context == null || context.getApplicationContext() == null) {
            return -1;
        }
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, zzail);
        int i2 = ((registerReceiver == null ? 0 : registerReceiver.getIntExtra("plugged", 0)) & 7) != 0 ? 1 : 0;
        int i3 = zzmx.zzqC() ? ((PowerManager) context.getSystemService("power")).isInteractive() : ((PowerManager) context.getSystemService("power")).isScreenOn() ? 1 : 0;
        if (i2 == 0) {
            i = 0;
        }
        return (i3 << 1) | i;
    }

    public static float zzap(Context context) {
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, zzail);
        if (registerReceiver == null) {
            return Float.NaN;
        }
        return ((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1));
    }
}
