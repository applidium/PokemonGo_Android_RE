package com.google.android.gms.common;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Base64;
import android.util.Log;

public class zzd {
    private static final zzd zzaas;

    static {
        zzaas = new zzd();
    }

    private zzd() {
    }

    private boolean zza(PackageInfo packageInfo, boolean z) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return false;
        }
        zza com_google_android_gms_common_zzc_zzb = new zzb(packageInfo.signatures[0].toByteArray());
        if ((z ? zzc.zznp() : zzc.zznq()).contains(com_google_android_gms_common_zzc_zzb)) {
            return true;
        }
        if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
            Log.v("GoogleSignatureVerifier", "Signature not valid.  Found: \n" + Base64.encodeToString(com_google_android_gms_common_zzc_zzb.getBytes(), 0));
        }
        return false;
    }

    public static zzd zznu() {
        return zzaas;
    }

    zza zza(PackageInfo packageInfo, zza... com_google_android_gms_common_zzc_zzaArr) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        zza com_google_android_gms_common_zzc_zzb = new zzb(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < com_google_android_gms_common_zzc_zzaArr.length; i++) {
            if (com_google_android_gms_common_zzc_zzaArr[i].equals(com_google_android_gms_common_zzc_zzb)) {
                return com_google_android_gms_common_zzc_zzaArr[i];
            }
        }
        if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
            Log.v("GoogleSignatureVerifier", "Signature not valid.  Found: \n" + Base64.encodeToString(com_google_android_gms_common_zzc_zzb.getBytes(), 0));
        }
        return null;
    }

    public boolean zza(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (GooglePlayServicesUtil.zzc(packageManager)) {
            return zza(packageInfo, true);
        }
        boolean zza = zza(packageInfo, false);
        if (zza || !zza(packageInfo, true)) {
            return zza;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return zza;
    }

    public boolean zzb(PackageManager packageManager, String str) {
        try {
            return zza(packageManager, packageManager.getPackageInfo(str, 64));
        } catch (NameNotFoundException e) {
            if (Log.isLoggable("GoogleSignatureVerifier", 3)) {
                Log.d("GoogleSignatureVerifier", "Package manager can't find package " + str + ", defaulting to false");
            }
            return false;
        }
    }
}
