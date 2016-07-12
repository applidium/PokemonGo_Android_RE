package com.google.android.gms.internal;

import java.util.concurrent.Future;

@zzgr
public abstract class zzhz implements zzgh<Future> {
    private volatile Thread zzIl;
    private boolean zzIm;
    private final Runnable zzx;

    /* renamed from: com.google.android.gms.internal.zzhz.1 */
    class C05721 implements Runnable {
        final /* synthetic */ zzhz zzIn;

        C05721(zzhz com_google_android_gms_internal_zzhz) {
            this.zzIn = com_google_android_gms_internal_zzhz;
        }

        public final void run() {
            this.zzIn.zzIl = Thread.currentThread();
            this.zzIn.zzbn();
        }
    }

    public zzhz() {
        this.zzx = new C05721(this);
        this.zzIm = false;
    }

    public zzhz(boolean z) {
        this.zzx = new C05721(this);
        this.zzIm = z;
    }

    public final void cancel() {
        onStop();
        if (this.zzIl != null) {
            this.zzIl.interrupt();
        }
    }

    public abstract void onStop();

    public abstract void zzbn();

    public /* synthetic */ Object zzfu() {
        return zzgz();
    }

    public final Future zzgz() {
        return this.zzIm ? zzic.zza(1, this.zzx) : zzic.zza(this.zzx);
    }
}
