package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.location.LocationStatusCodes;
import java.util.regex.Pattern;

public final class zzml {
    private static Pattern zzaij;

    static {
        zzaij = null;
    }

    public static boolean zzan(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    public static int zzca(int i) {
        return i / LocationStatusCodes.GEOFENCE_NOT_AVAILABLE;
    }

    @Deprecated
    public static boolean zzcb(int i) {
        return false;
    }
}
