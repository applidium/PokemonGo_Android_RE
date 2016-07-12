package com.google.android.gms.auth.firstparty.shared;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class FACLData implements SafeParcelable {
    public static final zzb CREATOR;
    final int version;
    FACLConfig zzTD;
    String zzTE;
    boolean zzTF;
    String zzTG;

    static {
        CREATOR = new zzb();
    }

    FACLData(int i, FACLConfig fACLConfig, String str, boolean z, String str2) {
        this.version = i;
        this.zzTD = fACLConfig;
        this.zzTE = str;
        this.zzTF = z;
        this.zzTG = str2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
