package com.google.android.gms.ads.internal.formats;

import android.os.Parcel;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzgr;

@zzgr
public class NativeAdOptionsParcel implements SafeParcelable {
    public static final zzi CREATOR;
    public final int versionCode;
    public final boolean zzwR;
    public final int zzwS;
    public final boolean zzwT;

    static {
        CREATOR = new zzi();
    }

    public NativeAdOptionsParcel(int i, boolean z, int i2, boolean z2) {
        this.versionCode = i;
        this.zzwR = z;
        this.zzwS = i2;
        this.zzwT = z2;
    }

    public NativeAdOptionsParcel(NativeAdOptions nativeAdOptions) {
        this(1, nativeAdOptions.shouldReturnUrlsForImageAssets(), nativeAdOptions.getImageOrientation(), nativeAdOptions.shouldRequestMultipleImages());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }
}
