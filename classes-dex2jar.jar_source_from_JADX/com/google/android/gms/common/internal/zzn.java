package com.google.android.gms.common.internal;

import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import com.google.android.gms.common.GooglePlayServicesUtil;

public class zzn {
    private static final Uri zzagi;
    private static final Uri zzagj;

    static {
        zzagi = Uri.parse("http://plus.google.com/");
        zzagj = zzagi.buildUpon().appendPath("circles").appendPath("find").build();
    }

    public static Intent zzco(String str) {
        Uri fromParts = Uri.fromParts("package", str, null);
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(fromParts);
        return intent;
    }

    public static Intent zzpo() {
        Intent intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
        intent.setPackage("com.google.android.wearable.app");
        return intent;
    }

    private static Uri zzv(String str, String str2) {
        Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter(TriggerIfContentAvailable.ID, str);
        if (!TextUtils.isEmpty(str2)) {
            appendQueryParameter.appendQueryParameter("pcampaignid", str2);
        }
        return appendQueryParameter.build();
    }

    public static Intent zzw(String str, String str2) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(zzv(str, str2));
        intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
        intent.addFlags(AccessibilityNodeInfoCompat.ACTION_COLLAPSE);
        return intent;
    }
}
