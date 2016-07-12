package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zza;
import java.util.ArrayList;
import java.util.List;

class zzir {
    private final Object zzJI;
    private final List<Runnable> zzJJ;
    private final List<Runnable> zzJK;
    private boolean zzJL;

    public zzir() {
        this.zzJI = new Object();
        this.zzJJ = new ArrayList();
        this.zzJK = new ArrayList();
        this.zzJL = false;
    }

    private void zze(Runnable runnable) {
        zzic.zza(runnable);
    }

    private void zzf(Runnable runnable) {
        zza.zzJt.post(runnable);
    }

    public void zzc(Runnable runnable) {
        synchronized (this.zzJI) {
            if (this.zzJL) {
                zze(runnable);
            } else {
                this.zzJJ.add(runnable);
            }
        }
    }

    public void zzd(Runnable runnable) {
        synchronized (this.zzJI) {
            if (this.zzJL) {
                zzf(runnable);
            } else {
                this.zzJK.add(runnable);
            }
        }
    }

    public void zzgV() {
        synchronized (this.zzJI) {
            if (this.zzJL) {
                return;
            }
            for (Runnable zze : this.zzJJ) {
                zze(zze);
            }
            for (Runnable zze2 : this.zzJK) {
                zzf(zze2);
            }
            this.zzJJ.clear();
            this.zzJK.clear();
            this.zzJL = true;
        }
    }
}
