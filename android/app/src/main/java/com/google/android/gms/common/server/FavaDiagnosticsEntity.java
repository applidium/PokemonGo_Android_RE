package com.google.android.gms.common.server;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class FavaDiagnosticsEntity implements SafeParcelable {
    public static final zza CREATOR;
    final int mVersionCode;
    public final String zzagM;
    public final int zzagN;

    static {
        CREATOR = new zza();
    }

    public FavaDiagnosticsEntity(int i, String str, int i2) {
        this.mVersionCode = i;
        this.zzagM = str;
        this.zzagN = i2;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
