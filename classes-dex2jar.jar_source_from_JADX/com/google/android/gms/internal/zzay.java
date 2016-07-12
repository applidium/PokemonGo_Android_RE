package com.google.android.gms.internal;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.WeakHashMap;

@zzgr
public class zzay implements zzba {
    private final VersionInfoParcel zzpb;
    private final Object zzpd;
    private final WeakHashMap<zzhs, zzaz> zzqX;
    private final ArrayList<zzaz> zzqY;
    private final Context zzqZ;
    private final zzdz zzra;

    public zzay(Context context, VersionInfoParcel versionInfoParcel, zzdz com_google_android_gms_internal_zzdz) {
        this.zzpd = new Object();
        this.zzqX = new WeakHashMap();
        this.zzqY = new ArrayList();
        this.zzqZ = context.getApplicationContext();
        this.zzpb = versionInfoParcel;
        this.zzra = com_google_android_gms_internal_zzdz;
    }

    public zzaz zza(AdSizeParcel adSizeParcel, zzhs com_google_android_gms_internal_zzhs) {
        return zza(adSizeParcel, com_google_android_gms_internal_zzhs, com_google_android_gms_internal_zzhs.zzBD.getView());
    }

    public zzaz zza(AdSizeParcel adSizeParcel, zzhs com_google_android_gms_internal_zzhs, View view) {
        zzaz com_google_android_gms_internal_zzaz;
        synchronized (this.zzpd) {
            if (zzd(com_google_android_gms_internal_zzhs)) {
                com_google_android_gms_internal_zzaz = (zzaz) this.zzqX.get(com_google_android_gms_internal_zzhs);
            } else {
                com_google_android_gms_internal_zzaz = new zzaz(adSizeParcel, com_google_android_gms_internal_zzhs, this.zzpb, view, this.zzra);
                com_google_android_gms_internal_zzaz.zza((zzba) this);
                this.zzqX.put(com_google_android_gms_internal_zzhs, com_google_android_gms_internal_zzaz);
                this.zzqY.add(com_google_android_gms_internal_zzaz);
            }
        }
        return com_google_android_gms_internal_zzaz;
    }

    public void zza(zzaz com_google_android_gms_internal_zzaz) {
        synchronized (this.zzpd) {
            if (!com_google_android_gms_internal_zzaz.zzcd()) {
                this.zzqY.remove(com_google_android_gms_internal_zzaz);
                Iterator it = this.zzqX.entrySet().iterator();
                while (it.hasNext()) {
                    if (((Entry) it.next()).getValue() == com_google_android_gms_internal_zzaz) {
                        it.remove();
                    }
                }
            }
        }
    }

    public boolean zzd(zzhs com_google_android_gms_internal_zzhs) {
        boolean z;
        synchronized (this.zzpd) {
            zzaz com_google_android_gms_internal_zzaz = (zzaz) this.zzqX.get(com_google_android_gms_internal_zzhs);
            z = com_google_android_gms_internal_zzaz != null && com_google_android_gms_internal_zzaz.zzcd();
        }
        return z;
    }

    public void zze(zzhs com_google_android_gms_internal_zzhs) {
        synchronized (this.zzpd) {
            zzaz com_google_android_gms_internal_zzaz = (zzaz) this.zzqX.get(com_google_android_gms_internal_zzhs);
            if (com_google_android_gms_internal_zzaz != null) {
                com_google_android_gms_internal_zzaz.zzcb();
            }
        }
    }

    public void zzf(zzhs com_google_android_gms_internal_zzhs) {
        synchronized (this.zzpd) {
            zzaz com_google_android_gms_internal_zzaz = (zzaz) this.zzqX.get(com_google_android_gms_internal_zzhs);
            if (com_google_android_gms_internal_zzaz != null) {
                com_google_android_gms_internal_zzaz.stop();
            }
        }
    }

    public void zzg(zzhs com_google_android_gms_internal_zzhs) {
        synchronized (this.zzpd) {
            zzaz com_google_android_gms_internal_zzaz = (zzaz) this.zzqX.get(com_google_android_gms_internal_zzhs);
            if (com_google_android_gms_internal_zzaz != null) {
                com_google_android_gms_internal_zzaz.pause();
            }
        }
    }

    public void zzh(zzhs com_google_android_gms_internal_zzhs) {
        synchronized (this.zzpd) {
            zzaz com_google_android_gms_internal_zzaz = (zzaz) this.zzqX.get(com_google_android_gms_internal_zzhs);
            if (com_google_android_gms_internal_zzaz != null) {
                com_google_android_gms_internal_zzaz.resume();
            }
        }
    }
}
