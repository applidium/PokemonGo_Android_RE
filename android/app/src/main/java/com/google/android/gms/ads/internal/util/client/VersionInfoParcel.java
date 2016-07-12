package com.google.android.gms.ads.internal.util.client;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzgr;

@zzgr
public final class VersionInfoParcel implements SafeParcelable {
    public static final zzc CREATOR;
    public final int versionCode;
    public String zzJu;
    public int zzJv;
    public int zzJw;
    public boolean zzJx;

    static {
        CREATOR = new zzc();
    }

    public VersionInfoParcel(int i, int i2, boolean z) {
        this(1, "afma-sdk-a-v" + i + "." + i2 + "." + (z ? "0" : "1"), i, i2, z);
    }

    VersionInfoParcel(int i, String str, int i2, int i3, boolean z) {
        this.versionCode = i;
        this.zzJu = str;
        this.zzJv = i2;
        this.zzJw = i3;
        this.zzJx = z;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
