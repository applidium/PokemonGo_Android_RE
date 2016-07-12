package com.google.android.gms.ads.internal.formats;

import android.os.Bundle;
import com.google.android.gms.dynamic.zze;
import com.google.android.gms.internal.zzcm;
import com.google.android.gms.internal.zzcq.zza;
import com.google.android.gms.internal.zzgr;
import java.util.List;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public class zzd extends zza implements zzh.zza {
    private final Bundle mExtras;
    private final Object zzpd;
    private final String zzwo;
    private final List<zzc> zzwp;
    private final String zzwq;
    private final zzcm zzwr;
    private final String zzws;
    private final double zzwt;
    private final String zzwu;
    private final String zzwv;
    private final zza zzww;
    private zzh zzwx;

    public zzd(String str, List list, String str2, zzcm com_google_android_gms_internal_zzcm, String str3, double d, String str4, String str5, zza com_google_android_gms_ads_internal_formats_zza, Bundle bundle) {
        this.zzpd = new Object();
        this.zzwo = str;
        this.zzwp = list;
        this.zzwq = str2;
        this.zzwr = com_google_android_gms_internal_zzcm;
        this.zzws = str3;
        this.zzwt = d;
        this.zzwu = str4;
        this.zzwv = str5;
        this.zzww = com_google_android_gms_ads_internal_formats_zza;
        this.mExtras = bundle;
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

    public String getPrice() {
        return this.zzwv;
    }

    public double getStarRating() {
        return this.zzwt;
    }

    public String getStore() {
        return this.zzwu;
    }

    public void zza(zzh com_google_android_gms_ads_internal_formats_zzh) {
        synchronized (this.zzpd) {
            this.zzwx = com_google_android_gms_ads_internal_formats_zzh;
        }
    }

    public zzcm zzdw() {
        return this.zzwr;
    }

    public com.google.android.gms.dynamic.zzd zzdx() {
        return zze.zzy(this.zzwx);
    }

    public String zzdy() {
        return "2";
    }

    public zza zzdz() {
        return this.zzww;
    }
}
