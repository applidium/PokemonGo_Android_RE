package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zzc;

public final class LocationSettingsStates implements SafeParcelable {
    public static final Creator<LocationSettingsStates> CREATOR;
    private final int mVersionCode;
    private final boolean zzaEQ;
    private final boolean zzaER;
    private final boolean zzaES;
    private final boolean zzaET;
    private final boolean zzaEU;
    private final boolean zzaEV;
    private final boolean zzaEW;

    static {
        CREATOR = new zzh();
    }

    LocationSettingsStates(int i, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.mVersionCode = i;
        this.zzaEQ = z;
        this.zzaER = z2;
        this.zzaES = z3;
        this.zzaET = z4;
        this.zzaEU = z5;
        this.zzaEV = z6;
        this.zzaEW = z7;
    }

    public static LocationSettingsStates fromIntent(Intent intent) {
        return (LocationSettingsStates) zzc.zza(intent, "com.google.android.gms.location.LOCATION_SETTINGS_STATES", CREATOR);
    }

    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public boolean isBlePresent() {
        return this.zzaEV;
    }

    public boolean isBleUsable() {
        return this.zzaES;
    }

    public boolean isGpsPresent() {
        return this.zzaET;
    }

    public boolean isGpsUsable() {
        return this.zzaEQ;
    }

    public boolean isLocationPresent() {
        return this.zzaET || this.zzaEU;
    }

    public boolean isLocationUsable() {
        return this.zzaEQ || this.zzaER;
    }

    public boolean isNetworkLocationPresent() {
        return this.zzaEU;
    }

    public boolean isNetworkLocationUsable() {
        return this.zzaER;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }

    public boolean zzwA() {
        return this.zzaEW;
    }
}
