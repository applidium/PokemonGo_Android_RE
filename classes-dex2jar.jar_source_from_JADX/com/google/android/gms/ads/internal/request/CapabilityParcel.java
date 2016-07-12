package com.google.android.gms.ads.internal.request;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class CapabilityParcel implements SafeParcelable {
    public static final Creator<CapabilityParcel> CREATOR;
    public final int versionCode;
    public final boolean zzFa;
    public final boolean zzFb;

    static {
        CREATOR = new zzi();
    }

    CapabilityParcel(int i, boolean z, boolean z2) {
        this.versionCode = i;
        this.zzFa = z;
        this.zzFb = z2;
    }

    public CapabilityParcel(boolean z, boolean z2) {
        this(1, z, z2);
    }

    public int describeContents() {
        return 0;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("iap_supported", this.zzFa);
        bundle.putBoolean("default_iap_supported", this.zzFb);
        return bundle;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzi.zza(this, parcel, i);
    }
}
