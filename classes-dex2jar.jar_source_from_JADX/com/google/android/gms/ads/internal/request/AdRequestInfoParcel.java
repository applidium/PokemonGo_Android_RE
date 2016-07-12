package com.google.android.gms.ads.internal.request;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzgr;
import java.util.Collections;
import java.util.List;

@zzgr
public final class AdRequestInfoParcel implements SafeParcelable {
    public static final zzf CREATOR;
    public final ApplicationInfo applicationInfo;
    public final int versionCode;
    public final String zzEA;
    public final long zzEB;
    public final String zzEC;
    public final List<String> zzED;
    public final List<String> zzEE;
    public final long zzEF;
    public final CapabilityParcel zzEG;
    public final String zzEH;
    public final Bundle zzEm;
    public final AdRequestParcel zzEn;
    public final PackageInfo zzEo;
    public final String zzEp;
    public final String zzEq;
    public final String zzEr;
    public final Bundle zzEs;
    public final int zzEt;
    public final Bundle zzEu;
    public final boolean zzEv;
    public final Messenger zzEw;
    public final int zzEx;
    public final int zzEy;
    public final float zzEz;
    public final NativeAdOptionsParcel zzqB;
    public final List<String> zzqD;
    public final String zzqg;
    public final String zzqh;
    public final VersionInfoParcel zzqj;
    public final AdSizeParcel zzqn;

    @zzgr
    public static final class zza {
        public final ApplicationInfo applicationInfo;
        public final String zzEA;
        public final long zzEB;
        public final String zzEC;
        public final List<String> zzED;
        public final List<String> zzEE;
        public final CapabilityParcel zzEG;
        public final String zzEH;
        public final Bundle zzEm;
        public final AdRequestParcel zzEn;
        public final PackageInfo zzEo;
        public final String zzEq;
        public final String zzEr;
        public final Bundle zzEs;
        public final int zzEt;
        public final Bundle zzEu;
        public final boolean zzEv;
        public final Messenger zzEw;
        public final int zzEx;
        public final int zzEy;
        public final float zzEz;
        public final NativeAdOptionsParcel zzqB;
        public final List<String> zzqD;
        public final String zzqg;
        public final String zzqh;
        public final VersionInfoParcel zzqj;
        public final AdSizeParcel zzqn;

        public zza(Bundle bundle, AdRequestParcel adRequestParcel, AdSizeParcel adSizeParcel, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, VersionInfoParcel versionInfoParcel, Bundle bundle2, List<String> list, List<String> list2, Bundle bundle3, boolean z, Messenger messenger, int i, int i2, float f, String str4, long j, String str5, List<String> list3, String str6, NativeAdOptionsParcel nativeAdOptionsParcel, CapabilityParcel capabilityParcel, String str7) {
            this.zzEm = bundle;
            this.zzEn = adRequestParcel;
            this.zzqn = adSizeParcel;
            this.zzqh = str;
            this.applicationInfo = applicationInfo;
            this.zzEo = packageInfo;
            this.zzEq = str2;
            this.zzEr = str3;
            this.zzqj = versionInfoParcel;
            this.zzEs = bundle2;
            this.zzEv = z;
            this.zzEw = messenger;
            this.zzEx = i;
            this.zzEy = i2;
            this.zzEz = f;
            if (list == null || list.size() <= 0) {
                this.zzEt = 0;
                this.zzqD = null;
                this.zzEE = null;
            } else {
                this.zzEt = 3;
                this.zzqD = list;
                this.zzEE = list2;
            }
            this.zzEu = bundle3;
            this.zzEA = str4;
            this.zzEB = j;
            this.zzEC = str5;
            this.zzED = list3;
            this.zzqg = str6;
            this.zzqB = nativeAdOptionsParcel;
            this.zzEG = capabilityParcel;
            this.zzEH = str7;
        }
    }

    static {
        CREATOR = new zzf();
    }

    AdRequestInfoParcel(int i, Bundle bundle, AdRequestParcel adRequestParcel, AdSizeParcel adSizeParcel, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, VersionInfoParcel versionInfoParcel, Bundle bundle2, int i2, List<String> list, Bundle bundle3, boolean z, Messenger messenger, int i3, int i4, float f, String str5, long j, String str6, List<String> list2, String str7, NativeAdOptionsParcel nativeAdOptionsParcel, List<String> list3, long j2, CapabilityParcel capabilityParcel, String str8) {
        this.versionCode = i;
        this.zzEm = bundle;
        this.zzEn = adRequestParcel;
        this.zzqn = adSizeParcel;
        this.zzqh = str;
        this.applicationInfo = applicationInfo;
        this.zzEo = packageInfo;
        this.zzEp = str2;
        this.zzEq = str3;
        this.zzEr = str4;
        this.zzqj = versionInfoParcel;
        this.zzEs = bundle2;
        this.zzEt = i2;
        this.zzqD = list;
        this.zzEE = list3 == null ? Collections.emptyList() : Collections.unmodifiableList(list3);
        this.zzEu = bundle3;
        this.zzEv = z;
        this.zzEw = messenger;
        this.zzEx = i3;
        this.zzEy = i4;
        this.zzEz = f;
        this.zzEA = str5;
        this.zzEB = j;
        this.zzEC = str6;
        this.zzED = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
        this.zzqg = str7;
        this.zzqB = nativeAdOptionsParcel;
        this.zzEF = j2;
        this.zzEG = capabilityParcel;
        this.zzEH = str8;
    }

    public AdRequestInfoParcel(Bundle bundle, AdRequestParcel adRequestParcel, AdSizeParcel adSizeParcel, String str, ApplicationInfo applicationInfo, PackageInfo packageInfo, String str2, String str3, String str4, VersionInfoParcel versionInfoParcel, Bundle bundle2, int i, List<String> list, List<String> list2, Bundle bundle3, boolean z, Messenger messenger, int i2, int i3, float f, String str5, long j, String str6, List<String> list3, String str7, NativeAdOptionsParcel nativeAdOptionsParcel, long j2, CapabilityParcel capabilityParcel, String str8) {
        this(12, bundle, adRequestParcel, adSizeParcel, str, applicationInfo, packageInfo, str2, str3, str4, versionInfoParcel, bundle2, i, list, bundle3, z, messenger, i2, i3, f, str5, j, str6, list3, str7, nativeAdOptionsParcel, list2, j2, capabilityParcel, str8);
    }

    public AdRequestInfoParcel(zza com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza, String str, long j) {
        String str2 = str;
        long j2 = j;
        this(com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEm, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEn, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzqn, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzqh, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.applicationInfo, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEo, str2, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEq, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEr, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzqj, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEs, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEt, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzqD, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEE, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEu, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEv, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEw, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEx, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEy, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEz, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEA, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEB, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEC, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzED, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzqg, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzqB, j2, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEG, com_google_android_gms_ads_internal_request_AdRequestInfoParcel_zza.zzEH);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }
}
