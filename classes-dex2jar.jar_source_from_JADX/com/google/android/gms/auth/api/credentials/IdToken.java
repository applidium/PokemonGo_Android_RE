package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class IdToken implements SafeParcelable {
    public static final Creator<IdToken> CREATOR;
    final int mVersionCode;
    private final String zzSk;
    private final String zzSs;

    static {
        CREATOR = new zzd();
    }

    IdToken(int i, String str, String str2) {
        this.mVersionCode = i;
        this.zzSk = str;
        this.zzSs = str2;
    }

    public IdToken(String str, String str2) {
        this(1, str, str2);
    }

    public int describeContents() {
        return 0;
    }

    public String getAccountType() {
        return this.zzSk;
    }

    public String getIdToken() {
        return this.zzSs;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }
}
