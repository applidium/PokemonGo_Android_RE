package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.zzmx;

public class zze {
    public void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel) {
        zza(context, adOverlayInfoParcel, true);
    }

    public void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z) {
        if (adOverlayInfoParcel.zzBJ == 4 && adOverlayInfoParcel.zzBC == null) {
            if (adOverlayInfoParcel.zzBB != null) {
                adOverlayInfoParcel.zzBB.onAdClicked();
            }
            zzp.zzbs().zza(context, adOverlayInfoParcel.zzBA, adOverlayInfoParcel.zzBI);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzqj.zzJx);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        AdOverlayInfoParcel.zza(intent, adOverlayInfoParcel);
        if (!zzmx.isAtLeastL()) {
            intent.addFlags(AccessibilityNodeInfoCompat.ACTION_COLLAPSE);
        }
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        zzp.zzbv().zzb(context, intent);
    }
}
