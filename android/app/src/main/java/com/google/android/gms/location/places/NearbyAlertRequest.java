package com.google.android.gms.location.places;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public final class NearbyAlertRequest implements SafeParcelable {
    public static final zze CREATOR;
    private final int mVersionCode;
    private final int zzaEi;
    private final int zzaGd;
    @Deprecated
    private final PlaceFilter zzaGe;
    private final NearbyAlertFilter zzaGf;
    private final boolean zzaGg;
    private final int zzaGh;

    static {
        CREATOR = new zze();
    }

    NearbyAlertRequest(int i, int i2, int i3, PlaceFilter placeFilter, NearbyAlertFilter nearbyAlertFilter, boolean z, int i4) {
        this.mVersionCode = i;
        this.zzaEi = i2;
        this.zzaGd = i3;
        this.zzaGg = z;
        if (nearbyAlertFilter != null) {
            this.zzaGf = nearbyAlertFilter;
        } else if (placeFilter == null) {
            this.zzaGf = null;
        } else if (zza(placeFilter)) {
            this.zzaGf = NearbyAlertFilter.zza(placeFilter.getPlaceIds(), placeFilter.getPlaceTypes(), placeFilter.zzwS());
        } else {
            this.zzaGf = null;
        }
        this.zzaGe = null;
        this.zzaGh = i4;
    }

    @Deprecated
    private static boolean zza(PlaceFilter placeFilter) {
        return ((placeFilter.getPlaceTypes() == null || placeFilter.getPlaceTypes().isEmpty()) && ((placeFilter.getPlaceIds() == null || placeFilter.getPlaceIds().isEmpty()) && (placeFilter.zzwS() == null || placeFilter.zzwS().isEmpty()))) ? false : true;
    }

    public int describeContents() {
        zze com_google_android_gms_location_places_zze = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof NearbyAlertRequest)) {
                return false;
            }
            NearbyAlertRequest nearbyAlertRequest = (NearbyAlertRequest) obj;
            if (this.zzaEi != nearbyAlertRequest.zzaEi || this.zzaGd != nearbyAlertRequest.zzaGd || !zzw.equal(this.zzaGe, nearbyAlertRequest.zzaGe)) {
                return false;
            }
            if (!zzw.equal(this.zzaGf, nearbyAlertRequest.zzaGf)) {
                return false;
            }
        }
        return true;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzw.hashCode(Integer.valueOf(this.zzaEi), Integer.valueOf(this.zzaGd));
    }

    public String toString() {
        return zzw.zzv(this).zzg("transitionTypes", Integer.valueOf(this.zzaEi)).zzg("loiteringTimeMillis", Integer.valueOf(this.zzaGd)).zzg("nearbyAlertFilter", this.zzaGf).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zze com_google_android_gms_location_places_zze = CREATOR;
        zze.zza(this, parcel, i);
    }

    public int zzwK() {
        return this.zzaEi;
    }

    public int zzwN() {
        return this.zzaGd;
    }

    @Deprecated
    public PlaceFilter zzwO() {
        return null;
    }

    public NearbyAlertFilter zzwP() {
        return this.zzaGf;
    }

    public boolean zzwQ() {
        return this.zzaGg;
    }

    public int zzwR() {
        return this.zzaGh;
    }
}
