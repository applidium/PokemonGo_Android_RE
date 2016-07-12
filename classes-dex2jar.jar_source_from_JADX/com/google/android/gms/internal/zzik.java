package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzp;

public class zzik {
    private long zzJk;
    private long zzJl;
    private Object zzpd;

    public zzik(long j) {
        this.zzJl = Long.MIN_VALUE;
        this.zzpd = new Object();
        this.zzJk = j;
    }

    public boolean tryAcquire() {
        boolean z;
        synchronized (this.zzpd) {
            long elapsedRealtime = zzp.zzbz().elapsedRealtime();
            if (this.zzJl + this.zzJk > elapsedRealtime) {
                z = false;
            } else {
                this.zzJl = elapsedRealtime;
                z = true;
            }
        }
        return z;
    }
}
