package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.zzp;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@zzgr
public class zzdu implements Iterable<zzdt> {
    private final List<zzdt> zzyb;

    public zzdu() {
        this.zzyb = new LinkedList();
    }

    private zzdt zzc(zziz com_google_android_gms_internal_zziz) {
        Iterator it = zzp.zzbI().iterator();
        while (it.hasNext()) {
            zzdt com_google_android_gms_internal_zzdt = (zzdt) it.next();
            if (com_google_android_gms_internal_zzdt.zzoM == com_google_android_gms_internal_zziz) {
                return com_google_android_gms_internal_zzdt;
            }
        }
        return null;
    }

    public Iterator<zzdt> iterator() {
        return this.zzyb.iterator();
    }

    public void zza(zzdt com_google_android_gms_internal_zzdt) {
        this.zzyb.add(com_google_android_gms_internal_zzdt);
    }

    public boolean zza(zziz com_google_android_gms_internal_zziz) {
        zzdt zzc = zzc(com_google_android_gms_internal_zziz);
        if (zzc == null) {
            return false;
        }
        zzc.zzxY.abort();
        return true;
    }

    public void zzb(zzdt com_google_android_gms_internal_zzdt) {
        this.zzyb.remove(com_google_android_gms_internal_zzdt);
    }

    public boolean zzb(zziz com_google_android_gms_internal_zziz) {
        return zzc(com_google_android_gms_internal_zziz) != null;
    }
}
