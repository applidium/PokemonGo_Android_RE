package com.google.android.gms.ads.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzgr;

@zzgr
public final class InterstitialAdParameterParcel implements SafeParcelable {
    public static final zzl CREATOR;
    public final int versionCode;
    public final boolean zzpt;
    public final boolean zzpu;
    public final String zzpv;
    public final boolean zzpw;
    public final float zzpx;

    static {
        CREATOR = new zzl();
    }

    InterstitialAdParameterParcel(int i, boolean z, boolean z2, String str, boolean z3, float f) {
        this.versionCode = i;
        this.zzpt = z;
        this.zzpu = z2;
        this.zzpv = str;
        this.zzpw = z3;
        this.zzpx = f;
    }

    public InterstitialAdParameterParcel(boolean z, boolean z2, String str, boolean z3, float f) {
        this(2, z, z2, str, z3, f);
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }
}
