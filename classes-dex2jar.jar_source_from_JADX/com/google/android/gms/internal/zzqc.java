package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.zzqd.zza;

@Deprecated
public class zzqc implements zza {
    private final zzqd zzaRC;
    private boolean zzaRD;

    public zzqc(Context context, int i) {
        this(context, i, null);
    }

    public zzqc(Context context, int i, String str) {
        this(context, i, str, null, true);
    }

    public zzqc(Context context, int i, String str, String str2, boolean z) {
        this.zzaRC = new zzqd(context, i, str, str2, this, z, context != context.getApplicationContext() ? context.getClass().getName() : "OneTimePlayLogger");
        this.zzaRD = true;
    }

    private void zzBq() {
        if (!this.zzaRD) {
            throw new IllegalStateException("Cannot reuse one-time logger after sending.");
        }
    }

    public void send() {
        zzBq();
        this.zzaRC.start();
        this.zzaRD = false;
    }

    public void zzBr() {
        this.zzaRC.stop();
    }

    public void zzBs() {
        Log.w("OneTimePlayLogger", "logger connection failed");
    }

    public void zza(String str, byte[] bArr, String... strArr) {
        zzBq();
        this.zzaRC.zzb(str, bArr, strArr);
    }

    public void zzf(PendingIntent pendingIntent) {
        Log.w("OneTimePlayLogger", "logger connection failed: " + pendingIntent);
    }
}
