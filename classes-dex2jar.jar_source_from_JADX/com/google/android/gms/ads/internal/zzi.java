package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.zzo;
import com.google.android.gms.ads.internal.client.zzp.zza;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.zzcw;
import com.google.android.gms.internal.zzcx;
import com.google.android.gms.internal.zzcy;
import com.google.android.gms.internal.zzcz;
import com.google.android.gms.internal.zzem;
import com.google.android.gms.internal.zzgr;
import com.google.android.gms.internal.zzid;
import com.google.android.gms.internal.zzmi;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@zzgr
public class zzi extends zza {
    private final Context mContext;
    private final zzo zzoT;
    private final zzcw zzoU;
    private final zzcx zzoV;
    private final zzmi<String, zzcz> zzoW;
    private final zzmi<String, zzcy> zzoX;
    private final NativeAdOptionsParcel zzoY;
    private final List<String> zzoZ;
    private final zzem zzox;
    private final String zzpa;
    private final VersionInfoParcel zzpb;
    private WeakReference<zzn> zzpc;
    private Object zzpd;

    /* renamed from: com.google.android.gms.ads.internal.zzi.1 */
    class C02071 implements Runnable {
        final /* synthetic */ AdRequestParcel zzpe;
        final /* synthetic */ zzi zzpf;

        C02071(zzi com_google_android_gms_ads_internal_zzi, AdRequestParcel adRequestParcel) {
            this.zzpf = com_google_android_gms_ads_internal_zzi;
            this.zzpe = adRequestParcel;
        }

        public void run() {
            synchronized (this.zzpf.zzpd) {
                zzn zzbj = this.zzpf.zzbj();
                this.zzpf.zzpc = new WeakReference(zzbj);
                zzbj.zzb(this.zzpf.zzoU);
                zzbj.zzb(this.zzpf.zzoV);
                zzbj.zza(this.zzpf.zzoW);
                zzbj.zza(this.zzpf.zzoT);
                zzbj.zzb(this.zzpf.zzoX);
                zzbj.zza(this.zzpf.zzbi());
                zzbj.zzb(this.zzpf.zzoY);
                zzbj.zzb(this.zzpe);
            }
        }
    }

    zzi(Context context, String str, zzem com_google_android_gms_internal_zzem, VersionInfoParcel versionInfoParcel, zzo com_google_android_gms_ads_internal_client_zzo, zzcw com_google_android_gms_internal_zzcw, zzcx com_google_android_gms_internal_zzcx, zzmi<String, zzcz> com_google_android_gms_internal_zzmi_java_lang_String__com_google_android_gms_internal_zzcz, zzmi<String, zzcy> com_google_android_gms_internal_zzmi_java_lang_String__com_google_android_gms_internal_zzcy, NativeAdOptionsParcel nativeAdOptionsParcel) {
        this.zzpd = new Object();
        this.mContext = context;
        this.zzpa = str;
        this.zzox = com_google_android_gms_internal_zzem;
        this.zzpb = versionInfoParcel;
        this.zzoT = com_google_android_gms_ads_internal_client_zzo;
        this.zzoV = com_google_android_gms_internal_zzcx;
        this.zzoU = com_google_android_gms_internal_zzcw;
        this.zzoW = com_google_android_gms_internal_zzmi_java_lang_String__com_google_android_gms_internal_zzcz;
        this.zzoX = com_google_android_gms_internal_zzmi_java_lang_String__com_google_android_gms_internal_zzcy;
        this.zzoY = nativeAdOptionsParcel;
        this.zzoZ = zzbi();
    }

    private List<String> zzbi() {
        List<String> arrayList = new ArrayList();
        if (this.zzoV != null) {
            arrayList.add("1");
        }
        if (this.zzoU != null) {
            arrayList.add("2");
        }
        if (this.zzoW.size() > 0) {
            arrayList.add("3");
        }
        return arrayList;
    }

    public String getMediationAdapterClassName() {
        synchronized (this.zzpd) {
            if (this.zzpc != null) {
                zzn com_google_android_gms_ads_internal_zzn = (zzn) this.zzpc.get();
                String mediationAdapterClassName = com_google_android_gms_ads_internal_zzn != null ? com_google_android_gms_ads_internal_zzn.getMediationAdapterClassName() : null;
                return mediationAdapterClassName;
            }
            return null;
        }
    }

    public boolean isLoading() {
        synchronized (this.zzpd) {
            if (this.zzpc != null) {
                zzn com_google_android_gms_ads_internal_zzn = (zzn) this.zzpc.get();
                boolean isLoading = com_google_android_gms_ads_internal_zzn != null ? com_google_android_gms_ads_internal_zzn.isLoading() : false;
                return isLoading;
            }
            return false;
        }
    }

    protected void runOnUiThread(Runnable runnable) {
        zzid.zzIE.post(runnable);
    }

    protected zzn zzbj() {
        return new zzn(this.mContext, AdSizeParcel.zzs(this.mContext), this.zzpa, this.zzox, this.zzpb);
    }

    public void zzf(AdRequestParcel adRequestParcel) {
        runOnUiThread(new C02071(this, adRequestParcel));
    }
}
