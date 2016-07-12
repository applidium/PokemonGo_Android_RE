package com.google.android.gms.internal;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.common.internal.zzx;

public class zzii {
    private Handler mHandler;
    private HandlerThread zzJh;
    private int zzJi;
    private final Object zzpd;

    /* renamed from: com.google.android.gms.internal.zzii.1 */
    class C05911 implements Runnable {
        final /* synthetic */ zzii zzJj;

        C05911(zzii com_google_android_gms_internal_zzii) {
            this.zzJj = com_google_android_gms_internal_zzii;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
            r2 = this;
            r0 = r2.zzJj;
            r1 = r0.zzpd;
            monitor-enter(r1);
            r0 = "Suspending the looper thread";
            com.google.android.gms.ads.internal.util.client.zzb.m37v(r0);	 Catch:{ all -> 0x002a }
        L_0x000c:
            r0 = r2.zzJj;	 Catch:{ all -> 0x002a }
            r0 = r0.zzJi;	 Catch:{ all -> 0x002a }
            if (r0 != 0) goto L_0x002d;
        L_0x0014:
            r0 = r2.zzJj;	 Catch:{ InterruptedException -> 0x0023 }
            r0 = r0.zzpd;	 Catch:{ InterruptedException -> 0x0023 }
            r0.wait();	 Catch:{ InterruptedException -> 0x0023 }
            r0 = "Looper thread resumed";
            com.google.android.gms.ads.internal.util.client.zzb.m37v(r0);	 Catch:{ InterruptedException -> 0x0023 }
            goto L_0x000c;
        L_0x0023:
            r0 = move-exception;
            r0 = "Looper thread interrupted.";
            com.google.android.gms.ads.internal.util.client.zzb.m37v(r0);	 Catch:{ all -> 0x002a }
            goto L_0x000c;
        L_0x002a:
            r0 = move-exception;
            monitor-exit(r1);	 Catch:{ all -> 0x002a }
            throw r0;
        L_0x002d:
            monitor-exit(r1);	 Catch:{ all -> 0x002a }
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzii.1.run():void");
        }
    }

    public zzii() {
        this.zzJh = null;
        this.mHandler = null;
        this.zzJi = 0;
        this.zzpd = new Object();
    }

    public Looper zzgM() {
        Looper looper;
        synchronized (this.zzpd) {
            if (this.zzJi != 0) {
                zzx.zzb(this.zzJh, (Object) "Invalid state: mHandlerThread should already been initialized.");
            } else if (this.zzJh == null) {
                zzb.m37v("Starting the looper thread.");
                this.zzJh = new HandlerThread("LooperProvider");
                this.zzJh.start();
                this.mHandler = new Handler(this.zzJh.getLooper());
                zzb.m37v("Looper thread started.");
            } else {
                zzb.m37v("Resuming the looper thread");
                this.zzpd.notifyAll();
            }
            this.zzJi++;
            looper = this.zzJh.getLooper();
        }
        return looper;
    }

    public void zzgN() {
        synchronized (this.zzpd) {
            zzx.zzb(this.zzJi > 0, (Object) "Invalid state: release() called more times than expected.");
            int i = this.zzJi - 1;
            this.zzJi = i;
            if (i == 0) {
                this.mHandler.post(new C05911(this));
            }
        }
    }
}
