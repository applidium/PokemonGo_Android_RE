package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.reward.client.RewardedVideoAdRequestParcel;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.ads.search.SearchAdRequest;
import com.google.android.gms.internal.zzgr;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.List;

@zzgr
public class zzh {
    public static final zzh zztd;

    static {
        zztd = new zzh();
    }

    protected zzh() {
    }

    public static zzh zzcB() {
        return zztd;
    }

    public AdRequestParcel zza(Context context, zzy com_google_android_gms_ads_internal_client_zzy) {
        Date birthday = com_google_android_gms_ads_internal_client_zzy.getBirthday();
        long time = birthday != null ? birthday.getTime() : -1;
        String contentUrl = com_google_android_gms_ads_internal_client_zzy.getContentUrl();
        int gender = com_google_android_gms_ads_internal_client_zzy.getGender();
        Collection keywords = com_google_android_gms_ads_internal_client_zzy.getKeywords();
        List unmodifiableList = !keywords.isEmpty() ? Collections.unmodifiableList(new ArrayList(keywords)) : null;
        boolean isTestDevice = com_google_android_gms_ads_internal_client_zzy.isTestDevice(context);
        int zzcQ = com_google_android_gms_ads_internal_client_zzy.zzcQ();
        Location location = com_google_android_gms_ads_internal_client_zzy.getLocation();
        Bundle networkExtrasBundle = com_google_android_gms_ads_internal_client_zzy.getNetworkExtrasBundle(AdMobAdapter.class);
        boolean manualImpressionsEnabled = com_google_android_gms_ads_internal_client_zzy.getManualImpressionsEnabled();
        String publisherProvidedId = com_google_android_gms_ads_internal_client_zzy.getPublisherProvidedId();
        SearchAdRequest zzcN = com_google_android_gms_ads_internal_client_zzy.zzcN();
        SearchAdRequestParcel searchAdRequestParcel = zzcN != null ? new SearchAdRequestParcel(zzcN) : null;
        String str = null;
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            str = zzp.zzbv().zza(Thread.currentThread().getStackTrace(), applicationContext.getPackageName());
        }
        return new AdRequestParcel(6, time, networkExtrasBundle, gender, unmodifiableList, isTestDevice, zzcQ, manualImpressionsEnabled, publisherProvidedId, searchAdRequestParcel, location, contentUrl, com_google_android_gms_ads_internal_client_zzy.zzcP(), com_google_android_gms_ads_internal_client_zzy.getCustomTargeting(), Collections.unmodifiableList(new ArrayList(com_google_android_gms_ads_internal_client_zzy.zzcR())), com_google_android_gms_ads_internal_client_zzy.zzcM(), str);
    }

    public RewardedVideoAdRequestParcel zza(Context context, zzy com_google_android_gms_ads_internal_client_zzy, String str) {
        return new RewardedVideoAdRequestParcel(zza(context, com_google_android_gms_ads_internal_client_zzy), str);
    }
}
