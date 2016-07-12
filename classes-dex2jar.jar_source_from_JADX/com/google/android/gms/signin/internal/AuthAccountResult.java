package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class AuthAccountResult implements SafeParcelable {
    public static final Creator<AuthAccountResult> CREATOR;
    final int mVersionCode;

    static {
        CREATOR = new zza();
    }

    public AuthAccountResult() {
        this(1);
    }

    AuthAccountResult(int i) {
        this.mVersionCode = i;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
