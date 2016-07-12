package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzcm.zza;
import java.util.ArrayList;
import java.util.List;

@zzgr
public class zzcr extends NativeAppInstallAd {
    private final zzcq zzxd;
    private final List<Image> zzxe;
    private final zzcn zzxf;

    public zzcr(zzcq com_google_android_gms_internal_zzcq) {
        zzcm zzd;
        zzcn com_google_android_gms_internal_zzcn;
        this.zzxe = new ArrayList();
        this.zzxd = com_google_android_gms_internal_zzcq;
        try {
            for (Object zzd2 : this.zzxd.getImages()) {
                zzd = zzd(zzd2);
                if (zzd != null) {
                    this.zzxe.add(new zzcn(zzd));
                }
            }
        } catch (Throwable e) {
            zzb.zzb("Failed to get image.", e);
        }
        try {
            zzd = this.zzxd.zzdw();
            if (zzd != null) {
                com_google_android_gms_internal_zzcn = new zzcn(zzd);
                this.zzxf = com_google_android_gms_internal_zzcn;
            }
        } catch (Throwable e2) {
            zzb.zzb("Failed to get icon.", e2);
        }
        com_google_android_gms_internal_zzcn = null;
        this.zzxf = com_google_android_gms_internal_zzcn;
    }

    public CharSequence getBody() {
        try {
            return this.zzxd.getBody();
        } catch (Throwable e) {
            zzb.zzb("Failed to get body.", e);
            return null;
        }
    }

    public CharSequence getCallToAction() {
        try {
            return this.zzxd.getCallToAction();
        } catch (Throwable e) {
            zzb.zzb("Failed to get call to action.", e);
            return null;
        }
    }

    public Bundle getExtras() {
        try {
            return this.zzxd.getExtras();
        } catch (Throwable e) {
            zzb.zzb("Failed to get extras", e);
            return null;
        }
    }

    public CharSequence getHeadline() {
        try {
            return this.zzxd.getHeadline();
        } catch (Throwable e) {
            zzb.zzb("Failed to get headline.", e);
            return null;
        }
    }

    public Image getIcon() {
        return this.zzxf;
    }

    public List<Image> getImages() {
        return this.zzxe;
    }

    public CharSequence getPrice() {
        try {
            return this.zzxd.getPrice();
        } catch (Throwable e) {
            zzb.zzb("Failed to get price.", e);
            return null;
        }
    }

    public Double getStarRating() {
        try {
            double starRating = this.zzxd.getStarRating();
            return starRating == -1.0d ? null : Double.valueOf(starRating);
        } catch (Throwable e) {
            zzb.zzb("Failed to get star rating.", e);
            return null;
        }
    }

    public CharSequence getStore() {
        try {
            return this.zzxd.getStore();
        } catch (Throwable e) {
            zzb.zzb("Failed to get store", e);
            return null;
        }
    }

    protected /* synthetic */ Object zzaH() {
        return zzdx();
    }

    zzcm zzd(Object obj) {
        return obj instanceof IBinder ? zza.zzt((IBinder) obj) : null;
    }

    protected zzd zzdx() {
        try {
            return this.zzxd.zzdx();
        } catch (Throwable e) {
            zzb.zzb("Failed to retrieve native ad engine.", e);
            return null;
        }
    }
}
