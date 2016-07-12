package com.google.android.gms.internal;

import android.support.v4.widget.ExploreByTouchHelper;
import com.google.android.gms.ads.internal.util.client.zzb;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@zzgr
public class zzbi {
    private final Object zzpd;
    private int zzrX;
    private List<zzbh> zzrY;

    public zzbi() {
        this.zzpd = new Object();
        this.zzrY = new LinkedList();
    }

    public boolean zza(zzbh com_google_android_gms_internal_zzbh) {
        boolean z;
        synchronized (this.zzpd) {
            if (this.zzrY.contains(com_google_android_gms_internal_zzbh)) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public boolean zzb(zzbh com_google_android_gms_internal_zzbh) {
        boolean z;
        synchronized (this.zzpd) {
            Iterator it = this.zzrY.iterator();
            while (it.hasNext()) {
                zzbh com_google_android_gms_internal_zzbh2 = (zzbh) it.next();
                if (com_google_android_gms_internal_zzbh != com_google_android_gms_internal_zzbh2 && com_google_android_gms_internal_zzbh2.zzcm().equals(com_google_android_gms_internal_zzbh.zzcm())) {
                    it.remove();
                    z = true;
                    break;
                }
            }
            z = false;
        }
        return z;
    }

    public void zzc(zzbh com_google_android_gms_internal_zzbh) {
        synchronized (this.zzpd) {
            if (this.zzrY.size() >= 10) {
                zzb.zzaF("Queue is full, current size = " + this.zzrY.size());
                this.zzrY.remove(0);
            }
            int i = this.zzrX;
            this.zzrX = i + 1;
            com_google_android_gms_internal_zzbh.zzg(i);
            this.zzrY.add(com_google_android_gms_internal_zzbh);
        }
    }

    public zzbh zzcs() {
        zzbh com_google_android_gms_internal_zzbh = null;
        synchronized (this.zzpd) {
            if (this.zzrY.size() == 0) {
                zzb.zzaF("Queue empty");
                return null;
            } else if (this.zzrY.size() >= 2) {
                int i = ExploreByTouchHelper.INVALID_ID;
                for (zzbh com_google_android_gms_internal_zzbh2 : this.zzrY) {
                    int i2;
                    int score = com_google_android_gms_internal_zzbh2.getScore();
                    if (score > i) {
                        i2 = score;
                    } else {
                        com_google_android_gms_internal_zzbh2 = com_google_android_gms_internal_zzbh;
                        i2 = i;
                    }
                    i = i2;
                    com_google_android_gms_internal_zzbh = com_google_android_gms_internal_zzbh2;
                }
                this.zzrY.remove(com_google_android_gms_internal_zzbh);
                return com_google_android_gms_internal_zzbh;
            } else {
                com_google_android_gms_internal_zzbh2 = (zzbh) this.zzrY.get(0);
                com_google_android_gms_internal_zzbh2.zzcn();
                return com_google_android_gms_internal_zzbh2;
            }
        }
    }
}
