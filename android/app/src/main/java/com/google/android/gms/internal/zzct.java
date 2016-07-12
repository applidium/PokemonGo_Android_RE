package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.ads.formats.NativeAd.Image;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzcm.zza;
import java.util.ArrayList;
import java.util.List;

@zzgr
public class zzct extends NativeContentAd {
    private final List<Image> zzxe;
    private final zzcs zzxg;
    private final zzcn zzxh;

    public zzct(zzcs com_google_android_gms_internal_zzcs) {
        zzcm zzd;
        zzcn com_google_android_gms_internal_zzcn;
        this.zzxe = new ArrayList();
        this.zzxg = com_google_android_gms_internal_zzcs;
        try {
            for (Object zzd2 : this.zzxg.getImages()) {
                zzd = zzd(zzd2);
                if (zzd != null) {
                    this.zzxe.add(new zzcn(zzd));
                }
            }
        } catch (Throwable e) {
            zzb.zzb("Failed to get image.", e);
        }
        try {
            zzd = this.zzxg.zzdA();
            if (zzd != null) {
                com_google_android_gms_internal_zzcn = new zzcn(zzd);
                this.zzxh = com_google_android_gms_internal_zzcn;
            }
        } catch (Throwable e2) {
            zzb.zzb("Failed to get icon.", e2);
        }
        com_google_android_gms_internal_zzcn = null;
        this.zzxh = com_google_android_gms_internal_zzcn;
    }

    public CharSequence getAdvertiser() {
        try {
            return this.zzxg.getAdvertiser();
        } catch (Throwable e) {
            zzb.zzb("Failed to get attribution.", e);
            return null;
        }
    }

    public CharSequence getBody() {
        try {
            return this.zzxg.getBody();
        } catch (Throwable e) {
            zzb.zzb("Failed to get body.", e);
            return null;
        }
    }

    public CharSequence getCallToAction() {
        try {
            return this.zzxg.getCallToAction();
        } catch (Throwable e) {
            zzb.zzb("Failed to get call to action.", e);
            return null;
        }
    }

    public Bundle getExtras() {
        try {
            return this.zzxg.getExtras();
        } catch (Throwable e) {
            zzb.zzd("Failed to get extras", e);
            return null;
        }
    }

    public CharSequence getHeadline() {
        try {
            return this.zzxg.getHeadline();
        } catch (Throwable e) {
            zzb.zzb("Failed to get headline.", e);
            return null;
        }
    }

    public List<Image> getImages() {
        return this.zzxe;
    }

    public Image getLogo() {
        return this.zzxh;
    }

    protected /* synthetic */ Object zzaH() {
        return zzdx();
    }

    zzcm zzd(Object obj) {
        return obj instanceof IBinder ? zza.zzt((IBinder) obj) : null;
    }

    protected zzd zzdx() {
        try {
            return this.zzxg.zzdx();
        } catch (Throwable e) {
            zzb.zzb("Failed to retrieve native ad engine.", e);
            return null;
        }
    }
}
