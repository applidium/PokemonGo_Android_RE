package com.google.android.gms.ads.internal.formats;

import android.os.Bundle;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzcm;
import com.google.android.gms.internal.zzcs.zza;
import com.google.android.gms.internal.zzgr;
import java.util.List;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public class zze extends zza implements zzh.zza {
    private final Bundle mExtras;
    private final Object zzpd;
    private final String zzwo;
    private final List<zzc> zzwp;
    private final String zzwq;
    private final String zzws;
    private final zza zzww;
    private zzh zzwx;
    private final zzcm zzwy;
    private final String zzwz;

    public zze(String str, List list, String str2, zzcm com_google_android_gms_internal_zzcm, String str3, String str4, zza com_google_android_gms_ads_internal_formats_zza, Bundle bundle) {
        this.zzpd = new Object();
        this.zzwo = str;
        this.zzwp = list;
        this.zzwq = str2;
        this.zzwy = com_google_android_gms_internal_zzcm;
        this.zzws = str3;
        this.zzwz = str4;
        this.zzww = com_google_android_gms_ads_internal_formats_zza;
        this.mExtras = bundle;
    }

    public String getAdvertiser() {
        return this.zzwz;
    }

    public String getBody() {
        return this.zzwq;
    }

    public String getCallToAction() {
        return this.zzws;
    }

    public String getCustomTemplateId() {
        return BuildConfig.FLAVOR;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public String getHeadline() {
        return this.zzwo;
    }

    public List getImages() {
        return this.zzwp;
    }

    public void zza(zzh com_google_android_gms_ads_internal_formats_zzh) {
        synchronized (this.zzpd) {
            this.zzwx = com_google_android_gms_ads_internal_formats_zzh;
        }
    }

    public zzcm zzdA() {
        return this.zzwy;
    }

    public zzd zzdx() {
        return com.google.android.gms.dynamic.zze.zzy(this.zzwx);
    }

    public String zzdy() {
        return "1";
    }

    public zza zzdz() {
        return this.zzww;
    }
}
