package com.google.android.gms.ads.internal.util.client;

import android.util.Log;
import com.google.ads.AdRequest;
import com.google.android.gms.internal.zzby;
import com.google.android.gms.internal.zzgr;

@zzgr
public final class zzb {
    public static void m36e(String str) {
        if (zzN(6)) {
            Log.e(AdRequest.LOGTAG, str);
        }
    }

    public static void m37v(String str) {
        if (zzN(2)) {
            Log.v(AdRequest.LOGTAG, str);
        }
    }

    public static boolean zzN(int i) {
        return (i >= 5 || Log.isLoggable(AdRequest.LOGTAG, i)) && (i != 2 || zzgU());
    }

    public static void zza(String str, Throwable th) {
        if (zzN(3)) {
            Log.d(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzaF(String str) {
        if (zzN(3)) {
            Log.d(AdRequest.LOGTAG, str);
        }
    }

    public static void zzaG(String str) {
        if (zzN(4)) {
            Log.i(AdRequest.LOGTAG, str);
        }
    }

    public static void zzaH(String str) {
        if (zzN(5)) {
            Log.w(AdRequest.LOGTAG, str);
        }
    }

    public static void zzb(String str, Throwable th) {
        if (zzN(6)) {
            Log.e(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzc(String str, Throwable th) {
        if (zzN(4)) {
            Log.i(AdRequest.LOGTAG, str, th);
        }
    }

    public static void zzd(String str, Throwable th) {
        if (zzN(5)) {
            Log.w(AdRequest.LOGTAG, str, th);
        }
    }

    public static boolean zzgU() {
        return ((Boolean) zzby.zzvl.get()).booleanValue();
    }
}
