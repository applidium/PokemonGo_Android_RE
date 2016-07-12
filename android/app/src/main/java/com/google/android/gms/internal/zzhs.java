package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@zzgr
public class zzhs {
    public final int errorCode;
    public final int orientation;
    public final zziz zzBD;
    public final long zzEJ;
    public final boolean zzEK;
    public final long zzEL;
    public final List<String> zzEM;
    public final String zzEP;
    public final AdRequestParcel zzEn;
    public final String zzEq;
    public final long zzHA;
    public final com.google.android.gms.ads.internal.formats.zzh.zza zzHB;
    public final JSONObject zzHw;
    public final zzee zzHx;
    public final AdSizeParcel zzHy;
    public final long zzHz;
    public final List<String> zzyY;
    public final List<String> zzyZ;
    public final long zzzc;
    public final zzed zzzu;
    public final zzen zzzv;
    public final String zzzw;
    public final zzeg zzzx;

    @zzgr
    public static final class zza {
        public final int errorCode;
        public final long zzHA;
        public final AdRequestInfoParcel zzHC;
        public final AdResponseParcel zzHD;
        public final JSONObject zzHw;
        public final zzee zzHx;
        public final long zzHz;
        public final AdSizeParcel zzqn;

        public zza(AdRequestInfoParcel adRequestInfoParcel, AdResponseParcel adResponseParcel, zzee com_google_android_gms_internal_zzee, AdSizeParcel adSizeParcel, int i, long j, long j2, JSONObject jSONObject) {
            this.zzHC = adRequestInfoParcel;
            this.zzHD = adResponseParcel;
            this.zzHx = com_google_android_gms_internal_zzee;
            this.zzqn = adSizeParcel;
            this.errorCode = i;
            this.zzHz = j;
            this.zzHA = j2;
            this.zzHw = jSONObject;
        }
    }

    public zzhs(AdRequestParcel adRequestParcel, zziz com_google_android_gms_internal_zziz, List<String> list, int i, List<String> list2, List<String> list3, int i2, long j, String str, boolean z, zzed com_google_android_gms_internal_zzed, zzen com_google_android_gms_internal_zzen, String str2, zzee com_google_android_gms_internal_zzee, zzeg com_google_android_gms_internal_zzeg, long j2, AdSizeParcel adSizeParcel, long j3, long j4, long j5, String str3, JSONObject jSONObject, com.google.android.gms.ads.internal.formats.zzh.zza com_google_android_gms_ads_internal_formats_zzh_zza) {
        this.zzEn = adRequestParcel;
        this.zzBD = com_google_android_gms_internal_zziz;
        this.zzyY = list != null ? Collections.unmodifiableList(list) : null;
        this.errorCode = i;
        this.zzyZ = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.zzEM = list3 != null ? Collections.unmodifiableList(list3) : null;
        this.orientation = i2;
        this.zzzc = j;
        this.zzEq = str;
        this.zzEK = z;
        this.zzzu = com_google_android_gms_internal_zzed;
        this.zzzv = com_google_android_gms_internal_zzen;
        this.zzzw = str2;
        this.zzHx = com_google_android_gms_internal_zzee;
        this.zzzx = com_google_android_gms_internal_zzeg;
        this.zzEL = j2;
        this.zzHy = adSizeParcel;
        this.zzEJ = j3;
        this.zzHz = j4;
        this.zzHA = j5;
        this.zzEP = str3;
        this.zzHw = jSONObject;
        this.zzHB = com_google_android_gms_ads_internal_formats_zzh_zza;
    }

    public zzhs(zza com_google_android_gms_internal_zzhs_zza, zziz com_google_android_gms_internal_zziz, zzed com_google_android_gms_internal_zzed, zzen com_google_android_gms_internal_zzen, String str, zzeg com_google_android_gms_internal_zzeg, com.google.android.gms.ads.internal.formats.zzh.zza com_google_android_gms_ads_internal_formats_zzh_zza) {
        zziz com_google_android_gms_internal_zziz2 = com_google_android_gms_internal_zziz;
        zzed com_google_android_gms_internal_zzed2 = com_google_android_gms_internal_zzed;
        zzen com_google_android_gms_internal_zzen2 = com_google_android_gms_internal_zzen;
        String str2 = str;
        zzeg com_google_android_gms_internal_zzeg2 = com_google_android_gms_internal_zzeg;
        this(com_google_android_gms_internal_zzhs_zza.zzHC.zzEn, com_google_android_gms_internal_zziz2, com_google_android_gms_internal_zzhs_zza.zzHD.zzyY, com_google_android_gms_internal_zzhs_zza.errorCode, com_google_android_gms_internal_zzhs_zza.zzHD.zzyZ, com_google_android_gms_internal_zzhs_zza.zzHD.zzEM, com_google_android_gms_internal_zzhs_zza.zzHD.orientation, com_google_android_gms_internal_zzhs_zza.zzHD.zzzc, com_google_android_gms_internal_zzhs_zza.zzHC.zzEq, com_google_android_gms_internal_zzhs_zza.zzHD.zzEK, com_google_android_gms_internal_zzed2, com_google_android_gms_internal_zzen2, str2, com_google_android_gms_internal_zzhs_zza.zzHx, com_google_android_gms_internal_zzeg2, com_google_android_gms_internal_zzhs_zza.zzHD.zzEL, com_google_android_gms_internal_zzhs_zza.zzqn, com_google_android_gms_internal_zzhs_zza.zzHD.zzEJ, com_google_android_gms_internal_zzhs_zza.zzHz, com_google_android_gms_internal_zzhs_zza.zzHA, com_google_android_gms_internal_zzhs_zza.zzHD.zzEP, com_google_android_gms_internal_zzhs_zza.zzHw, com_google_android_gms_ads_internal_formats_zzh_zza);
    }

    public boolean zzbY() {
        return (this.zzBD == null || this.zzBD.zzhe() == null) ? false : this.zzBD.zzhe().zzbY();
    }
}
