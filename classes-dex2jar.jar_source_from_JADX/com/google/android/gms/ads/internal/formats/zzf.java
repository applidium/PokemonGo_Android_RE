package com.google.android.gms.ads.internal.formats;

import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzcm;
import com.google.android.gms.internal.zzcu.zza;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzmi;
import java.util.Arrays;
import java.util.List;

@zzgr
public class zzf extends zza implements zzh.zza {
    private final Object zzpd;
    private final String zzwA;
    private final zzmi<String, zzc> zzwB;
    private final zzmi<String, String> zzwC;
    private final zza zzww;
    private zzh zzwx;

    public zzf(String str, zzmi<String, zzc> com_google_android_gms_internal_zzmi_java_lang_String__com_google_android_gms_ads_internal_formats_zzc, zzmi<String, String> com_google_android_gms_internal_zzmi_java_lang_String__java_lang_String, zza com_google_android_gms_ads_internal_formats_zza) {
        this.zzpd = new Object();
        this.zzwA = str;
        this.zzwB = com_google_android_gms_internal_zzmi_java_lang_String__com_google_android_gms_ads_internal_formats_zzc;
        this.zzwC = com_google_android_gms_internal_zzmi_java_lang_String__java_lang_String;
        this.zzww = com_google_android_gms_ads_internal_formats_zza;
    }

    public List<String> getAvailableAssetNames() {
        int i = 0;
        String[] strArr = new String[(this.zzwB.size() + this.zzwC.size())];
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzwB.size(); i3++) {
            strArr[i2] = (String) this.zzwB.keyAt(i3);
            i2++;
        }
        while (i < this.zzwC.size()) {
            strArr[i2] = (String) this.zzwC.keyAt(i);
            i++;
            i2++;
        }
        return Arrays.asList(strArr);
    }

    public String getCustomTemplateId() {
        return this.zzwA;
    }

    public void performClick(String str) {
        synchronized (this.zzpd) {
            if (this.zzwx == null) {
                zzb.m36e("Attempt to call performClick before ad initialized.");
                return;
            }
            this.zzwx.zza(str, null, null);
        }
    }

    public void recordImpression() {
        synchronized (this.zzpd) {
            if (this.zzwx == null) {
                zzb.m36e("Attempt to perform recordImpression before ad initialized.");
                return;
            }
            this.zzwx.recordImpression();
        }
    }

    public String zzU(String str) {
        return (String) this.zzwC.get(str);
    }

    public zzcm zzV(String str) {
        return (zzcm) this.zzwB.get(str);
    }

    public void zza(zzh com_google_android_gms_ads_internal_formats_zzh) {
        synchronized (this.zzpd) {
            this.zzwx = com_google_android_gms_ads_internal_formats_zzh;
        }
    }

    public String zzdy() {
        return "3";
    }

    public zza zzdz() {
        return this.zzww;
    }
}
