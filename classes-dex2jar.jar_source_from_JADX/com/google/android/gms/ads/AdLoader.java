package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener;
import com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener;
import com.google.android.gms.ads.internal.client.zzc;
import com.google.android.gms.ads.internal.client.zzd;
import com.google.android.gms.ads.internal.client.zzh;
import com.google.android.gms.ads.internal.client.zzp;
import com.google.android.gms.ads.internal.client.zzq;
import com.google.android.gms.ads.internal.client.zzy;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzdb;
import com.google.android.gms.internal.zzdc;
import com.google.android.gms.internal.zzdd;
import com.google.android.gms.internal.zzde;
import com.google.android.gms.internal.zzel;

public class AdLoader {
    private final Context mContext;
    private final zzh zznL;
    private final zzp zznM;

    public static class Builder {
        private final Context mContext;
        private final zzq zznN;

        Builder(Context context, zzq com_google_android_gms_ads_internal_client_zzq) {
            this.mContext = context;
            this.zznN = com_google_android_gms_ads_internal_client_zzq;
        }

        public Builder(Context context, String str) {
            this(context, zzd.zza(context, str, new zzel()));
        }

        public AdLoader build() {
            try {
                return new AdLoader(this.mContext, this.zznN.zzbk());
            } catch (Throwable e) {
                zzb.zzb("Failed to build AdLoader.", e);
                return null;
            }
        }

        public Builder forAppInstallAd(OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
            try {
                this.zznN.zza(new zzdb(onAppInstallAdLoadedListener));
            } catch (Throwable e) {
                zzb.zzd("Failed to add app install ad listener", e);
            }
            return this;
        }

        public Builder forContentAd(OnContentAdLoadedListener onContentAdLoadedListener) {
            try {
                this.zznN.zza(new zzdc(onContentAdLoadedListener));
            } catch (Throwable e) {
                zzb.zzd("Failed to add content ad listener", e);
            }
            return this;
        }

        public Builder forCustomTemplateAd(String str, OnCustomTemplateAdLoadedListener onCustomTemplateAdLoadedListener, OnCustomClickListener onCustomClickListener) {
            try {
                this.zznN.zza(str, new zzde(onCustomTemplateAdLoadedListener), onCustomClickListener == null ? null : new zzdd(onCustomClickListener));
            } catch (Throwable e) {
                zzb.zzd("Failed to add custom template ad listener", e);
            }
            return this;
        }

        public Builder withAdListener(AdListener adListener) {
            try {
                this.zznN.zzb(new zzc(adListener));
            } catch (Throwable e) {
                zzb.zzd("Failed to set AdListener.", e);
            }
            return this;
        }

        public Builder withNativeAdOptions(NativeAdOptions nativeAdOptions) {
            try {
                this.zznN.zza(new NativeAdOptionsParcel(nativeAdOptions));
            } catch (Throwable e) {
                zzb.zzd("Failed to specify native ad options", e);
            }
            return this;
        }
    }

    AdLoader(Context context, zzp com_google_android_gms_ads_internal_client_zzp) {
        this(context, com_google_android_gms_ads_internal_client_zzp, zzh.zzcB());
    }

    AdLoader(Context context, zzp com_google_android_gms_ads_internal_client_zzp, zzh com_google_android_gms_ads_internal_client_zzh) {
        this.mContext = context;
        this.zznM = com_google_android_gms_ads_internal_client_zzp;
        this.zznL = com_google_android_gms_ads_internal_client_zzh;
    }

    private void zza(zzy com_google_android_gms_ads_internal_client_zzy) {
        try {
            this.zznM.zzf(this.zznL.zza(this.mContext, com_google_android_gms_ads_internal_client_zzy));
        } catch (Throwable e) {
            zzb.zzb("Failed to load ad.", e);
        }
    }

    public String getMediationAdapterClassName() {
        try {
            return this.zznM.getMediationAdapterClassName();
        } catch (Throwable e) {
            zzb.zzd("Failed to get the mediation adapter class name.", e);
            return null;
        }
    }

    public boolean isLoading() {
        try {
            return this.zznM.isLoading();
        } catch (Throwable e) {
            zzb.zzd("Failed to check if ad is loading.", e);
            return false;
        }
    }

    public void loadAd(AdRequest adRequest) {
        zza(adRequest.zzaF());
    }

    public void loadAd(PublisherAdRequest publisherAdRequest) {
        zza(publisherAdRequest.zzaF());
    }
}
