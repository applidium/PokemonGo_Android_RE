package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.zzgr;

@zzgr
public class zza {
    public boolean zza(Context context, AdLauncherIntentInfoParcel adLauncherIntentInfoParcel, zzn com_google_android_gms_ads_internal_overlay_zzn) {
        if (adLauncherIntentInfoParcel == null) {
            zzb.zzaH("No intent data for launcher overlay.");
            return false;
        }
        Intent intent = new Intent();
        if (TextUtils.isEmpty(adLauncherIntentInfoParcel.url)) {
            zzb.zzaH("Open GMSG did not contain a URL.");
            return false;
        }
        if (TextUtils.isEmpty(adLauncherIntentInfoParcel.mimeType)) {
            intent.setData(Uri.parse(adLauncherIntentInfoParcel.url));
        } else {
            intent.setDataAndType(Uri.parse(adLauncherIntentInfoParcel.url), adLauncherIntentInfoParcel.mimeType);
        }
        intent.setAction("android.intent.action.VIEW");
        if (!TextUtils.isEmpty(adLauncherIntentInfoParcel.packageName)) {
            intent.setPackage(adLauncherIntentInfoParcel.packageName);
        }
        if (!TextUtils.isEmpty(adLauncherIntentInfoParcel.zzAL)) {
            String[] split = adLauncherIntentInfoParcel.zzAL.split("/", 2);
            if (split.length < 2) {
                zzb.zzaH("Could not parse component name from open GMSG: " + adLauncherIntentInfoParcel.zzAL);
                return false;
            }
            intent.setClassName(split[0], split[1]);
        }
        Object obj = adLauncherIntentInfoParcel.zzAM;
        if (!TextUtils.isEmpty(obj)) {
            int parseInt;
            try {
                parseInt = Integer.parseInt(obj);
            } catch (NumberFormatException e) {
                zzb.zzaH("Could not parse intent flags.");
                parseInt = 0;
            }
            intent.addFlags(parseInt);
        }
        try {
            zzb.m37v("Launching an intent: " + intent.toURI());
            zzp.zzbv().zzb(context, intent);
            if (com_google_android_gms_ads_internal_overlay_zzn != null) {
                com_google_android_gms_ads_internal_overlay_zzn.zzaO();
            }
            return true;
        } catch (ActivityNotFoundException e2) {
            zzb.zzaH(e2.getMessage());
            return false;
        }
    }
}
