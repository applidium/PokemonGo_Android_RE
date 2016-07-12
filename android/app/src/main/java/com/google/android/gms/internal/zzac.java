package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.http.AndroidHttpClient;
import android.os.Build.VERSION;
import java.io.File;

public class zzac {
    public static zzl zza(Context context) {
        return zza(context, null);
    }

    public static zzl zza(Context context, zzy com_google_android_gms_internal_zzy) {
        File file = new File(context.getCacheDir(), "volley");
        String str = "volley/0";
        try {
            String packageName = context.getPackageName();
            str = packageName + "/" + context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (NameNotFoundException e) {
        }
        if (com_google_android_gms_internal_zzy == null) {
            com_google_android_gms_internal_zzy = VERSION.SDK_INT >= 9 ? new zzz() : new zzw(AndroidHttpClient.newInstance(str));
        }
        zzl com_google_android_gms_internal_zzl = new zzl(new zzv(file), new zzt(com_google_android_gms_internal_zzy));
        com_google_android_gms_internal_zzl.start();
        return com_google_android_gms_internal_zzl;
    }
}
