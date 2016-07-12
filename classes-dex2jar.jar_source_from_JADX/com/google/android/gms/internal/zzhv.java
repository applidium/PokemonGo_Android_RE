package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.util.client.zzb;

@zzgr
public class zzhv {
    final String zzHP;
    long zzId;
    long zzIe;
    int zzIf;
    int zzIg;
    int zzIh;
    private final Object zzpd;

    public zzhv(String str) {
        this.zzId = -1;
        this.zzIe = -1;
        this.zzIf = -1;
        this.zzpd = new Object();
        this.zzIg = 0;
        this.zzIh = 0;
        this.zzHP = str;
    }

    public static boolean zzF(Context context) {
        int identifier = context.getResources().getIdentifier("Theme.Translucent", "style", "android");
        if (identifier == 0) {
            zzb.zzaG("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                return true;
            }
            zzb.zzaG("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (NameNotFoundException e) {
            zzb.zzaH("Fail to fetch AdActivity theme");
            zzb.zzaG("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }

    public void zzb(AdRequestParcel adRequestParcel, long j) {
        synchronized (this.zzpd) {
            if (this.zzIe == -1) {
                this.zzIe = j;
                this.zzId = this.zzIe;
            } else {
                this.zzId = j;
            }
            if (adRequestParcel.extras == null || adRequestParcel.extras.getInt("gw", 2) != 1) {
                this.zzIf++;
                return;
            }
        }
    }

    public Bundle zze(Context context, String str) {
        Bundle bundle;
        synchronized (this.zzpd) {
            bundle = new Bundle();
            bundle.putString("session_id", this.zzHP);
            bundle.putLong("basets", this.zzIe);
            bundle.putLong("currts", this.zzId);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.zzIf);
            bundle.putInt("pclick", this.zzIg);
            bundle.putInt("pimp", this.zzIh);
            bundle.putBoolean("support_transparent_background", zzF(context));
        }
        return bundle;
    }

    public void zzgf() {
        synchronized (this.zzpd) {
            this.zzIh++;
        }
    }

    public void zzgg() {
        synchronized (this.zzpd) {
            this.zzIg++;
        }
    }

    public long zzgx() {
        return this.zzIe;
    }
}
