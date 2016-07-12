package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class StringParcel implements SafeParcelable {
    public static final Creator<StringParcel> CREATOR;
    final int mVersionCode;
    String zzvY;

    static {
        CREATOR = new zzn();
    }

    StringParcel(int i, String str) {
        this.mVersionCode = i;
        this.zzvY = str;
    }

    public StringParcel(String str) {
        this.mVersionCode = 1;
        this.zzvY = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzn.zza(this, parcel, i);
    }

    public String zzfP() {
        return this.zzvY;
    }
}
