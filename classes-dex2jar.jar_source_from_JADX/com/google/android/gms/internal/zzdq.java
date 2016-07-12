package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zze;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import java.util.HashMap;
import java.util.Map;
import spacemadness.com.lunarconsole.C1401R;

@zzgr
public class zzdq implements zzdk {
    static final Map<String, Integer> zzxS;
    private final zze zzxQ;
    private final zzfc zzxR;

    static {
        zzxS = new HashMap();
        zzxS.put("resize", Integer.valueOf(1));
        zzxS.put("playVideo", Integer.valueOf(2));
        zzxS.put("storePicture", Integer.valueOf(3));
        zzxS.put("createCalendarEvent", Integer.valueOf(4));
        zzxS.put("setOrientationProperties", Integer.valueOf(5));
        zzxS.put("closeResizedAd", Integer.valueOf(6));
    }

    public zzdq(zze com_google_android_gms_ads_internal_zze, zzfc com_google_android_gms_internal_zzfc) {
        this.zzxQ = com_google_android_gms_ads_internal_zze;
        this.zzxR = com_google_android_gms_internal_zzfc;
    }

    public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        int intValue = ((Integer) zzxS.get((String) map.get("a"))).intValue();
        if (intValue == 5 || this.zzxQ == null || this.zzxQ.zzbe()) {
            switch (intValue) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    this.zzxR.zzg(map);
                    return;
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    new zzfe(com_google_android_gms_internal_zziz, map).execute();
                    return;
                case Place.TYPE_AQUARIUM /*4*/:
                    new zzfb(com_google_android_gms_internal_zziz, map).execute();
                    return;
                case Place.TYPE_ART_GALLERY /*5*/:
                    new zzfd(com_google_android_gms_internal_zziz, map).execute();
                    return;
                case Place.TYPE_ATM /*6*/:
                    this.zzxR.zzn(true);
                    return;
                default:
                    zzb.zzaG("Unknown MRAID command called.");
                    return;
            }
        }
        this.zzxQ.zzp(null);
    }
}
