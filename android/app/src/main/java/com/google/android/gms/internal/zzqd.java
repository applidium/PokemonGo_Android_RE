package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.util.Log;
import com.google.android.gms.playlog.internal.LogEvent;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import com.google.android.gms.playlog.internal.zzd;
import com.google.android.gms.playlog.internal.zzf;

@Deprecated
public class zzqd {
    private final zzf zzaRE;
    private PlayLoggerContext zzaRF;

    public interface zza {
        void zzBr();

        void zzBs();

        void zzf(PendingIntent pendingIntent);
    }

    public zzqd(Context context, int i, String str, String str2, zza com_google_android_gms_internal_zzqd_zza, boolean z, String str3) {
        String packageName = context.getPackageName();
        int i2 = 0;
        try {
            i2 = context.getPackageManager().getPackageInfo(packageName, 0).versionCode;
        } catch (Throwable e) {
            Log.wtf("PlayLogger", "This can't happen.", e);
        }
        this.zzaRF = new PlayLoggerContext(packageName, i2, i, str, str2, z);
        this.zzaRE = new zzf(context, context.getMainLooper(), new zzd(com_google_android_gms_internal_zzqd_zza), new com.google.android.gms.common.internal.zzf(null, null, null, 49, null, packageName, str3, null));
    }

    public void start() {
        this.zzaRE.start();
    }

    public void stop() {
        this.zzaRE.stop();
    }

    public void zza(long j, String str, byte[] bArr, String... strArr) {
        this.zzaRE.zzb(this.zzaRF, new LogEvent(j, 0, str, bArr, strArr));
    }

    public void zzb(String str, byte[] bArr, String... strArr) {
        zza(System.currentTimeMillis(), str, bArr, strArr);
    }
}
