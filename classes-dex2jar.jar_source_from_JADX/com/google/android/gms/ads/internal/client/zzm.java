package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.internal.client.zzv.zza;
import java.util.Random;

public class zzm extends zza {
    private Object zzpd;
    private final Random zzts;
    private long zztt;

    public zzm() {
        this.zzpd = new Object();
        this.zzts = new Random();
        zzcL();
    }

    public long getValue() {
        return this.zztt;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void zzcL() {
        /*
        r8 = this;
        r2 = 0;
        r5 = r8.zzpd;
        monitor-enter(r5);
        r0 = 3;
        r4 = r0;
        r0 = r2;
    L_0x0008:
        r4 = r4 + -1;
        if (r4 <= 0) goto L_0x0023;
    L_0x000c:
        r0 = r8.zzts;	 Catch:{ all -> 0x0027 }
        r0 = r0.nextInt();	 Catch:{ all -> 0x0027 }
        r0 = (long) r0;	 Catch:{ all -> 0x0027 }
        r6 = 2147483648; // 0x80000000 float:-0.0 double:1.0609978955E-314;
        r0 = r0 + r6;
        r6 = r8.zztt;	 Catch:{ all -> 0x0027 }
        r6 = (r0 > r6 ? 1 : (r0 == r6 ? 0 : -1));
        if (r6 == 0) goto L_0x0008;
    L_0x001f:
        r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r6 == 0) goto L_0x0008;
    L_0x0023:
        r8.zztt = r0;	 Catch:{ all -> 0x0027 }
        monitor-exit(r5);	 Catch:{ all -> 0x0027 }
        return;
    L_0x0027:
        r0 = move-exception;
        monitor-exit(r5);	 Catch:{ all -> 0x0027 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.client.zzm.zzcL():void");
    }
}
