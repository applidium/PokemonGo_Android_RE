package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.zzqc;
import org.apache.commons.io.IOUtils;

public final class zzo {
    public static final int zzagk;
    private static final String zzagl;
    private final String zzagm;
    private final String zzagn;

    static {
        zzagk = 23 - " PII_LOG".length();
        zzagl = null;
    }

    public zzo(String str) {
        this(str, zzagl);
    }

    public zzo(String str, String str2) {
        zzx.zzb((Object) str, (Object) "log tag cannot be null");
        zzx.zzb(str.length() <= 23, "tag \"%s\" is longer than the %d character maximum", str, Integer.valueOf(23));
        this.zzagm = str;
        if (str2 == null || str2.length() <= 0) {
            this.zzagn = zzagl;
        } else {
            this.zzagn = str2;
        }
    }

    private String zzcp(String str) {
        return this.zzagn == null ? str : this.zzagn.concat(str);
    }

    public void zza(Context context, String str, String str2, Throwable th) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        StringBuilder stringBuilder = new StringBuilder();
        int i = 0;
        while (i < stackTrace.length && i < 2) {
            stringBuilder.append(stackTrace[i].toString());
            stringBuilder.append(IOUtils.LINE_SEPARATOR_UNIX);
            i++;
        }
        zzqc com_google_android_gms_internal_zzqc = new zzqc(context, 10);
        com_google_android_gms_internal_zzqc.zza("GMS_WTF", null, "GMS_WTF", stringBuilder.toString());
        com_google_android_gms_internal_zzqc.send();
        if (zzbH(7)) {
            Log.e(str, zzcp(str2), th);
            Log.wtf(str, zzcp(str2), th);
        }
    }

    public void zza(String str, String str2, Throwable th) {
        if (zzbH(4)) {
            Log.i(str, zzcp(str2), th);
        }
    }

    public void zzb(String str, String str2, Throwable th) {
        if (zzbH(5)) {
            Log.w(str, zzcp(str2), th);
        }
    }

    public boolean zzbH(int i) {
        return Log.isLoggable(this.zzagm, i);
    }

    public void zzc(String str, String str2, Throwable th) {
        if (zzbH(6)) {
            Log.e(str, zzcp(str2), th);
        }
    }

    public void zzx(String str, String str2) {
        if (zzbH(3)) {
            Log.d(str, zzcp(str2));
        }
    }

    public void zzy(String str, String str2) {
        if (zzbH(5)) {
            Log.w(str, zzcp(str2));
        }
    }

    public void zzz(String str, String str2) {
        if (zzbH(6)) {
            Log.e(str, zzcp(str2));
        }
    }
}
