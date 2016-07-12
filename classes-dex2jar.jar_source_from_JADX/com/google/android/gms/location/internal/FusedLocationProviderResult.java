package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class FusedLocationProviderResult implements Result, SafeParcelable {
    public static final Creator<FusedLocationProviderResult> CREATOR;
    public static final FusedLocationProviderResult zzaFr;
    private final int mVersionCode;
    private final Status zzSC;

    static {
        zzaFr = new FusedLocationProviderResult(Status.zzabb);
        CREATOR = new zze();
    }

    FusedLocationProviderResult(int i, Status status) {
        this.mVersionCode = i;
        this.zzSC = status;
    }

    public FusedLocationProviderResult(Status status) {
        this(1, status);
    }

    public int describeContents() {
        return 0;
    }

    public Status getStatus() {
        return this.zzSC;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
