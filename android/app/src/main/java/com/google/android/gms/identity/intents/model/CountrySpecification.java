package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class CountrySpecification implements SafeParcelable {
    public static final Creator<CountrySpecification> CREATOR;
    private final int mVersionCode;
    String zzGw;

    static {
        CREATOR = new zza();
    }

    CountrySpecification(int i, String str) {
        this.mVersionCode = i;
        this.zzGw = str;
    }

    public CountrySpecification(String str) {
        this.mVersionCode = 1;
        this.zzGw = str;
    }

    public int describeContents() {
        return 0;
    }

    public String getCountryCode() {
        return this.zzGw;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
