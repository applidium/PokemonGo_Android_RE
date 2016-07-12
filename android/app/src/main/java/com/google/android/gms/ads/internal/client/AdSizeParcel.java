package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.zza;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzgr;

@zzgr
public class AdSizeParcel implements SafeParcelable {
    public static final zzi CREATOR;
    public final int height;
    public final int heightPixels;
    public final int versionCode;
    public final int width;
    public final int widthPixels;
    public final String zzte;
    public final boolean zztf;
    public final AdSizeParcel[] zztg;
    public final boolean zzth;
    public final boolean zzti;

    static {
        CREATOR = new zzi();
    }

    public AdSizeParcel() {
        this(4, "interstitial_mb", 0, 0, true, 0, 0, null, false, false);
    }

    AdSizeParcel(int i, String str, int i2, int i3, boolean z, int i4, int i5, AdSizeParcel[] adSizeParcelArr, boolean z2, boolean z3) {
        this.versionCode = i;
        this.zzte = str;
        this.height = i2;
        this.heightPixels = i3;
        this.zztf = z;
        this.width = i4;
        this.widthPixels = i5;
        this.zztg = adSizeParcelArr;
        this.zzth = z2;
        this.zzti = z3;
    }

    public AdSizeParcel(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    public AdSizeParcel(Context context, AdSize[] adSizeArr) {
        int i;
        int i2;
        AdSize adSize = adSizeArr[0];
        this.versionCode = 4;
        this.zztf = false;
        this.zzti = adSize.isFluid();
        if (this.zzti) {
            this.width = AdSize.BANNER.getWidth();
            this.height = AdSize.BANNER.getHeight();
        } else {
            this.width = adSize.getWidth();
            this.height = adSize.getHeight();
        }
        boolean z = this.width == -1;
        boolean z2 = this.height == -2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (z) {
            if (zzl.zzcF().zzS(context) && zzl.zzcF().zzT(context)) {
                this.widthPixels = zza(displayMetrics) - zzl.zzcF().zzU(context);
            } else {
                this.widthPixels = zza(displayMetrics);
            }
            double d = (double) (((float) this.widthPixels) / displayMetrics.density);
            i = (int) d;
            i2 = d - ((double) ((int) d)) >= 0.01d ? i + 1 : i;
        } else {
            i = this.width;
            this.widthPixels = zzl.zzcF().zza(displayMetrics, this.width);
            i2 = i;
        }
        i = z2 ? zzc(displayMetrics) : this.height;
        this.heightPixels = zzl.zzcF().zza(displayMetrics, i);
        if (z || z2) {
            this.zzte = i2 + "x" + i + "_as";
        } else if (this.zzti) {
            this.zzte = "320x50_mb";
        } else {
            this.zzte = adSize.toString();
        }
        if (adSizeArr.length > 1) {
            this.zztg = new AdSizeParcel[adSizeArr.length];
            for (int i3 = 0; i3 < adSizeArr.length; i3++) {
                this.zztg[i3] = new AdSizeParcel(context, adSizeArr[i3]);
            }
        } else {
            this.zztg = null;
        }
        this.zzth = false;
    }

    public AdSizeParcel(AdSizeParcel adSizeParcel, AdSizeParcel[] adSizeParcelArr) {
        this(4, adSizeParcel.zzte, adSizeParcel.height, adSizeParcel.heightPixels, adSizeParcel.zztf, adSizeParcel.width, adSizeParcel.widthPixels, adSizeParcelArr, adSizeParcel.zzth, adSizeParcel.zzti);
    }

    public static int zza(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int zzb(DisplayMetrics displayMetrics) {
        return (int) (((float) zzc(displayMetrics)) * displayMetrics.density);
    }

    private static int zzc(DisplayMetrics displayMetrics) {
        int i = (int) (((float) displayMetrics.heightPixels) / displayMetrics.density);
        return i <= 400 ? 32 : i <= 720 ? 50 : 90;
    }

    public static AdSizeParcel zzcC() {
        return new AdSizeParcel(4, "reward_mb", 0, 0, false, 0, 0, null, false, false);
    }

    public static AdSizeParcel zzs(Context context) {
        return new AdSizeParcel(4, "320x50_mb", 0, 0, false, 0, 0, null, true, false);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }

    public AdSize zzcD() {
        return zza.zza(this.width, this.height, this.zzte);
    }
}
